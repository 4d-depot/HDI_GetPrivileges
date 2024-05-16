//%attributes = {}



var _Descriptions : Collection
var _Directions : Collection
var $text : Text

_Descriptions:=New collection:C1472()
_Directions:=New collection:C1472()


If (Is Windows:C1573)
	For each ($text; _Descriptions_0)
		ST SET ATTRIBUTES:C1093($text; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 14)
		_Descriptions.push($text)
	End for each 
	
	For each ($text; _Directions_0)
		ST SET ATTRIBUTES:C1093($text; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 12; Attribute italic style:K65:2; 1)
		_Directions.push($text)
	End for each 
End if 


If (Is macOS:C1572)
	For each ($text; _Descriptions_0)
		ST SET ATTRIBUTES:C1093($text; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 16)
		_Descriptions.push($text)
	End for each 
	
	For each ($text; _Directions_0)
		ST SET ATTRIBUTES:C1093($text; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 14; Attribute italic style:K65:2; 1)
		_Directions.push($text)
	End for each 
End if 