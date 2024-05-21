
var $info : Object


Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		
		btnTrace:=False:C215
		
		initInfo
		
		
		
		Form:C1466.authentify:="http://127.0.0.1:80/rest/$catalog/authentify"
		
		Form:C1466.roles:={values: ["High"; "Medium"]}
		Form:C1466.roles.index:=0
		
		Form:C1466.getPrivileges:="http://127.0.0.1:80/rest/$info/privileges"
		
		OBJECT SET ENABLED:C1123(*; "Authentify@"; False:C215)
		OBJECT SET ENABLED:C1123(*; "GetPrivileges"; False:C215)
		
		manageTexts
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		manageTexts
		
		
		
End case 

