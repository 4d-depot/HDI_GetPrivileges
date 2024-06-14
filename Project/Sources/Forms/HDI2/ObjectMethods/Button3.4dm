
If (btnTrace)
	TRACE:C157
End if 


var $headers : Object:={Cookie: ""}
var $request; $requestObj : Object
var $bodyColl : Collection
var $request : Object

var $start; $end : Integer
var $cookies : Collection
var $cookie : Text


$headers:=buildHeaders

$bodyColl:=New collection:C1472
$bodyColl.push(Form:C1466.roles.currentValue)

$requestObj:={method: HTTP POST method:K71:2; headers: $headers; body: $bodyColl}
$request:=4D:C1709.HTTPRequest.new(Form:C1466.authentify; $requestObj).wait()


If (Value type:C1509($request.response.headers["set-cookie"])=Is collection:K8:32)
	$cookies:=$request.response.headers["set-cookie"]
	$cookie:=$cookies.find(Formula:C1597((Position:C15("4DSID_HDI_GetPrivileges"; $1.value)#0)))
Else 
	$cookie:=$request.response.headers["set-cookie"]
End if 



$start:=Position:C15("4DSID_HDI_GetPrivileges"; $cookie)
$end:=Position:C15(";"; $cookie)

If (Storage:C1525.session.cookie="")
	Use (Storage:C1525.session)
		Storage:C1525.session.cookie:=Substring:C12($cookie; $start; $end-$start)
	End use 
End if 

If ($request.response.body#Null:C1517)
	Form:C1466.result:=$request.response.body
End if 
