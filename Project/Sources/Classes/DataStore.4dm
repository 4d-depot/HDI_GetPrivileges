Class extends DataStoreImplementation



exposed Function authentify($role : Text) : Text
	
	Session:C1714.clearPrivileges()
	Session:C1714.setPrivileges({roles: $role})
	
	return "Authentication done with "+$role
	
	
exposed Function getPrivileges() : Collection
	return Session:C1714.getPrivileges(False:C215)