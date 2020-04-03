
ACTION SomeTestAction: 
	diHMIin2 := TRUE;
END_ACTION

ACTION SetInitialAgrValues:
	// Nastavi sirine agregatov
	agr1.agr_width := 30;
	agr2.agr_width := 30;
	agr3.agr_width := 30;
	agr4.agr_width := 30;
	agr5.agr_width := 30;
	agr6.agr_width := 30;
	
	// Nastavi minimalne pozicje agregatov
	agr1.poz_agr_min := agr1.agr_width;
	agr2.poz_agr_min := agr1.poz_agr_min + agr2.agr_width;
	agr3.poz_agr_min := agr2.poz_agr_min + agr3.agr_width;
	agr4.poz_agr_min := agr3.poz_agr_min + agr4.agr_width;
	agr5.poz_agr_min := agr4.poz_agr_min + agr5.agr_width;
	agr6.poz_agr_min := agr5.poz_agr_min + agr6.agr_width;
	
	// Reset nastavljenih pozicj
	agr1.poz_agr_s := 0;
	agr2.poz_agr_s := 0;
	agr3.poz_agr_s := 0;
	agr4.poz_agr_s := 0;
	agr5.poz_agr_s := 0;
	agr6.poz_agr_s := 0;
	
	// Reset trenutnih pozicij
	agr1.poz_agr_a := 0;
	agr2.poz_agr_a := 0;
	agr3.poz_agr_a := 0;
	agr4.poz_agr_a := 0;
	agr5.poz_agr_a := 0;
	agr6.poz_agr_a := 0;
	
	// Reset okej boolov
	agr1.agr_pos_ok := FALSE;
	agr2.agr_pos_ok := FALSE;
	agr3.agr_pos_ok := FALSE;
	agr4.agr_pos_ok := FALSE;
	agr5.agr_pos_ok := FALSE;
	agr6.agr_pos_ok := FALSE;
	
	// Reset ali je agr aktiven
	agr1.agr_active := FALSE;
	agr2.agr_active := FALSE;
	agr3.agr_active := FALSE;
	agr4.agr_active := FALSE;
	agr5.agr_active := FALSE;
	agr6.agr_active := FALSE;
	
END_ACTION

ACTION SetMaxAgrValues:  (* Izracun trenutnih maksimalnih pozicij *)
	
END_ACTION

// Sprosti zavore na agregatih
ACTION ReleaseAgrBrakes:
	ZavoraAgregata(agr1, FALSE);
	ZavoraAgregata(agr2, FALSE);
	ZavoraAgregata(agr3, FALSE);
	ZavoraAgregata(agr4, FALSE);
	ZavoraAgregata(agr5, FALSE);
	ZavoraAgregata(agr6, FALSE);
	
END_ACTION


ACTION SetHomePosAgr: (* Vse agregate peljemo na minimalne pozicije *)
	// Pomaknemo vozicek v max ce se ni
	PomikVozicka(1000, vozicek);
	// Iztegnemo zaklep na vozicku
	ZaklepAgregata(vozicek, TRUE);
	// Pomaknemo vozicek iz maksimuma v minimalno lego agregata 6 - agregati se med seboj dotikajo)
	PomikVozicka(agr6.poz_agr_min, vozicek);
	
	// Pozicije agregatov so sedaj znane
	// Agr1
	agr1.poz_agr_s := agr1.poz_agr_min;
	agr1.poz_agr_a := agr1.poz_agr_min;
	agr1.agr_pos_ok := TRUE;
	// Agr 2
	agr2.poz_agr_s := agr2.poz_agr_min;
	agr2.poz_agr_a := agr2.poz_agr_min;
	agr2.agr_pos_ok := TRUE;
	// Agr 3
	agr3.poz_agr_s := agr3.poz_agr_min;
	agr3.poz_agr_a := agr3.poz_agr_min;
	agr3.agr_pos_ok := TRUE;
	// Agr 4
	agr4.poz_agr_s := agr4.poz_agr_min;
	agr4.poz_agr_a := agr4.poz_agr_min;
	agr4.agr_pos_ok := TRUE;
	// Agr 5
	agr5.poz_agr_s := agr5.poz_agr_min;
	agr5.poz_agr_a := agr5.poz_agr_min;
	agr5.agr_pos_ok := TRUE;
	// Agr 6
	agr6.poz_agr_s := agr6.poz_agr_min;
	agr6.poz_agr_a := agr6.poz_agr_min;
	agr6.agr_pos_ok := TRUE;
	
END_ACTION

ACTION SetIzbraniAgrVal: (* Nastavljanje spremenljivke izbrani_agr iz boolov aktivnih agr *)
	
	
	//izbrani_agr := 666;
	IF (agr1.agr_active = TRUE) AND ((izbrani_agr AND 2#0000_0000_0000_0001) = FALSE) THEN
		izbrani_agr := izbrani_agr OR 2#0000_0000_0000_0001;
	END_IF
	IF (agr1.agr_active = FALSE) AND ((izbrani_agr AND 2#0000_0000_0000_0001) = TRUE) THEN
		izbrani_agr := izbrani_agr XOR 2#0000_0000_0000_0001;
	END_IF
	
	IF (agr2.agr_active = TRUE) AND ((izbrani_agr AND 2#0000_0000_0000_0010) = FALSE) THEN
		izbrani_agr := izbrani_agr OR 2#0000_0000_0000_0010;
	END_IF
	IF (agr2.agr_active = FALSE) AND ((izbrani_agr AND 2#0000_0000_0000_0010) = TRUE) THEN
		izbrani_agr := izbrani_agr XOR 2#0000_0000_0000_0010;
	END_IF
		(*
	IF agr1.agr_active = TRUE THEN
		izbrani_agr := izbrani_agr OR 2#0000_0000_0000_0001;
	END_IF;
	IF agr1.agr_active = FALSE THEN
		izbrani_agr := izbrani_agr XOR 2#0000_0000_0000_0001;
	END_IF;
	
	IF agr2.agr_active = TRUE THEN
		izbrani_agr := izbrani_agr OR 2#0000_0000_0000_0010;
	END_IF;
	IF agr1.agr_active = FALSE THEN
		izbrani_agr := izbrani_agr XOR 2#0000_0000_0000_0010;
	END_IF;
	

	IF agr3.agr_active = TRUE THEN
		izbrani_agr := izbrani_agr OR 2#0000_0000_0000_0100;
	ELSE 
		izbrani_agr := izbrani_agr XOR 2#0000_0000_0000_0100;
	END_IF;
	
	IF agr4.agr_active = TRUE THEN
		izbrani_agr := izbrani_agr OR 2#0000_0000_0000_1000;
	ELSE 
		izbrani_agr := izbrani_agr XOR 2#0000_0000_0000_1000;
	END_IF;
	
	IF agr5.agr_active = TRUE THEN
		izbrani_agr := izbrani_agr OR 2#0000_0000_0001_0000;
	ELSE 
		izbrani_agr := izbrani_agr XOR 2#0000_0000_0001_0000;
	END_IF;
	
	IF agr6.agr_active = TRUE THEN
		izbrani_agr := izbrani_agr OR 2#0000_0000_0010_0000;
	ELSE 
		izbrani_agr := izbrani_agr XOR 2#0000_0000_0010_0000;
	END_IF;
	*)
END_ACTION
