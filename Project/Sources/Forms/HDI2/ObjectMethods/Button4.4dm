
If (btnTrace)
	TRACE:C157
End if 


//var $licenceUsage : Collection

var $info : Object

//$licenceUsage:=getLicenceUsageOnServer

$info:=getLicenceInfoOnServer
Form:C1466.product:=$info.products.query("name = :1"; "4D Client")

