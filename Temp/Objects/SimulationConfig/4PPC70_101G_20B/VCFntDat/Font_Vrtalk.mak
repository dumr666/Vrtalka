######################################################
#                                                    #
# Automatic generated Makefile for Visual Components #
#                                                    #
#                  Do NOT edit!                      #
#                                                    #
######################################################

VCC:=@"$(AS_BIN_PATH)/br.vc.pc.exe"
LINK:=@"$(AS_BIN_PATH)/BR.VC.Link.exe"
MODGEN:=@"$(AS_BIN_PATH)/BR.VC.ModGen.exe"
VCPL:=@"$(AS_BIN_PATH)/BR.VC.PL.exe"
VCHWPP:=@"$(AS_BIN_PATH)/BR.VC.HWPP.exe"
VCDEP:=@"$(AS_BIN_PATH)/BR.VC.Depend.exe"
VCFLGEN:=@"$(AS_BIN_PATH)/BR.VC.lfgen.exe"
VCREFHANDLER:=@"$(AS_BIN_PATH)/BR.VC.CrossReferenceHandler.exe"
VCXREFEXTENDER:=@"$(AS_BIN_PATH)/BR.AS.CrossRefVCExtender.exe"
RM=CMD /C DEL
PALFILE_Vrtalk=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Palette.vcr
VCCFLAGS_Vrtalk=-server -proj Vrtalk -vc "$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/VCObject.vc" -prj_path "$(AS_PROJECT_PATH)" -temp_path "$(AS_TEMP_PATH)" -cfg $(AS_CONFIGURATION) -plc $(AS_PLC) -plctemp $(AS_TEMP_PLC) -cpu_path "$(AS_CPU_PATH)"
VCFIRMWARE=4.26.5
VCFIRMWAREPATH=$(AS_VC_PATH)/Firmware/V4.26.5/SG4
VCOBJECT_Vrtalk=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/VCObject.vc
VCSTARTUP="vcstart.br"
VCLOD="vclod.br"
VCSTPOST="vcstpost.br"
TARGET_FILE_Vrtalk=$(AS_CPU_PATH)/Vrtalk.br
OBJ_SCOPE_Vrtalk=
PRJ_PATH_Vrtalk=$(AS_PROJECT_PATH)
SRC_PATH_Vrtalk=$(AS_PROJECT_PATH)/Logical/$(OBJ_SCOPE_Vrtalk)/VrtalkaHMI
TEMP_PATH_Vrtalk=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Vrtalk
TEMP_PATH_Shared=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared
TEMP_PATH_ROOT_Vrtalk=$(AS_TEMP_PATH)
VC_LIBRARY_LIST_Vrtalk=$(TEMP_PATH_Vrtalk)/libraries.vci
VC_XREF_BUILDFILE_Vrtalk=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.build
VC_XREF_CLEANFILE=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.clean
VC_LANGUAGES_Vrtalk=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr
CPUHWC="$(TEMP_PATH_Vrtalk)/cpuhwc.vci"
VC_STATIC_OPTIONS_Vrtalk="$(TEMP_PATH_Vrtalk)/vcStaticOptions.xml"
VC_STATIC_OPTIONS_Shared="$(TEMP_PATH_Shared)/vcStaticOptions.xml"
TTFFLAGS_Vrtalk= -P "$(AS_PROJECT_PATH)" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo"

#
# Font reemkz6g
#
ifneq ($(VC_FONT_reemkz6g),1)
VC_FONT_reemkz6g=1
$(AS_CPU_PATH)/VcFntDat/reemkz6g.vco:$(AS_CPU_PATH)/VcFntDat/reemkz6g.vci
	 $(VCC) -f "$<" -o "$@" $(TTFFLAGS_Vrtalk) $(VCCFLAGS_Vrtalk) -sfas

$(AS_CPU_PATH)/VcFntDat/reemkz6g.ccf:$(AS_CPU_PATH)/VcFntDat/reemkz6g.vco
	 $(LINK) "$^" -o "$@" -warningLevel2 -m reemkz6g.ttf -name Vrtalk -profile "False" -vcr 4265 -sfas

$(AS_CPU_PATH)/reemkz6g.br:$(AS_CPU_PATH)/VcFntDat/reemkz6g.ccf
	 $(MODGEN) -so $(VC_STATIC_OPTIONS_Shared) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -f "$<" -o "$@" -d vcgclass -v V1.00.0 -profile False -vc "$(VCOBJECT_Vrtalk)" -b
endif

#
# Font arial
#
ifneq ($(VC_FONT_arial),1)
VC_FONT_arial=1
$(AS_CPU_PATH)/VcFntDat/arial.vco:$(AS_CPU_PATH)/VcFntDat/arial.vci
	 $(VCC) -f "$<" -o "$@" $(TTFFLAGS_Vrtalk) $(VCCFLAGS_Vrtalk) -sfas

$(AS_CPU_PATH)/VcFntDat/arial.ccf:$(AS_CPU_PATH)/VcFntDat/arial.vco
	 $(LINK) "$^" -o "$@" -warningLevel2 -m arial.ttf -name Vrtalk -profile "False" -vcr 4265 -sfas

$(AS_CPU_PATH)/arial.br:$(AS_CPU_PATH)/VcFntDat/arial.ccf
	 $(MODGEN) -so $(VC_STATIC_OPTIONS_Shared) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -f "$<" -o "$@" -d vcgclass -v V1.00.0 -profile False -vc "$(VCOBJECT_Vrtalk)" -b
endif

#
# Font arialbd
#
ifneq ($(VC_FONT_arialbd),1)
VC_FONT_arialbd=1
$(AS_CPU_PATH)/VcFntDat/arialbd.vco:$(AS_CPU_PATH)/VcFntDat/arialbd.vci
	 $(VCC) -f "$<" -o "$@" $(TTFFLAGS_Vrtalk) $(VCCFLAGS_Vrtalk) -sfas

$(AS_CPU_PATH)/VcFntDat/arialbd.ccf:$(AS_CPU_PATH)/VcFntDat/arialbd.vco
	 $(LINK) "$^" -o "$@" -warningLevel2 -m arialbd.ttf -name Vrtalk -profile "False" -vcr 4265 -sfas

$(AS_CPU_PATH)/arialbd.br:$(AS_CPU_PATH)/VcFntDat/arialbd.ccf
	 $(MODGEN) -so $(VC_STATIC_OPTIONS_Shared) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -f "$<" -o "$@" -d vcgclass -v V1.00.0 -profile False -vc "$(VCOBJECT_Vrtalk)" -b
endif

FONT_MODULES_Vrtalk=$(TEMP_PATH_ROOT_Vrtalk)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/reemkz6g.br $(TEMP_PATH_ROOT_Vrtalk)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/arial.br $(TEMP_PATH_ROOT_Vrtalk)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/arialbd.br 
