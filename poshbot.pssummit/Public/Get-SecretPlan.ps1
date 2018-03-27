function Get-SecretPlan {
    <#
    .SYNOPSIS
    Get the secret plan for world domination
    .EXAMPLE
    !get-secretplan
    #>
    [PoshBot.BotCommand(
        Permissions = ('getsecrets')
    )]
    [cmdletbinding()]
    param()

    $tmp = if ((Get-Variable -Name IsWindows) -and $IsWindows) { $env:TEMP} else { $env:TMPDIR }

    (1..3) | Foreach-Object {
        $plan = [pscustomobject]@{
            Title = "Secret moon base option $_"
            Description = 'Plans for secret base on the dark side of the moon'
        }
        $csv = Join-Path -Path $tmp -ChildPath "$((New-Guid).ToString()).csv"
        $plan | Export-Csv -Path $csv -NoTypeInformation
        New-PoshBotFileUpload -Path $csv -Title "MoonBasePlan$($_).csv" -DM
    }
}