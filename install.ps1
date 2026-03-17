$ErrorActionPreference = 'Stop'

$skillName = 'titi-prompt-coach'
$rawBase = 'https://raw.githubusercontent.com/huangluckybao-lab/titi-prompt-coach/main'
$targetDir = Join-Path $env:USERPROFILE ".openclaw\workspace\skills\$skillName"

New-Item -ItemType Directory -Force -Path $targetDir | Out-Null
Invoke-WebRequest -Uri "$rawBase/SKILL.md" -OutFile (Join-Path $targetDir 'SKILL.md')

Write-Host "✅ 提提安装完成: $targetDir"
Write-Host "👉 请重启 Gateway: openclaw gateway restart"
