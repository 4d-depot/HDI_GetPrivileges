

var $folder : 4D:C1709.Folder
var $path : Text

If (btnTrace)
	TRACE:C157
End if 

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		$folder:=Folder:C1567("/PROJECT/Sources")
		$path:=$folder.platformPath+"roles.json"
		SHOW ON DISK:C922($path)
		
End case 