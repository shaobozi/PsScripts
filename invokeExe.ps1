######## Invoke executables in your powershell with lightening speed!

$exes = @{};

$exesPath = Join-Path $PSScriptRoot .exes

if(test-path $exesPath){
import-csv $exesPath | %{$exes[$_.key]=$_.value}
}

function iexesdump{
$exes.getenumerator() | export-csv $exesPath -notype
}

function regexe($nickName, $path){
$exes["$nickName"] = $path
iexesdump
}

function unregexe($nickName){
$exes.Remove($nickName)
}

function run($nickName){
ii $exes["$nickName"]
}

function lexes{
$exes
}

ForEach($key in $exes.Keys)
{
	set-alias $key $exes.Item($key)
}
