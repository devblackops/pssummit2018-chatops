# Demo Notes

## Start PoshBot

```powershell
. .\Start-Bot.ps1
```

## Show uptime

```text
!status
!about
```

## Help

```text
!help get-plugin
!help help
!help help -examples
```

## Plugins

```text
!get-plugin
!get-plugin builtin
!find-plugin
!install-plugin poshbot.giphy
!install-plugin poshbot.wolfram
!install-plugin nameit
!get-plugin nameit
!person
!address
!baseverbnoun
!install-plugin poshbot.pssummit
```

## Triggers

### Command

```text
!get-helloworld
!get-helloworld brandon
hal, help
bender: status
```

### Event

```text
change topic
```

### Regex

```text
did you know that cookies are awesome
lgtm shipit!
```

## Output

```
!get-multiplethings
```

## Errors

```
!bad-command
```

## Cards

```
!createvm -name server01 -type f -vcpu 32 -ram 64
!createvm -name server01 -type windows -vcpu 4 -ram 32
```

## Aliases

```
!get-randomnumber
!rnd
```

## Permissions / Fileupload / DM

```
!get-secretplan
!help get-secretplan
!add-rolepermission -role admin -permission poshbot.pssummit:getsecrets
!get-secretplan

!new-role henchmen
!add-rolepermission henchmen poshbot.pssummit:getsecrets
!new-group minions
!add-grouprole minions henchmen
!add-groupuser minions brandolomite
```

## Confirmation (Use the Force) ... arrays

```
!remove-something foo
!remove-something -name foo, bar, baz -force
```

## Concurrent commands

```
!start-longrunningcommand
!status
!about
!rnd
```

## Scheduled Commands

```text
!get-scheduledcommand
!man schedule
!man newschedule
!man newschedule -full
!newschedule -command 'status' -interval seconds -value 10
!getschedule
!removeschedule <id>
```

## Command Approvals

```text
!deploy-myapp -environment dev
!approve <id>
!deploy-myapp -environment prod
!deny <id>
```

## Channel Rules

```
> General channel
!giphy powershell
> MSPSUG channel
!giphy powershell
```

## History

```
!history
!history <id>
```

## Parameter Injection

```text
!install-plugin poshbot.wolfram
!askwolfram speed of unladen swallow
!shorten https://github.com/powershell
```

## Stateful Data

```text
!getmystuff
!setmystuff foo bar
!getmystuff foo
!removemystuff -name foo

!help tictactoe
!mygames
!newticktactoe -against brandolomite
```

## Multiple plugin versions

```
!gp nameit
!ip nameit -version 1.8.0
!nameit:noun:1.8.0
!nameit:noun:1.8.3
```

## Disabling Plugin

```
!disableplugin nameit -version 1.8.3
!nameit:noun:1.8.3
```

## Running as service
http://docs.poshbot.io/en/latest/guides/run-poshbot-as-a-service/
