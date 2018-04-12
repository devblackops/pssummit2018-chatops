@{
    RootModule = 'PoshBot.PSSummit.psm1'
    ModuleVersion = '0.1.4'
    GUID = '63bd5031-fe07-4ca2-9dc7-12e37434e9ca'
    Author = 'Brandon Olin'
    CompanyName = 'Community'
    Copyright = '(c) 2018 Brandon Olin. All rights reserved.'
    Description = 'Example PoshBot commands for PowerShell + DevOps Global Summit 2018'
    PowerShellVersion = '5.0.0'
    RequiredModules = @('PoshBot')
    FunctionsToExport = '*'
    CmdletsToExport = '*'
    VariablesToExport = '*'
    AliasesToExport = '*'
    PrivateData = @{
        Permissions = @(
            'getsecrets'
        )
        PSData = @{
            # Tags = @()
            # LicenseUri = ''
            # ProjectUri = ''
            # IconUri = ''
            # ReleaseNotes = ''
        }
    }
}

