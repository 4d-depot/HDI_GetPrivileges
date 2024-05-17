


If (btnTrace)
	TRACE:C157
End if 


Form:C1466.ds:=Open datastore:C1452({hostname: "127.0.0.1:80"}; "localId")


OBJECT SET ENABLED:C1123(*; "Authentify@"; True:C214)
OBJECT SET ENABLED:C1123(*; "GetPrivileges"; True:C214)

Form:C1466.result:="Open datastore done"