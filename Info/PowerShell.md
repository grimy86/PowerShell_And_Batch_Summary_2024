# PowerShell
## What is PowerShell?
Windows PowerShell is a command-line shell and scripting language.

## What is it used for?
PowerShell is designed especially for system administration. It can do anything the commandline can do (except for batch) and much more.

Windows PowerShell commands, called `cmdlets`, let you manage the computers from the command line. Windows PowerShell providers let you access data stores, such as the Registry and Certificate Store, as easily as you access the file system.

> [!NOTE]
> One of the most common errors to run into when learning PowerShell is the execution policy error. This is a safety feature that controls the conditions under which PowerShell loads configuration files and runs scripts.
>
> Run PowerShell as Administator and run: `Set-ExecutionPolicy RemoteSigned` or `Set-ExecutionPolicy Unrestricted`

### Checking the version
`$PSVersionTable.PSVersion`

### Getting a list of all available cmdlets
`Get-Command -CommandType Cmdlet`

### Getting more info about cmdlets
`Get-Help [cmdlet]`

# Intro
[PowerShell Core Concepts](PSCore.md)