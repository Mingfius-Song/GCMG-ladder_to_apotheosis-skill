param(
    [string]$CodexSkillsDir = "$HOME\.codex\skills",
    [switch]$SkipPeers,
    [switch]$ContinueOnPeerFailure
)

$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$coreInstaller = Join-Path $repoRoot "install.ps1"

if (-not (Test-Path -LiteralPath $coreInstaller)) {
    throw "Missing core installer: $coreInstaller"
}

Write-Host "Installing GCMG core skills..."
& $coreInstaller -CodexSkillsDir $CodexSkillsDir

if ($SkipPeers) {
    Write-Host "Skipped peer skill installation."
    exit 0
}

$codexHome = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $HOME ".codex" }
$githubInstaller = Join-Path $codexHome "skills\.system\skill-installer\scripts\install-skill-from-github.py"

if (-not (Test-Path -LiteralPath $githubInstaller)) {
    throw "Codex GitHub skill installer not found: $githubInstaller. Install core with install.ps1, then install peer skills manually."
}

function Install-GitHubSkill {
    param(
        [string]$Name,
        [string]$Repo,
        [string]$Path,
        [string]$InstallName = ""
    )

    $dest = Join-Path $CodexSkillsDir $Name
    if (Test-Path -LiteralPath $dest) {
        Write-Host "Peer already installed: $Name"
        return
    }

    Write-Host "Installing peer: $Name from $Repo/$Path"
    $args = @($githubInstaller, "--repo", $Repo, "--path", $Path, "--dest", $CodexSkillsDir)
    if ($InstallName) {
        $args += @("--name", $InstallName)
    }

    try {
        python @args
    }
    catch {
        if ($ContinueOnPeerFailure) {
            Write-Warning "Failed to install peer $Name. Continuing because -ContinueOnPeerFailure is set."
        }
        else {
            throw
        }
    }
}

$singleRepoPeers = @(
    @{ Name = "mental-models"; Repo = "gudo7208/mental-models"; Path = "."; InstallName = "mental-models" },
    @{ Name = "mao-zedong-perspective"; Repo = "rubickguo/mao-zedong-perspective-skill"; Path = "."; InstallName = "mao-zedong-perspective" }
)

foreach ($peer in $singleRepoPeers) {
    Install-GitHubSkill -Name $peer.Name -Repo $peer.Repo -Path $peer.Path -InstallName $peer.InstallName
}

$mimeographPeers = @(
    "elon-musk",
    "aristotle",
    "confucius",
    "david-hume",
    "friedrich-nietzsche",
    "elizabeth-anscombe"
)

foreach ($name in $mimeographPeers) {
    Install-GitHubSkill -Name $name -Repo "K-Dense-AI/mimeographs" -Path "mimeographs/$name"
}

Write-Host ""
Write-Host "Full install completed for verified sources."
Write-Host "Optional peers without verified install sources remain manual: game-theorist, influence-and-negotiation, mao-dialectics, and any local custom thinking-* skills."
Write-Host "Restart Codex or reload skills before use."
