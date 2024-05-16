Class extends DataStoreImplementation



exposed Function authentify($role : Text)
	
	Session:C1714.clearPrivileges()
	Session:C1714.setPrivileges({roles: $role})
	
	
exposed Function getPrivileges() : Collection
	return Session:C1714.getPrivileges(False:C215)