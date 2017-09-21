# Get the servers on the domain
Import-Module ActiveDirectory
function Get-Servers
{
    $servers = Get-ADComputer -Filter {OperatingSystem -Like "*Server*"} -Properties Name, Created, DNSHostName, lastLogonDate, OperatingSystem, OperatingSystemServicePack,OperatingSystemVersion,PrimaryGroup
    return $servers
}
