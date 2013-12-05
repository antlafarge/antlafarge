function delFirstEntry()
{
	var status = document.getElementById("status");
	if ( status.childNodes.length >= 2 )
	{
		var child = status.childNodes[1];
		status.removeChild( child );
	}
}

function processUploadedFile(url, file)
{
	var status = document.getElementById("status");
	var div = document.createElement("p");
	div.innerHTML = file.name + " uploaded";
	status.appendChild( div );
	setTimeout(delFirstEntry, 4000);
}
var uploader = new Uploader('dropbox', processUploadedFile, "uploadedFiles");

document.onselectstart = function() {return false;}
