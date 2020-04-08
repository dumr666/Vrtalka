
PROGRAM _INIT
	
	//Nastavi trenutno stran na Settings ob zagonu
	changePage := 0;
	sistemskoObvestilo := 'ZAGON STROJA';
	// Resetiraj pozicije in spremenljivke agregatov
	SetInitialAgrValues;
	ReleaseAgrBrakes;
	WHILE diGoHome = FALSE DO
	END_WHILE;
	
	// Zapri okno
	popupWarning := 1;
	// Resetiraj spremenljivke vozicka in ga zapelji v max lego
	SetInitialSrvValues;
	// Postavi agregate v HOME pozicijo
	SetHomePosAgr;
	diGoHome := FALSE;
END_PROGRAM



