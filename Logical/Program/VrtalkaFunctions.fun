
FUNCTION ZaklepAgregata : BOOL (*TRUE -> success, FALSE -> failure*)
	VAR_INPUT
		vozicek : servo_typ;
		zak_agr : BOOL; (*TRUE -> iztegni zaklep, FALSE -> skrci zaklep*)
	END_VAR
END_FUNCTION

FUNCTION TestZaklepaAgr : BOOL (*Funkcija za preverjanje zaklepa agregata*)
	VAR_INPUT
		vozicek : servo_typ; (*input tipa*)
	END_VAR
END_FUNCTION

FUNCTION PomikVozicka : BOOL (*Funkcija za pomik vozicka*)
	VAR_INPUT
		n_pos : REAL; (*Nova pozicija servota*)
		vozicek : servo_typ; (*Passamo spremenljivko v funkcijo da lahko prirejamo vrednsti*)
	END_VAR
	VAR
		n_pomik : REAL; (*pomik v plus ali minus odvisno od servo_act >< == servo_set*)
	END_VAR
END_FUNCTION

FUNCTION ZavoraAgregata : BOOL (*Funkcija za sprostitev ali  zaklep zavore*)
	VAR_INPUT
		agr : agr_typ; (*Spremenljivka za agregat -> pass reference*)
		agr_zav : BOOL; (*TRUE -> Aktiviraj zavoro, FALSE -> sprosti zavoro*)
	END_VAR
END_FUNCTION
