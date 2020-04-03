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
PALFILE_Vrtal1=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Palette.vcr
VCCFLAGS_Vrtal1=-server -proj Vrtal1 -vc "$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/VCObject.vc" -prj_path "$(AS_PROJECT_PATH)" -temp_path "$(AS_TEMP_PATH)" -cfg $(AS_CONFIGURATION) -plc $(AS_PLC) -plctemp $(AS_TEMP_PLC) -cpu_path "$(AS_CPU_PATH)"
VCFIRMWARE=4.26.5
VCFIRMWAREPATH=$(AS_VC_PATH)/Firmware/V4.26.5/SG4
VCOBJECT_Vrtal1=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/VCObject.vc
VCSTARTUP="vcstart.br"
VCLOD="vclod.br"
VCSTPOST="vcstpost.br"
TARGET_FILE_Vrtal1=$(AS_CPU_PATH)/Vrtal1.br
OBJ_SCOPE_Vrtal1=
PRJ_PATH_Vrtal1=$(AS_PROJECT_PATH)
SRC_PATH_Vrtal1=$(AS_PROJECT_PATH)/Logical/$(OBJ_SCOPE_Vrtal1)/VrtalkaHMI
TEMP_PATH_Vrtal1=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Vrtal1
TEMP_PATH_Shared=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared
TEMP_PATH_ROOT_Vrtal1=$(AS_TEMP_PATH)
VC_LIBRARY_LIST_Vrtal1=$(TEMP_PATH_Vrtal1)/libraries.vci
VC_XREF_BUILDFILE_Vrtal1=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.build
VC_XREF_CLEANFILE=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.clean
VC_LANGUAGES_Vrtal1=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr
CPUHWC="$(TEMP_PATH_Vrtal1)/cpuhwc.vci"
VC_STATIC_OPTIONS_Vrtal1="$(TEMP_PATH_Vrtal1)/vcStaticOptions.xml"
VC_STATIC_OPTIONS_Shared="$(TEMP_PATH_Shared)/vcStaticOptions.xml"
TTFFLAGS_Vrtal1= -P "$(AS_PROJECT_PATH)" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo"

#
# Font reemkz6g
#
ifneq ($(VC_FONT_reemkz6g),1)
VC_FONT_reemkz6g=1
$(AS_CPU_PATH)/VcFntDat/reemkz6g.vco:$(AS_CPU_PATH)/VcFntDat/reemkz6g.vci
	 $(VCC) -f "$<" -o "$@" $(TTFFLAGS_Vrtal1) $(VCCFLAGS_Vrtal1) -sfas

$(AS_CPU_PATH)/VcFntDat/reemkz6g.ccf:$(AS_CPU_PATH)/VcFntDat/reemkz6g.vco
	 $(LINK) "$^" -o "$@" -warningLevel2 -m reemkz6g.ttf -name Vrtal1 -profile "False" -vcr 4265 -sfas

$(AS_CPU_PATH)/reemkz6g.br:$(AS_CPU_PATH)/VcFntDat/reemkz6g.ccf
	 $(MODGEN) -so $(VC_STATIC_OPTIONS_Shared) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -f "$<" -o "$@" -d vcgclass -v V1.00.0 -profile False -vc "$(VCOBJECT_Vrtal1)" -b
endif

#
# Font arial
#
ifneq ($(VC_FONT_arial),1)
VC_FONT_arial=1
$(AS_CPU_PATH)/VcFntDat/arial.vco:$(AS_CPU_PATH)/VcFntDat/arial.vci
	 $(VCC) -f "$<" -o "$@" $(TTFFLAGS_Vrtal1) $(VCCFLAGS_Vrtal1) -sfas

$(AS_CPU_PATH)/VcFntDat/arial.ccf:$(AS_CPU_PATH)/VcFntDat/arial.vco
	 $(LINK) "$^" -o "$@" -warningLevel2 -m arial.ttf -name Vrtal1 -profile "False" -vcr 4265 -sfas

$(AS_CPU_PATH)/arial.br:$(AS_CPU_PATH)/VcFntDat/arial.ccf
	 $(MODGEN) -so $(VC_STATIC_OPTIONS_Shared) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -f "$<" -o "$@" -d vcgclass -v V1.00.0 -profile False -vc "$(VCOBJECT_Vrtal1)" -b
endif

#
# Font arialbd
#
ifneq ($(VC_FONT_arialbd),1)
VC_FONT_arialbd=1
$(AS_CPU_PATH)/VcFntDat/arialbd.vco:$(AS_CPU_PATH)/VcFntDat/arialbd.vci
	 $(VCC) -f "$<" -o "$@" $(TTFFLAGS_Vrtal1) $(VCCFLAGS_Vrtal1) -sfas

$(AS_CPU_PATH)/VcFntDat/arialbd.ccf:$(AS_CPU_PATH)/VcFntDat/arialbd.vco
	 $(LINK) "$^" -o "$@" -warningLevel2 -m arialbd.ttf -name Vrtal1 -profile "False" -vcr 4265 -sfas

$(AS_CPU_PATH)/arialbd.br:$(AS_CPU_PATH)/VcFntDat/arialbd.ccf
	 $(MODGEN) -so $(VC_STATIC_OPTIONS_Shared) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -f "$<" -o "$@" -d vcgclass -v V1.00.0 -profile False -vc "$(VCOBJECT_Vrtal1)" -b
endif

FONT_MODULES_Vrtal1=$(TEMP_PATH_ROOT_Vrtal1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/reemkz6g.br $(TEMP_PATH_ROOT_Vrtal1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/arial.br $(TEMP_PATH_ROOT_Vrtal1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/arialbd.br 
