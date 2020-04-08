
PROGRAM _INIT
	(* Insert code here *)
	//obvestiloHMI := 'INIT UFNKCIJA';
	popupWarning := 0;
	WHILE diGoHome = FALSE DO
	END_WHILE;
	changePage := 20;
	// Zapri okno
	popupWarning := 1;
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	//obvestiloHMI := 'CIKLIK';
	(* Insert code here *)
	//poz_agr1_a := poz_agr1_a + 5;
	stevec := stevec + 1;
	//changePage := 10;
	ReadVarsFromHMI;
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	obvestiloHMI := 'ENDER';
	 
END_PROGRAM

