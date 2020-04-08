ACTION makeStep:
	WHILE diSTEP = FALSE DO
	END_WHILE;
	diSTEP := FALSE;
END_ACTION

ACTION nastavljanjeAgregatov:
	
	// Preveri ce so vse pozicije agregatov znane
	diPozAgrOK := agr1.agr_pos_ok AND agr2.agr_pos_ok AND agr3.agr_pos_ok AND agr4.agr_pos_ok AND agr5.agr_pos_ok AND agr6.agr_pos_ok;
	SetIzbraniAgrVal;
	makeStep;
	IF diPozAgrOK = FALSE THEN
		SetHomePosAgr;
	END_IF;
	makeStep;
	IF currentPage <> 20 THEN
		changePage := 20;
	END_IF;
	
	makeStep;
	
	// Pocakaj za vsak slucaj da se odpre nastavitven ekran
	WHILE currentPage <> 20 DO
	END_WHILE;
	sistemskoObvestilo := 'Stroj v nastavljanju';
	
	WHILE diShraniPozicije = FALSE DO
	END_WHILE;
	ReadVarsFromHMI;
	popupConfirm := 0; 
	
	WHILE diPotrdiPozicije = FALSE DO
	END_WHILE;
	
	diShraniPozicije := FALSE;
	diPotrdiPozicije := FALSE;
	popupConfirm := 1;
	
	
	// Stroj je pripravljen na delo, nastavitve agregatov so potrjene
	// Stroj je priprvljen na uporabo
	doStrojPripravljen := TRUE;
	
	WHILE diStartStroja = FALSE DO
	END_WHILE;
	
	//popupWarning := 1;
	changePage := 10;

END_ACTION

ACTION OperacijaVrtanja: (* mock operacija za vrtanje *)
	// Tukaj bi prisla koda za dejansko vrtanje vrtalke
END_ACTION
