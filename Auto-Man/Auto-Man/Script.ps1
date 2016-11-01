#
# Script.ps1
#
Write-Host "Sample 1"
Write-Host "Sample 2"
Write-Host "Sample 3"


<#.Synopsis
<!<SnippetShortDescription>!>
.DESCRIPTION
<!<SnippetLongDescription>!>
.EXAMPLE
<!<SnippetExample>!>
.EXAMPLE
<!<SnippetAnotherExample>!>
#>
function New-Function
{
    [CmdletBinding()]
    [OutputType([int])]
    param
    (
        # <!<SnippetParam1Help>!>
        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true,Position=0)]
        $parameter1,

        # <!<SnippetParam2Help>!>
        [int]$parameter2)

        Begin
        {
          
        }

        Process
        {
          
        }

        End
        {

        }
}


$fietsTas = New-Function -parameter1 "fiets" -parameter2 0
