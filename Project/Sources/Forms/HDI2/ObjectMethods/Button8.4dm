

If (btnTrace)
	TRACE:C157
End if 



var $headers : Object
var $start; $end : Integer
var $info : Object
var $cookie : Text

var $request; $requestObj : Object
var $bodyColl : Collection



$headers:=buildHeaders

$bodyColl:=New collection:C1472
$bodyColl.push({identifier: Form:C1466.selectedSales.identifier; password: "a"})

$requestObj:={method: HTTP POST method:K71:2; headers: $headers; body: $bodyColl}
$request:=4D:C1709.HTTPRequest.new(Form:C1466.authentify; $requestObj).wait()

$cookie:=$request.response.headers["set-cookie"]
$start:=Position:C15("4DSID_HDI_RestAuthentication"; $cookie)
$end:=Position:C15(";"; $cookie)
Form:C1466.sessionCookie:=Substring:C12($cookie; $start; $end-$start)

If ($request.response.body#Null:C1517)
	Form:C1466.response:=$request.response.body
End if 


$info:=getLicenceInfoOnServer
If ($info#Null:C1517)
	Form:C1466.product:=$info.products.query("name = :1"; "4D Client")
End if 
