
ACTION ReadVarsFromHMI: (* Preberi vse spremenljivke iz HMI ekrana *)
	// Dummy
	diHMIin1 := diHMIin1;
	
	// Agregat
	agr1.agr_active := agr1.agr_active;
	agr2.agr_active := agr2.agr_active;
	agr3.agr_active := agr3.agr_active;
	agr4.agr_active := agr4.agr_active;
	agr5.agr_active := agr5.agr_active;
	agr6.agr_active := agr6.agr_active;
	
	SetIzbraniAgrVal;
	
	agr1.poz_agr_s := agr1.poz_agr_s;
	agr2.poz_agr_s := agr2.poz_agr_s;
	agr3.poz_agr_s := agr3.poz_agr_s;
	agr4.poz_agr_s := agr4.poz_agr_s;
	agr5.poz_agr_s := agr5.poz_agr_s;
	agr6.poz_agr_s := agr6.poz_agr_s;
	
END_ACTION
