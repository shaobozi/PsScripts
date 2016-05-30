$marks = @{};

$marksPath = Join-Path $PSScriptRoot .bookmarks

if(test-path $marksPath){
import-csv $marksPath | %{$marks[$_.key]=$_.value}
}

function mdump{
$marks.getenumerator() | export-csv $marksPath -notype
}

function m($bookmark){
$marks["$bookmark"] = (pwd).path
mdump
}

function g($bookmark){
cd $marks["$bookmark"]
}

function gg($bookmark){
cd $marks["$bookmark"];ii .
}

function lm{
$marks
}

function dm($bookmark){
$marks.Remove($bookmark)
}
