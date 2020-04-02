
PROGRAM _INIT
		
	// Resetiraj pozicije in spremenljivke agregatov
	SetInitialAgrValues;
	ReleaseAgrBrakes;
	
	// Resetiraj spremenljivke vozicka in ga zapelji v max lego
	SetInitialSrvValues;
	
	WHILE diGoHome = FALSE DO
	END_WHILE;
	
	// Postavi agregate v HOME pozicijo
	SetHomePosAgr;
	diGoHome := FALSE;
	
	// Stroj je priprvljen na uporabo
	doStrojPripravljen := TRUE;
	
	
	
	
	
END_PROGRAM



