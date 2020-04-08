ACTION SetInitialSrvValues:
	// Relevatne vrednosti pozicij
	vozicek.poz_srv_max := 1000;
	vozicek.poz_srv_min := agr1.poz_agr_min;
	
	// Reset ostalih spremenljivk
	
	// Zaklep agregata noter (Varnost)
	ZaklepAgregata(vozicek, FALSE);
	TestZaklepaAgr(vozicek);
	
	vozicek.servo_act := 0;
	vozicek.servo_set := 0;
	
	vozicek.servo_in_pos := FALSE;
	vozicek.servo_moving := FALSE;
	
	// Zaklep agregata noter ter pomik v skrajno lego
	PomikVozicka(n_pos := vozicek.poz_srv_max, vozicek := vozicek);
END_ACTION
