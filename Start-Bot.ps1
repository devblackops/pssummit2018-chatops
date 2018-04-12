[cmdletbinding()]
param()

Import-Module Poshbot -Force -Verbose:$false

# Get config
$poshBotDir = Join-Path -Path $env:HOME -ChildPath '.poshbot'
$configFile = Join-Path -Path $poshBotDir -ChildPath 'Cherry2000.psd1'
$config = Get-PoshBotConfiguration $configFile

# Add plugin config
$config.PluginConfiguration = @{
    'PoshBot.PSSummit' = @{
        GoogleApiShortenerApiKey = $env:GOOGLE_API_SHORTENER_API_KEY
    }
    'PoshBot.Wolfram' = @{
        ApiKey = $env:WOLFRAM_API_KEY
    }
}

# Create chat backend
$config.BackendConfiguration.Token = $env:POSHBOT_SLACK_API_KEY
$backend = New-PoshBotSlackBackend -Configuration $config.BackendConfiguration

# Create and start bot
$bot = New-PoshBotInstance -Backend $backend -Configuration $config -WarningAction SilentlyContinue
$bot | Start-PoshBot -WarningAction SilentlyContinue
