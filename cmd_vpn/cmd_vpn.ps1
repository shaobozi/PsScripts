$vpn_name = @("tokyo","Seoul")
$usr_name = Get-Content .\vpn.count | Select-Object -index 0
$pswd = Get-Content .\vpn.count | Select-Object -index 1

function Start-VPN($index){
				& rasdial $vpn_name[$index] $usr_name $pswd
}

function Stop-VPN($index){
				& rasphone -h $vpn_name[$index] 
}

function List-VPN()
{
				Write-Host $vpn_name
}
