$vpn_name = @("tokyo","Seoul")
$acount_file = Join-Path $PSScriptRoot vpn.count
$usr_name = Get-Content $acount_file | Select-Object -index 0
$pswd = Get-Content $acount_file | Select-Object -index 1

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
