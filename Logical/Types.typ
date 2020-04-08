
TYPE
	agr_typ : 	STRUCT 
		poz_agr_s : REAL := 0; (*Nastavljena pozicija agregata*)
		poz_agr_a : REAL := 0; (*Dejanska pozicija agregata*)
		poz_agr_i : REAL; (*Izhodiscna pozicija agregata*)
		poz_agr_min : REAL := 0; (*Minimalna skrajna lega agregata*)
		poz_agr_max : REAL := 0; (*Maksimalna skrajna lega agregata*)
		agr_pos_ok : BOOL := FALSE; (*Agregat v poziciji*)
		o_agr_zav : BOOL := FALSE; (*Zavora agregata*)
		agr_width : REAL := 30; (*Sirina agregata*)
		agr_active : BOOL := FALSE; (*Ali je agregat aktiven*)
		izbrani_agr_mask : UINT; (*Maska za spremenljivko izbrani agregat*)
		ag_status : UINT;
	END_STRUCT;
	servo_typ : 	STRUCT 
		servo_set : REAL := 0; (*Nastavljena pozicija servo motorja*)
		servo_act : REAL := 0; (*Trenutna pozicija servo motorja*)
		servo_in_pos : BOOL := FALSE; (*Servo na poziciji*)
		o_agr_zak_z : BOOL := FALSE; (*Razmik agr. -> zaklep ZUNAJ ; OUTPUT*)
		o_agr_zak_o : BOOL := FALSE; (*Razmik agr. -> zaklep NOTER ; OUTPUT*)
		i_agr_zak_z : BOOL := FALSE; (*Razmik agr. -> zaklep ZUNAJ ; INPUT*)
		i_agr_zak_o : BOOL := FALSE; (*Razmik agr. -> zaklep NOTER ; INPUT*)
		poz_srv_max : REAL := 1000; (*Maksimalna pozicija servota*)
		poz_srv_min : REAL := 0; (*Minimalna pozicija servota*)
		servo_moving : BOOL := FALSE; (*DO da se servo premika*)
		agr_zak : BOOL := FALSE; (*ali je agregat zaklnjen (TRUE je, FALSE ni)*)
	END_STRUCT;
END_TYPE
