private
proceedWith: aUser
	self session usuario: aUser.
	self call: CuOOraHomeComponent new