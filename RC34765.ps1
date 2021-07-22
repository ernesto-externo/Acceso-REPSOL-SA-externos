$configdir = "C:\Program Files\OpenVPN\config"
$basecmd = ".\ahbrendan-OpenVPN.ps1"

Function do_test([string]$tests, [string]$configname, [array]$ping) {
    $cmdline = "`"${basecmd}`" ${tests} -Config `"${configdir}\${configname}`" -Ping ${ping}"
    Invoke-Expression "& $cmdline"

}

$tests = "-TestCmdexe"
do_test "$tests" "RC34765.ovpn" "34.244.110.222 fd00:feed:51:3::1"

#$tests = "-TestCmdexe -TestGui -TestService"
#do_test "$tests" "win.ovpn" "52.50.254.2"
#do_test "$tests" "home.ovpn" "34.244.112.233"
