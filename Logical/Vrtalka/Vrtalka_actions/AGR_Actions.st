
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
	
	// Nastavi status agregata
	agr1.ag_status := 0;
	agr2.ag_status := 0;
	agr3.ag_status := 0;
	agr4.ag_status := 0;
	agr5.ag_status := 0;
	agr6.ag_status := 0;
	
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

ACTION LockAgrBrakes:
	ZavoraAgregata(agr1, TRUE);
	ZavoraAgregata(agr2, TRUE);
	ZavoraAgregata(agr3, TRUE);
	ZavoraAgregata(agr4, TRUE);
	ZavoraAgregata(agr5, TRUE);
	ZavoraAgregata(agr6, TRUE);
	
END_ACTION


ACTION SetHomePosAgr: (* Vse agregate peljemo na minimalne pozicije *)
	(* 
	Nastaviti se morajo naslednje spremenljivke
	agr<#>.poz_agr_s - vozicke prepeljemo v minimalne lege dolocene v spremenljivki agr<#>.poz_agr_min
	agr<#>.poz_agr_a - dejanske pozicije agregatov (agregati so skupaj in naslonjeni, izracuna se iz sirine agregatov)
	agr<#>.poz_agr_i - izhodiscna pozicija agregata, ce zelimo kasneje popraviti lego, peljemo v HOME in nazaj razporedimo
	*)
	// Pomaknemo vozicek v max ce se ni
	PomikVozicka(1000, vozicek);
	// Iztegnemo zaklep na vozicku
	ZaklepAgregata(vozicek, TRUE);
	// Pomaknemo vozicek iz maksimuma v minimalno lego agregata 6 - agregati se med seboj dotikajo)
	PomikVozicka(agr6.poz_agr_min, vozicek);
	
	// Nastavimo status vozicka
	agr1.ag_status := 3;
	agr2.ag_status := 3;
	agr3.ag_status := 3;
	agr4.ag_status := 3;
	agr5.ag_status := 3;
	agr6.ag_status := 3;
	
	// Pozicije agregatov so sedaj znane
	// Agr1
	agr1.ag_status := 2;
	agr1.poz_agr_s := agr1.poz_agr_min;
	agr1.poz_agr_a := agr1.poz_agr_s;
	agr1.poz_agr_i := agr1.poz_agr_a;
	agr1.agr_pos_ok := TRUE;
	// Agr 2
	agr2.ag_status := 2;
	agr2.poz_agr_s := agr2.poz_agr_min;
	agr2.poz_agr_a := agr2.poz_agr_s;
	agr2.poz_agr_i := agr2.poz_agr_a;
	agr2.agr_pos_ok := TRUE;
	// Agr 3
	agr3.ag_status := 2;
	agr3.poz_agr_s := agr3.poz_agr_min;
	agr3.poz_agr_a := agr3.poz_agr_s;
	agr3.poz_agr_i := agr3.poz_agr_a;
	agr3.agr_pos_ok := TRUE;
	// Agr 4
	agr4.ag_status := 2;
	agr4.poz_agr_s := agr4.poz_agr_min;
	agr4.poz_agr_a := agr4.poz_agr_s;
	agr4.poz_agr_i := agr4.poz_agr_a;
	agr4.agr_pos_ok := TRUE;
	// Agr 5
	agr5.ag_status := 2;
	agr5.poz_agr_s := agr5.poz_agr_min;
	agr5.poz_agr_a := agr5.poz_agr_s;
	agr5.poz_agr_i := agr5.poz_agr_a;
	agr5.agr_pos_ok := TRUE;
	// Agr 6
	agr6.ag_status := 2;
	agr6.poz_agr_s := agr6.poz_agr_min;
	agr6.poz_agr_a := agr6.poz_agr_s;
	agr6.poz_agr_i := agr6.poz_agr_a;
	agr6.agr_pos_ok := TRUE;
	
END_ACTION

ACTION SetIzbraniAgrVal: (* Nastavljanje spremenljivke izbrani_agr iz boolov aktivnih agr *)
	
	// Za vsak agregat se preveri ce je aktiviran in ce je ustrezen bit v spremenljivki izbrani_agr postavljen na 1
	IF (agr1.agr_active = TRUE) AND (izbrani_agr.0 = 0) THEN
		izbrani_agr.0 := 1;
	ELSIF (agr1.agr_active = FALSE) AND (izbrani_agr.0 = 1) THEN
		izbrani_agr.0 := 0;
	END_IF;
	
	IF (agr2.agr_active = TRUE) AND (izbrani_agr.1 = 0) THEN
		izbrani_agr.1 := 1;
	ELSIF (agr2.agr_active = FALSE) AND (izbrani_agr.1 = 1) THEN
		izbrani_agr.1 := 0;
	END_IF;
	
	IF (agr3.agr_active = TRUE) AND (izbrani_agr.2 = 0) THEN
		izbrani_agr.2 := 1;
	ELSIF (agr3.agr_active = FALSE) AND (izbrani_agr.2 = 1) THEN
		izbrani_agr.2 := 0;
	END_IF;
	
	IF (agr4.agr_active = TRUE) AND (izbrani_agr.3 = 0) THEN
		izbrani_agr.3 := 1;
	ELSIF (agr4.agr_active = FALSE) AND (izbrani_agr.3 = 1) THEN
		izbrani_agr.3 := 0;
	END_IF;
	
	IF (agr5.agr_active = TRUE) AND (izbrani_agr.4 = 0) THEN
		izbrani_agr.4 := 1;
	ELSIF (agr5.agr_active = FALSE) AND (izbrani_agr.4 = 1) THEN
		izbrani_agr.4 := 0;
	END_IF;
	
	IF (agr6.agr_active = TRUE) AND (izbrani_agr.5 = 0) THEN
		izbrani_agr.5 := 1;
	ELSIF (agr6.agr_active = FALSE) AND (izbrani_agr.5 = 1) THEN
		izbrani_agr.5 := 0;
	END_IF;
	
END_ACTION
