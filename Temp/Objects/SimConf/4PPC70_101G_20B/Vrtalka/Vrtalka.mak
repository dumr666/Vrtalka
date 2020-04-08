UnmarkedObjectFolder := F:/1_Automation_projects/Vrtalka/Logical/Vrtalka
MarkedObjectFolder := F:/1_Automation_projects/Vrtalka/Logical/Vrtalka

$(AS_CPU_PATH)/Vrtalka.br: \
	$(AS_PROJECT_CPU_PATH)/Cpu.per \
	FORCE \
	$(AS_CPU_PATH)/Vrtalka/Vrtalka.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/Vrtalka/Vrtalka.ox" -o "$(AS_CPU_PATH)/Vrtalka.br" -v V1.00.0 -f "$(AS_CPU_PATH)/NT.ofs" -offsetLT "$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/LT.ofs" -T SG4  -M IA32  -B D4.26 -extConstants -d "runtime: V* - V*,asieccon: V* - V*" -r Cyclic7 -p 2 -s "Vrtalka" -L "AsIecCon: V*, astime: V*, brsystem: V*, MTBasics: V2.30.0, MTTypes: V1.03.4, operator: V*, runtime: V*, sys_lib: V*" -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"

$(AS_CPU_PATH)/Vrtalka/Vrtalka.ox: \
	$(AS_CPU_PATH)/Vrtalka/a.out \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/Vrtalka/a.out" -o "$(AS_CPU_PATH)/Vrtalka/Vrtalka.ox" -T SG4 -r Cyclic7   -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/Vrtalka/a.out: \
	$(AS_CPU_PATH)/Vrtalka/Cyclic.st.o \
	$(AS_CPU_PATH)/Vrtalka/Init.st.o \
	$(AS_CPU_PATH)/Vrtalka/Exit.st.o \
	$(AS_CPU_PATH)/Vrtalka/VrtalkaFunctions.st.o \
	FORCE
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link "$(AS_CPU_PATH)/Vrtalka/Cyclic.st.o" "$(AS_CPU_PATH)/Vrtalka/Init.st.o" "$(AS_CPU_PATH)/Vrtalka/Exit.st.o" "$(AS_CPU_PATH)/Vrtalka/VrtalkaFunctions.st.o"  -o "$(AS_CPU_PATH)/Vrtalka/a.out"  -G V4.1.2  -T SG4  -M IA32  "-Wl,$(AS_PROJECT_PATH)/Logical/Libraries/MTBasics/SG4/IA32/libMTBasics.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/D0426/SG4/IA32/libsys_lib.a" "-Wl,$(AS_PROJECT_PATH)/Logical/Libraries/MTTypes/SG4/IA32/libMTTypes.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/D0426/SG4/IA32/libbrsystem.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/D0426/SG4/IA32/libAsIecCon.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/D0426/SG4/IA32/libastime.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/D0426/SG4/IA32/libruntime.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/D0426/SG4/IA32/liboperator.a" -specs=I386specs -Wl,-q,-T,bur_elf_i386.x -nostdlib -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/Vrtalka/Cyclic.st.o: \
	$(AS_PROJECT_PATH)/Logical/Vrtalka/ST_src/Cyclic.st \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Vrtalka/ST_src/Cyclic.st" -o "$(AS_CPU_PATH)/Vrtalka/Cyclic.st.o"  -O "$(AS_CPU_PATH)//Vrtalka/Cyclic.st.o.opt" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

$(AS_CPU_PATH)/Vrtalka/Init.st.o: \
	$(AS_PROJECT_PATH)/Logical/Vrtalka/ST_src/Init.st \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Vrtalka/ST_src/Init.st" -o "$(AS_CPU_PATH)/Vrtalka/Init.st.o"  -O "$(AS_CPU_PATH)//Vrtalka/Init.st.o.opt" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

$(AS_CPU_PATH)/Vrtalka/Exit.st.o: \
	$(AS_PROJECT_PATH)/Logical/Vrtalka/ST_src/Exit.st \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Vrtalka/ST_src/Exit.st" -o "$(AS_CPU_PATH)/Vrtalka/Exit.st.o"  -O "$(AS_CPU_PATH)//Vrtalka/Exit.st.o.opt" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

$(AS_CPU_PATH)/Vrtalka/VrtalkaFunctions.st.o: \
	$(AS_PROJECT_PATH)/Logical/Vrtalka/VrtalkaFunctions.st \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Vrtalka/VrtalkaFunctions.st" -o "$(AS_CPU_PATH)/Vrtalka/VrtalkaFunctions.st.o"  -O "$(AS_CPU_PATH)//Vrtalka/VrtalkaFunctions.st.o.opt" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 



FORCE: