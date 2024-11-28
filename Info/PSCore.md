# Output
Use the `Write-Host` cmdlet.

# Comments
Use `#` for a single-line comment.

# Parameters
Cmdlets also have parameters to modify the way they work. For example we could add a parameter to the `Write-Host` cmdlet to not get a newline character at the end of our string.

```PS
Write-Host "Hello, World!"
# This is a single-line comment.
Write-Host " I'm on the same line!" -NoNewline
```
# Multi-line commands
The Backtick (\`) operator is also called word-wrap operator. It allows a command to be written in multiple lines. It can be used for new line (\`n) or tab (\`t) in sentences as well.

```PS
Get-Service * | Sort-Object ServiceType `
| Format-Table Name, ServiceType, Status -AutoSize
```

```PS
> Write-host "Title Subtitle"
```
Title Subtitle
```
> Write-host "Title `nSubtitle"
```
Title 

Subtitle
```
> Write-host "Title `tSubtitle"
```
Title &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Subtitle

# Reduce data with a pipeline
Traditional shells use a pipeline to run many commands sequentially. The output of one command is the input for the next command. PowerShell implements this concept like traditional shells, but it differs because it operates on objects over text. You learn more about this feature later in this module.

```PS
"Hello, World!" | Out-File myScript.txt
```

This will write: Hello, World!, into the myScript.txt file.

# Variables
Variables store the data that we want them to have. This could be a number, a string of text, a true or false statement,... The variable's type is based on the sort of data the variable stores.

Text is a `string`, numbers are `int`, true or false statements are `bool`, etc.

```PS
$someVariableName = "someValue"
```

# Methods
There are also a number of methods we can invoke like so:

```PS
$someVariableName.GetType()
```
This example will show us that the name of this type is `String` Or to get a list of types we could use:
```PS
Get-Member -InputObject $someVariableName
```

# Objects & Properties
Object are the object as a whole and properties are smaller parts that define or make up the object. So let's say we have a Bike object, it could have a property like wheel-size or brake-force.

In our case, even the string variable is considered to be an object.
```PS
$someVariableName.Length
```
Or
```PS
$someVariableName | Select-Object -Property *
```

# If you ever wonder what can I do with X?
Look for verbs like "Get" to see all of the get cmdlets. Or try this with a noun.

By default a PowerShell command follows the Verb-Noun naming convention.

```PS
Get-Command -Verb Get
Get-Command -Noun Host
```

# Command history
This cmdlet will show you the commands you've executed in the past.
```PS
Get-History
```