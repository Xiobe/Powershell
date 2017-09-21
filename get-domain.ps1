# Get the domain of which the system is member
function Get-Domain
{
  $domain = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain()
  return $domain
}
