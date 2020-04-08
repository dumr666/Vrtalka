
PROGRAM _CYCLIC
	// Preveri ali je stroj pripravljen na delovanje
	IF doStrojPripravljen = FALSE THEN
		nastavljanjeAgregatov;
	ELSIF (diStartStroja = TRUE OR doDelovanje = TRUE) AND doStrojPripravljen = TRUE THEN
		sistemskoObvestilo := 'Stroj v delovanju';
		doDelovanje := TRUE;
		diStartStroja := FALSE;
		OperacijaVrtanja;
	ELSIF diPrekiniCikel = TRUE AND doDelovanje = TRUE THEN
		sistemskoObvestilo := 'Stroj v zaustavljanju';
		OperacijaVrtanja;
		doDelovanje := FALSE;
		sistemskoObvestilo := 'Stroj zaustavljen';
	END_IF;
	
END_PROGRAM
