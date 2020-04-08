FUNCTION TestZaklepaAgr (* Funkcija za preverjanje zaklepa agregata *)
	IF vozicek.i_agr_zak_z = TRUE AND vozicek.i_agr_zak_o = FALSE THEN
		vozicek.agr_zak := FALSE;
		TestZaklepaAgr := TRUE;
	ELSIF vozicek.i_agr_zak_z = FALSE AND vozicek.i_agr_zak_o = TRUE THEN
		vozicek.agr_zak := TRUE;
		TestZaklepaAgr := TRUE;
	ELSE
		//  Zaradi varnosti privzamemo da je zaklep zunaj
		vozicek.agr_zak := TRUE;
		TestZaklepaAgr := FALSE;
	END_IF
END_FUNCTION

FUNCTION ZaklepAgregata (* Funckija za zaklep agregata|| TRUE->zaklep ; FALSE-> odklep *)
	IF zak_agr = TRUE THEN
		vozicek.o_agr_zak_o := TRUE;
		vozicek.o_agr_zak_z := FALSE;
		vozicek.i_agr_zak_o := vozicek.o_agr_zak_o;
		vozicek.i_agr_zak_z := vozicek.o_agr_zak_z;
		ZaklepAgregata := vozicek.i_agr_zak_o AND NOT vozicek.i_agr_zak_z;
	ELSIF zak_agr = FALSE THEN
		
		vozicek.o_agr_zak_o := FALSE;
		vozicek.o_agr_zak_z := TRUE;
		vozicek.i_agr_zak_o := vozicek.o_agr_zak_o;
		vozicek.i_agr_zak_z := vozicek.o_agr_zak_z;
		vozicek.agr_zak := FALSE;
		ZaklepAgregata := NOT vozicek.i_agr_zak_o AND vozicek.i_agr_zak_z;
	ELSE 
		ZaklepAgregata := FALSE;
	END_IF;	
END_FUNCTION

FUNCTION PomikVozicka (* Funkcija za pomik vozicka, REAL je zeljena pozicija *)
	vozicek.servo_set := n_pos;
	
	
	IF  vozicek.servo_act > vozicek.servo_set THEN
		n_pomik := -1;
	ELSIF vozicek.servo_act < vozicek.servo_set THEN
		n_pomik := 1;
	ELSE
		// 
		vozicek.servo_in_pos := TRUE;
		PomikVozicka := TRUE;
	END_IF;
	
	WHILE vozicek.servo_act <> vozicek.servo_set DO
		vozicek.servo_moving := TRUE;
		vozicek.servo_act := vozicek.servo_act + n_pomik;
	END_WHILE
	vozicek.servo_moving := FALSE;
	// preverjanje ali je vozicek na ustreznem mestu
	// ce je
	IF vozicek.servo_act = vozicek.servo_set THEN
		vozicek.servo_in_pos := TRUE;
		PomikVozicka := TRUE;
		// Ce ni na ustreznem mestu vrzemo vn false funkcije
	ELSE
		vozicek.servo_in_pos := FALSE;
		PomikVozicka := FALSE;
	END_IF
END_FUNCTION

FUNCTION ZavoraAgregata (* Funckija za zaklep in odklep agregata *)
	agr.o_agr_zav := agr_zav;
	ZavoraAgregata := TRUE;
END_FUNCTION