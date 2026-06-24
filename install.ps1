param(
    [string]$CodexSkillsDir = "$HOME\.codex\skills"
)

$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$sourceDir = Join-Path $repoRoot "skills"

if (-not (Test-Path -LiteralPath $sourceDir)) {
    throw "Missing skills directory: $sourceDir"
}

New-Item -ItemType Directory -Force -Path $CodexSkillsDir | Out-Null

Get-ChildItem -LiteralPath $sourceDir -Directory | ForEach-Object {
    Copy-Item -LiteralPath $_.FullName -Destination $CodexSkillsDir -Recurse -Force
    Write-Host "Installed skill: $($_.Name)"
}

Write-Host "Done. Restart Codex or reload skills if required."
