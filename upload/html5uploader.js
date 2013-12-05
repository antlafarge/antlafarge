function Uploader(dropElement, processCallback, uploadDir, rawFileFormat)
{
	if ( typeof(dropElement) == "string" )
	{
		dropElement = document.getElementById(dropElement);
	}
	
	if ( dropElement == null || dropElement.nodeType == null )
	{
		alert("You try to initialise a file uploader without setting the drop dom element node or id at first parameter !");
		return;
	}
	
	var filesDropped = [];
	
	// Upload image files
	var processNextFile = function()
	{
		var file = filesDropped.shift();
		var reader = new FileReader();
		var url = "";
		var upload = uploadDir ? true : false;
		
		// Si le fichier doit etre upload
		if ( upload )
		{
			var uploadPhpScript = "./upload.php";
			url = uploadDir + "/" + file.name;
			
			// Firefox, Chrome, WebKit
			if (window.FileReader)
			{
				// Once the process of reading file, we can upload if necessary
				this.uploadAtEnd = function()
				{
					var xhrUrl = uploadPhpScript+'?up=true&unique=true&filepath='+url;
					bin = reader.result;
					xhr = new XMLHttpRequest();
					xhr.open('POST', xhrUrl, false);
					
					var boundary = 'xxxxxxxxx';
					var body = '--' + boundary + "\r\n";  
					body += "Content-Disposition: form-data; name='upload'; filename='" + file.name + "'\r\n";
					body += "Content-Type: application/octet-stream\r\n\r\n";
					body += bin + "\r\n";  
					body += '--' + boundary + '--';      
					xhr.setRequestHeader('content-type', 'multipart/form-data; boundary=' + boundary);
					// Firefox provides a feature sendAsBinary ()
					if (xhr.sendAsBinary != null)
					{ 
						xhr.sendAsBinary(body); 
					}
					// Chrome sends data but you must use the base64_decode on the PHP side
					else
					{ 
						xhr.open('POST', xhrUrl + '&base64=true', false);
						xhr.setRequestHeader('UP-FILENAME', file.name);
						xhr.setRequestHeader('UP-SIZE', file.size);
						xhr.setRequestHeader('UP-TYPE', file.type);
						xhr.send(window.btoa(bin));
					}
				}
			}
			
			// Firefox, WebKit
			if(reader.addEventListener)
			{
				reader.addEventListener('loadend', this.uploadAtEnd, false);
			}
			// Chrome
			else
			{
				reader.onloadend = this.uploadAtEnd;
			}
		}
		
		// The function that starts reading the file as a binary string
     	reader.readAsBinaryString(file);
	    
    	// Get the binary data readed
    	if (processCallback)
    	{
			var binaryDataReader = new FileReader();
			
			var launchPreviewCallback = function()
			{
				if ( !rawFileFormat )
				{
					processCallback(url, file);
				}
				else
				{
					binaryData = binaryDataReader.result;
					processCallback(binaryData, file);
				}
			}
			
			// Firefox, WebKit
			if (binaryDataReader.addEventListener)
			{
				binaryDataReader.addEventListener('loadend', launchPreviewCallback, false);
			}
			// Chrome
			else
			{ 
				binaryDataReader.onloadend = launchPreviewCallback;
			}
	     	binaryDataReader.readAsDataURL(file);
	 	}
	 	
		// Recursive call (for multiple uploads)
	 	if ( filesDropped.length )
			processNextFile();
	}
	
	// Function drop file
	var drop = function(event)
	{
		event.preventDefault();
	 	var dt = event.dataTransfer;
	 	var files = dt.files;
	 	for (var i = 0; i<files.length; i++)
	 	{
			filesDropped.push( files[i] );
	 	}
		processNextFile();
	}
	
	// The inclusion of the event listeners (DragOver and drop)
	dropElement.addEventListener("dragover", function(event)
	{
		event.stopPropagation();
		event.preventDefault();
	}, true);
	dropElement.addEventListener("drop", drop, false);
}
