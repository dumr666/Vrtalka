UnmarkedObjectFolder := F:/1_Automation_projects/Vrtalka/Logical/Program
MarkedObjectFolder := F:/1_Automation_projects/Vrtalka/Logical/Program

$(AS_CPU_PATH)/Program.br: \
	$(AS_PROJECT_CPU_PATH)/Cpu.per \
	$(AS_CPU_PATH)/Program/Program.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/Program/Program.ox" -o "$(AS_CPU_PATH)/Program.br" -v V1.00.0 -f "$(AS_CPU_PATH)/NT.ofs" -offsetLT "$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/LT.ofs" -T SG4  -M IA32  -B D4.26 -extConstants -d "runtime: V* - V*,asieccon: V* - V*" -r Cyclic7 -p 2 -s "Program" -L "AsIecCon: V*, astime: V*, brsystem: V*, MTBasics: V2.30.0, MTTypes: V1.03.4, operator: V*, runtime: V*, sys_lib: V*" -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"

$(AS_CPU_PATH)/Program/Program.ox: \
	$(AS_CPU_PATH)/Program/a.out
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/Program/a.out" -o "$(AS_CPU_PATH)/Program/Program.ox" -T SG4 -r Cyclic7   -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/Program/a.out: \
	$(AS_CPU_PATH)/Program/Cyclic.st.o \
	$(AS_CPU_PATH)/Program/Init.st.o \
	$(AS_CPU_PATH)/Program/Exit.st.o \
	$(AS_CPU_PATH)/Program/VrtalkaFunctions.st.o
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link "$(AS_CPU_PATH)/Program/Cyclic.st.o" "$(AS_CPU_PATH)/Program/Init.st.o" "$(AS_CPU_PATH)/Program/Exit.st.o" "$(AS_CPU_PATH)/Program/VrtalkaFunctions.st.o"  -o "$(AS_CPU_PATH)/Program/a.out"  -G V4.1.2  -T SG4  -M IA32  "-Wl,$(AS_PROJECT_PATH)/Logical/Libraries/MTBasics/SG4/IA32/libMTBasics.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/D0426/SG4/IA32/libsys_lib.a" "-Wl,$(AS_PROJECT_PATH)/Logical/Libraries/MTTypes/SG4/IA32/libMTTypes.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/D0426/SG4/IA32/libbrsystem.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/D0426/SG4/IA32/libAsIecCon.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/D0426/SG4/IA32/libastime.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/D0426/SG4/IA32/libruntime.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/D0426/SG4/IA32/liboperator.a" -specs=I386specs -Wl,-q,-T,bur_elf_i386.x -nostdlib -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/Program/Cyclic.st.o: \
	$(AS_PROJECT_PATH)/Logical/Program/ST_src/Cyclic.st \
	$(AS_PROJECT_PATH)/Logical/Program/VrtalkaFunctions.fun \
	$(AS_PROJECT_PATH)/Logical/Program/Variables.var \
	$(AS_PROJECT_PATH)/Logical/Program/Types.typ \
	$(AS_PROJECT_PATH)/Logical/Program/Vrtalka_actions/AGR_Actions.st \
	$(AS_PROJECT_PATH)/Logical/Program/Vrtalka_actions/General_actions.st \
	$(AS_PROJECT_PATH)/Logical/Program/Vrtalka_actions/SRV_Actions.st
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Program/ST_src/Cyclic.st" -o "$(AS_CPU_PATH)/Program/Cyclic.st.o"  -O "$(AS_CPU_PATH)//Program/Cyclic.st.o.opt" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

$(AS_CPU_PATH)/Program/Init.st.o: \
	$(AS_PROJECT_PATH)/Logical/Program/ST_src/Init.st \
	$(AS_PROJECT_PATH)/Logical/Program/VrtalkaFunctions.fun \
	$(AS_PROJECT_PATH)/Logical/Program/Variables.var \
	$(AS_PROJECT_PATH)/Logical/Program/Types.typ \
	$(AS_PROJECT_PATH)/Logical/Program/Vrtalka_actions/AGR_Actions.st \
	$(AS_PROJECT_PATH)/Logical/Program/Vrtalka_actions/General_actions.st \
	$(AS_PROJECT_PATH)/Logical/Program/Vrtalka_actions/SRV_Actions.st
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Program/ST_src/Init.st" -o "$(AS_CPU_PATH)/Program/Init.st.o"  -O "$(AS_CPU_PATH)//Program/Init.st.o.opt" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

$(AS_CPU_PATH)/Program/Exit.st.o: \
	$(AS_PROJECT_PATH)/Logical/Program/ST_src/Exit.st \
	$(AS_PROJECT_PATH)/Logical/Program/VrtalkaFunctions.fun \
	$(AS_PROJECT_PATH)/Logical/Program/Variables.var \
	$(AS_PROJECT_PATH)/Logical/Program/Types.typ \
	$(AS_PROJECT_PATH)/Logical/Program/Vrtalka_actions/AGR_Actions.st \
	$(AS_PROJECT_PATH)/Logical/Program/Vrtalka_actions/General_actions.st \
	$(AS_PROJECT_PATH)/Logical/Program/Vrtalka_actions/SRV_Actions.st
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Program/ST_src/Exit.st" -o "$(AS_CPU_PATH)/Program/Exit.st.o"  -O "$(AS_CPU_PATH)//Program/Exit.st.o.opt" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

$(AS_CPU_PATH)/Program/VrtalkaFunctions.st.o: \
	$(AS_PROJECT_PATH)/Logical/Program/VrtalkaFunctions.st \
	$(AS_PROJECT_PATH)/Logical/Program/VrtalkaFunctions.fun \
	$(AS_PROJECT_PATH)/Logical/Program/Variables.var \
	$(AS_PROJECT_PATH)/Logical/Program/Types.typ \
	$(AS_PROJECT_PATH)/Logical/Program/Vrtalka_actions/AGR_Actions.st \
	$(AS_PROJECT_PATH)/Logical/Program/Vrtalka_actions/General_actions.st \
	$(AS_PROJECT_PATH)/Logical/Program/Vrtalka_actions/SRV_Actions.st
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Program/VrtalkaFunctions.st" -o "$(AS_CPU_PATH)/Program/VrtalkaFunctions.st.o"  -O "$(AS_CPU_PATH)//Program/VrtalkaFunctions.st.o.opt" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 

