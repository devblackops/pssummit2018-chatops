[cmdletbinding()]
param()

Import-Module PoshBot -Force -Verbose:$false

if ($IsWindows) {
    $poshBotDir = Join-Path -Path $env:USERPROFILE -ChildPath '.poshbot'
} else {
    $poshBotDir = Join-Path -Path $env:HOME -ChildPath '.poshbot'
}
$configFile = (Join-Path -Path $poshBotDir -ChildPath 'Cherry2000.psd1')
$config = Get-PoshBotConfiguration $configFile
$backend = New-PoshBotSlackBackend -Configuration $config.BackendConfiguration
$bot = New-PoshBotInstance -Backend $backend -Configuration $config -WarningAction SilentlyContinue
$bot | Start-PoshBot -WarningAction SilentlyContinue
