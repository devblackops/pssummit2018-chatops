function Get-CommandContext {
    <#
    .SYNOPSIS
    Show PoshBot context properties available to a running command
    .EXAMPLE
    !get-commandcontext
    #>
    [cmdletbinding()]
    param()

    New-PoshBotTextResponse -Text ($global:PoshBotContext | ConvertTo-Json) -AsCode
}
