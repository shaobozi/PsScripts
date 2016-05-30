# copy current path to clipboard
function ccp{
	(pwd).ToString() | clip
}

# create new file with specific name
function nf($filename){
	New-Item -ItemType file $filename
}

function find($keyword){
	Everything.exe -s $keyword
}
