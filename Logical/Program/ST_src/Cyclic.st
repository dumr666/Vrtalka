
PROGRAM _CYCLIC
	(* Insert code here *)
	//poz_agr1_a := poz_agr1_a + 5;
	vozicek.servo_set := vozicek.servo_set;
	IF diStartStroja THEN
		agr1.poz_agr_a := agr1.poz_agr_a + 5;
		
		PomikVozicka(n_pos := vozicek.servo_set, vozicek := vozicek);
		SomeTestAction;
		 
		// Dodatek iz vscode
		doDelovanje := TRUE;
	ELSE
		doDelovanje := FALSE;
	END_IF;
	
	

	// Using variables from HMI to set actual vars
	
	
	ZaklepAgregata(vozicek := vozicek, zak_agr := diHMIin1);
	TestZaklepaAgr(vozicek := vozicek);
	
END_PROGRAM
