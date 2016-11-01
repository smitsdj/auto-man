function Get-InDesiredState
{
    param
    (	
        [parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string] $Hostname,
	    
        [parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string] $RegExp,

        [Parameter(Mandatory = $true)]
        [System.Management.Automation.PSCredential]
        $DomainAdminCredentials
    )

    $CimSession  = New-CimSession -ComputerName $Hostname -Credential $DomainAdminCredentials
    $ConfigStatus = Get-DscConfigurationStatus -CimSession $CimSession -Verbose
    $ResourcesInDesiredState = ($ConfigStatus | select ResourcesInDesiredState).ResourcesInDesiredState
    $returnValue = ($ResourcesInDesiredState | Where-Object -property ResourceId -Match $RegExp)

    $returnValue
}