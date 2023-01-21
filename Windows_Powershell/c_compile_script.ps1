Write-Host "This is a script that will shorten the task of compilation (using gcc) for you" -ForegroundColor Blue

$program_name= Read-Host -Prompt "Enter program name"

<# Storing the program name in temporary variable to manipulate the entered filename #>
$temp = $program_name


<# Removing the '.c' extension from 'temp' variable #>
$temp.Remove($temp.Length - 2, 2)

<# Now, creating the variable for executable file, storing value of temp in it
 And also adding our '.exe' extension to it such that we will be able to directly use the compiled script later on! #>
$compile_name = $temp
$compile_name+=".exe"

gcc $program_name -o $compile_name
<# Code to compile the 'c' file and deliver an executable file #>

Write-Host "Code successfully compiled" -ForegroundColor Green

<# Use ./<executable_file_name> in order to run the output file on windows machine 
Also note that you have to be on Windows Powershell (and not command prompt or windows terminal) in order for it to work.#>

<#
Note that in order to play with variables while displaying them
Like in Write-Host, we write the statement this way:

Write-Host ($temp.Length+3)

Otherwise, it just considers the +3 as a string and appends it to the variable
#>