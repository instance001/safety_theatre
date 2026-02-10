param(
  [Parameter(Mandatory = $true)]
  [ValidateSet('safety-theatre-agency', 'ai-safety-first-governance')]
  [string]$Paper
)

$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot
$papersDir = Join-Path $repoRoot 'papers'
$distDir = Join-Path $repoRoot 'dist'

$texPath = Join-Path $papersDir ($Paper + '.tex')
if (!(Test-Path -LiteralPath $texPath)) {
  throw "Paper not found: $texPath"
}

New-Item -ItemType Directory -Force -Path $distDir | Out-Null
Copy-Item -LiteralPath (Join-Path $papersDir 'references.bib') -Destination $distDir -Force -ErrorAction SilentlyContinue

$latexmk = Get-Command latexmk -ErrorAction SilentlyContinue
if ($latexmk) {
  Push-Location $papersDir
  try {
    & $latexmk.Path -pdf -interaction=nonstopmode -halt-on-error -outdir=$distDir $texPath
  } finally {
    Pop-Location
  }
  Write-Host (Join-Path $distDir ($Paper + '.pdf'))
  exit 0
}

$pdflatex = Get-Command pdflatex -ErrorAction SilentlyContinue
if (!$pdflatex) {
  throw "pdflatex not found. Install MiKTeX or TeX Live, or use Overleaf."
}

$bibtex = Get-Command bibtex -ErrorAction SilentlyContinue

function Invoke-Pdflatex {
  param([string]$tex)
  & $pdflatex.Path -interaction=nonstopmode -halt-on-error -output-directory=$distDir $tex | Out-Null
}

Push-Location $papersDir
try {
  Invoke-Pdflatex $texPath

  $auxPath = Join-Path $distDir ($Paper + '.aux')
  if ($bibtex -and (Test-Path -LiteralPath $auxPath)) {
    Push-Location $distDir
    try {
      & $bibtex.Path $Paper | Out-Null
    } finally {
      Pop-Location
    }
  }

  Invoke-Pdflatex $texPath
  Invoke-Pdflatex $texPath
} finally {
  Pop-Location
}

Write-Host (Join-Path $distDir ($Paper + '.pdf'))
