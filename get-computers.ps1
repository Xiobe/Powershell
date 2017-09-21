# Get all systems in the domain
Import-Module activedirectory
function Get-Computers
{
   $systems = Get-ADComputer -Filter *
   return $systems
}
