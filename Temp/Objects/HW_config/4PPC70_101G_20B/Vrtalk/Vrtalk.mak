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
# include Shared and Font Makefile (only once)
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCFntDat/Font_Vrtalk.mak
ifneq ($(VCINC),1)
	VCINC=1
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VCShared.mak
endif

DEPENDENCIES_Vrtalk=-d vcgclass -profile "False"
DEFAULT_STYLE_SHEET_Vrtalk=Source[local].StyleSheet[Color]
SHARED_MODULE=$(TEMP_PATH_ROOT_Vrtalk)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcshared.br
LFNTFLAGS_Vrtalk=-P "$(AS_PROJECT_PATH)" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)"
BDRFLAGS_Vrtalk=-P "$(AS_PROJECT_PATH)" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)"

# Local Libs
LIB_LOCAL_OBJ_Vrtalk=$(TEMP_PATH_Vrtalk)/localobj.vca

# Hardware sources
PANEL_HW_OBJECT_Vrtalk=$(TEMP_PATH_ROOT_Vrtalk)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Vrtalk/dis.Hardware.vco
PANEL_HW_VCI_Vrtalk=$(TEMP_PATH_ROOT_Vrtalk)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Vrtalk/dis.Hardware.vci
PANEL_HW_SOURCE_Vrtalk=F:/1_Automation_projects/Vrtalka/Physical/HW_config/Hardware.hw 
DIS_OBJECTS_Vrtalk=$(PANEL_HW_OBJECT_Vrtalk) $(KEYMAP_OBJECTS_Vrtalk)

# KeyMapping flags
KEYMAP_SOURCES_Vrtalk=$(AS_PROJECT_PATH)/Physical/HW_config/4PPC70_101G_20B/VC/4PPC70_101G_20B.dis 
KEYMAP_OBJECTS_Vrtalk=

# All Source Objects
FNINFO_SOURCES_Vrtalk=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Fonts/DefaultFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Fonts/Arial9px.fninfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Fonts/Arial9pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Fonts/Arial10pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Fonts/Arial12px.fninfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Fonts/Arial9pxValue.fninfo 

BMINFO_SOURCES_Vrtalk=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA1.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA2.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA3.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/NumPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/NumPad.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AcknowledgeReset.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmActive.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmBypassOFF.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmBypassON.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmInactive.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmLatched.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmNotQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Reset.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ResetAcknowledge.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Triggered.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadHor.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadVer.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/backward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/backward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/forward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/forward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/control_button_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/control_button_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/right_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/right_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/left_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/left_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ProgressBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_gradient_upside.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_gradient_downside.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/frame_header.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/EditPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/EditPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneNumPad_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadVer_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPad_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA1_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditpadQVGA2_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditPadQVGA3_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditPadVga_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditPadVga_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadHor_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneNumPad_pressed.bminfo 

BMGRP_SOURCES_Vrtalk=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AlphaPadQVGA.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/NumPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AlphaPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AlarmEvent.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AlarmState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/BypassState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AcknowledgeState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/NavigationPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/Borders.bmgrp 

PAGE_SOURCES_Vrtalk=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Pages/Startup.page 

VCS_SOURCES_Vrtalk=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/StyleSheets/Gray.vcs \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/StyleSheets/Color.vcs 

BDR_SOURCES_Vrtalk=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/Raised.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/Sunken.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/Etched.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/Bump.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/SunkenOuter.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/RaisedInner.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/Flat_black.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/Flat_grey.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/BackwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/BackwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ControlActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ControlPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/DownActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/DownPressedControl.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ForwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ForwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/GlobalAreaActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/GlobalAreaPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/MultiScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/MultiScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/MultiScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/MultiScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ProgressBarBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollLeftActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollLeftPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollRightActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollRightPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/UpActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/UpPressedControl.bdr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/FrameHeader.bdr 

TPR_SOURCES_Vrtalk=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/NumPad.tpr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/AlphaPadQVGA.tpr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/AlphaPad.tpr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/NavigationPad_ver.tpr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/NavigationPad_hor.tpr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/EditPad.tpr 

TDC_SOURCES_Vrtalk=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Trends/TrendData.tdc 

VCVK_SOURCES_Vrtalk=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/VirtualKeys.vcvk 

VCR_SOURCES_Vrtalk=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Palette.vcr 

# Runtime Object sources
VCR_OBJECT_Vrtalk=$(TEMP_PATH_Vrtalk)/vcrt.vco
VCR_SOURCE_Vrtalk=$(SRC_PATH_Vrtalk)/package.vcp
# All Source Objects END

#Panel Hardware
$(PANEL_HW_VCI_Vrtalk): $(PANEL_HW_SOURCE_Vrtalk) $(VC_LIBRARY_LIST_Vrtalk) $(KEYMAP_SOURCES_Vrtalk)
	$(VCHWPP) -f "$<" -o "$@" -n VrtalkaHMI -d Vrtalk -pal "$(PALFILE_Vrtalk)" -c "$(AS_CONFIGURATION)" -p "$(AS_PLC)" -ptemp "$(AS_TEMP_PLC)" -B "D4.26" -L "" -verbose "False" -profile "False" -hw "$(CPUHWC)" -warninglevel 2 -so $(VC_STATIC_OPTIONS_Vrtalk) -sos $(VC_STATIC_OPTIONS_Shared) -fp "$(AS_VC_PATH)/Firmware/V4.26.5/SG4" -sfas -prj "$(AS_PROJECT_PATH)" -apj "Vrtalka" -vcob "$(VCOBJECT_Vrtalk)"

$(PANEL_HW_OBJECT_Vrtalk): $(PANEL_HW_VCI_Vrtalk) $(PALFILE_Vrtalk) $(VC_LIBRARY_LIST_Vrtalk)
	$(VCC) -f "$(subst .vco,.vci,$@)" -o "$@" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -k "$(VCVK_SOURCES_Vrtalk)" $(VCCFLAGS_Vrtalk) -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


# Pages
PAGE_OBJECTS_Vrtalk = $(addprefix $(TEMP_PATH_Vrtalk)/page., $(notdir $(PAGE_SOURCES_Vrtalk:.page=.vco)))

$(TEMP_PATH_Vrtalk)/page.Startup.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Pages/Startup.page $(VC_LANGUAGES_Vrtalk)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk) -P "$(AS_PROJECT_PATH)" -ds "$(SRC_PATH_Vrtalk)/StyleSheets/Color.vcs" -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


#Pages END




# Stylesheets
VCS_OBJECTS_Vrtalk = $(addprefix $(TEMP_PATH_Vrtalk)/vcs., $(notdir $(VCS_SOURCES_Vrtalk:.vcs=.vco)))

$(TEMP_PATH_Vrtalk)/vcs.Gray.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/StyleSheets/Gray.vcs
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk) -P "$(AS_PROJECT_PATH)" -ds $(DEFAULT_STYLE_SHEET_Vrtalk) -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/vcs.Color.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/StyleSheets/Color.vcs
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk) -P "$(AS_PROJECT_PATH)" -ds $(DEFAULT_STYLE_SHEET_Vrtalk) -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


#Stylesheets END




# Virtual Keys
VCVK_OBJECTS_Vrtalk = $(addprefix $(TEMP_PATH_Vrtalk)/vcvk., $(notdir $(VCVK_SOURCES_Vrtalk:.vcvk=.vco)))

$(TEMP_PATH_Vrtalk)/vcvk.VirtualKeys.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/VirtualKeys.vcvk
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas

$(VCVK_OBJECTS_Vrtalk): $(VC_LANGUAGES_Vrtalk)

#Virtual Keys END




# Touch Pads
TPR_OBJECTS_Vrtalk = $(addprefix $(TEMP_PATH_Vrtalk)/tpr., $(notdir $(TPR_SOURCES_Vrtalk:.tpr=.vco)))

$(TEMP_PATH_Vrtalk)/tpr.NumPad.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/NumPad.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk) -prj "F:/1_Automation_projects/Vrtalka/Logical/VrtalkaHMI" -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/tpr.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/AlphaPadQVGA.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk) -prj "F:/1_Automation_projects/Vrtalka/Logical/VrtalkaHMI" -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/tpr.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/AlphaPad.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk) -prj "F:/1_Automation_projects/Vrtalka/Logical/VrtalkaHMI" -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/tpr.NavigationPad_ver.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/NavigationPad_ver.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk) -prj "F:/1_Automation_projects/Vrtalka/Logical/VrtalkaHMI" -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/tpr.NavigationPad_hor.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/NavigationPad_hor.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk) -prj "F:/1_Automation_projects/Vrtalka/Logical/VrtalkaHMI" -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/tpr.EditPad.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/EditPad.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk) -prj "F:/1_Automation_projects/Vrtalka/Logical/VrtalkaHMI" -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


#Touch Pads END




# BitmapGroups
BMGRP_OBJECTS_Vrtalk = $(addprefix $(TEMP_PATH_Vrtalk)/bmgrp., $(notdir $(BMGRP_SOURCES_Vrtalk:.bmgrp=.vco)))

$(TEMP_PATH_Vrtalk)/bmgrp.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AlphaPadQVGA.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bmgrp.NumPad.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/NumPad.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bmgrp.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AlphaPad.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bmgrp.AlarmEvent.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AlarmEvent.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bmgrp.AlarmState.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AlarmState.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bmgrp.BypassState.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/BypassState.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bmgrp.AcknowledgeState.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AcknowledgeState.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bmgrp.NavigationPad.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/NavigationPad.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bmgrp.Borders.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/Borders.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


#BitmapGroups END




# Bitmaps
BMINFO_OBJECTS_Vrtalk = $(addprefix $(TEMP_PATH_Vrtalk)/bminfo., $(notdir $(BMINFO_SOURCES_Vrtalk:.bminfo=.vco)))

$(TEMP_PATH_Vrtalk)/bminfo.AlphaPadQVGA1.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA1.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA1.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.AlphaPadQVGA2.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA2.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA2.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.AlphaPadQVGA3.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA3.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA3.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.AlphaPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadVGA_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.AlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA2_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.AlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA3_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.AlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA1_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.AlphaPadVGA.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadVGA.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.NumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/NumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/NumPad_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.NumPad.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/NumPad.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/NumPad.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.AcknowledgeReset.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AcknowledgeReset.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AcknowledgeReset.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.AlarmActive.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmActive.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmActive.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.AlarmBypassOFF.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmBypassOFF.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmBypassOFF.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.AlarmBypassON.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmBypassON.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmBypassON.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.AlarmInactive.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmInactive.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmInactive.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.AlarmLatched.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmLatched.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmLatched.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.AlarmNotQuit.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmNotQuit.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmNotQuit.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.AlarmQuit.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmQuit.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmQuit.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.Reset.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Reset.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Reset.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.ResetAcknowledge.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ResetAcknowledge.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ResetAcknowledge.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.Triggered.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Triggered.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Triggered.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.ListPadHor.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadHor.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadHor.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.ListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadHor_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.ListPadVer.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadVer.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadVer.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.ListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadVer_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.backward_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/backward_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/backward_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.backward_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/backward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/backward_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.global_area_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.global_area_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.forward_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/forward_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/forward_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.forward_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/forward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/forward_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.control_button_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/control_button_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/control_button_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.control_button_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/control_button_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/control_button_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.right_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/right_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/right_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.right_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/right_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/right_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.left_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/left_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/left_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.left_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/left_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/left_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.up_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.up_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.down_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.down_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.multi_up_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_up_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_up_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.multi_up_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_up_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.multi_down_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_down_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_down_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.multi_down_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_down_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.ProgressBorder.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ProgressBorder.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ProgressBorder.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.down_active_control.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_active_control.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_active_control.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.down_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_pressed_control.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.up_active_control.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_active_control.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_active_control.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.global_area_gradient_upside.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_gradient_upside.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_gradient_upside.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.global_area_gradient_downside.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_gradient_downside.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_gradient_downside.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.frame_header.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/frame_header.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/frame_header.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.up_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_pressed_control.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.EditPadVGA.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/EditPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/EditPadVGA.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.EditPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/EditPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/EditPadVGA_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.zuneNumPad_released.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneNumPad_released.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneNumPad_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.zuneListPadVer_released.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadVer_released.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadVer_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.zuneAlphaPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPad_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.zuneAlphaPad_released.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPad_released.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPad_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.zuneAlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA1_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.zuneAlphaPadQVGA1_released.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA1_released.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA1_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.zuneAlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA2_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.zuneAlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA3_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.zuneEditpadQVGA2_released.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditpadQVGA2_released.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditpadQVGA2_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.zuneEditPadQVGA3_released.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditPadQVGA3_released.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditPadQVGA3_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.zuneEditPadVga_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditPadVga_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditPadVga_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.zuneEditPadVga_released.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditPadVga_released.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditPadVga_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.zuneListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadHor_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.zuneListPadHor_released.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadHor_released.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadHor_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.zuneListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadVer_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


$(TEMP_PATH_Vrtalk)/bminfo.zuneNumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneNumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneNumPad_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


#Bitmaps END




# Trend Data Configuration
TDC_OBJECTS_Vrtalk = $(addprefix $(TEMP_PATH_Vrtalk)/tdc., $(notdir $(TDC_SOURCES_Vrtalk:.tdc=.vco)))

$(TEMP_PATH_Vrtalk)/tdc.TrendData.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Trends/TrendData.tdc
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtalk)" $(VCCFLAGS_Vrtalk)  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas


#Trend Data Configuration END


#
# Borders
#
BDR_SOURCES_Vrtalk=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/Raised.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/Sunken.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/Etched.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/Bump.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/SunkenOuter.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/RaisedInner.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/Flat_black.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/Flat_grey.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/BackwardActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/BackwardPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ControlActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ControlPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/DownActiveControl.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/DownPressedControl.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ForwardActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ForwardPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/GlobalAreaActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/GlobalAreaPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/MultiScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/MultiScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/MultiScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/MultiScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ProgressBarBorder.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollLeftActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollLeftPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollRightActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollRightPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/UpActiveControl.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/UpPressedControl.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/FrameHeader.bdr 
BDR_OBJECTS_Vrtalk=$(TEMP_PATH_Vrtalk)/bdr.Bordermanager.vco
$(TEMP_PATH_Vrtalk)/bdr.Bordermanager.vco: $(BDR_SOURCES_Vrtalk)
	$(VCC) -f "$<" -o "$@" -pkg "$(SRC_PATH_Vrtalk)" $(BDRFLAGS_Vrtalk) $(VCCFLAGS_Vrtalk) -p Vrtalk$(SRC_PATH_Vrtalk)
#
# Logical fonts
#
$(TEMP_PATH_Vrtalk)/lfnt.en.vco: $(TEMP_PATH_Vrtalk)/en.lfnt $(VC_LANGUAGES_Vrtalk)
	 $(VCC) -f "$<" -o "$@" $(LFNTFLAGS_Vrtalk) $(VCCFLAGS_Vrtalk) -p Vrtalk -sfas
$(TEMP_PATH_Vrtalk)/lfnt.de.vco: $(TEMP_PATH_Vrtalk)/de.lfnt $(VC_LANGUAGES_Vrtalk)
	 $(VCC) -f "$<" -o "$@" $(LFNTFLAGS_Vrtalk) $(VCCFLAGS_Vrtalk) -p Vrtalk -sfas
LFNT_OBJECTS_Vrtalk=$(TEMP_PATH_Vrtalk)/lfnt.en.vco $(TEMP_PATH_Vrtalk)/lfnt.de.vco 

#Runtime Object
$(VCR_OBJECT_Vrtalk) : $(VCR_SOURCE_Vrtalk)
	$(VCC) -f "$<" -o "$@" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -sl en $(VCCFLAGS_Vrtalk) -rt  -p Vrtalk -so $(VC_STATIC_OPTIONS_Vrtalk) -vcr 4265 -sfas
# Local resources Library rules
LIB_LOCAL_RES_Vrtalk=$(TEMP_PATH_Vrtalk)/localres.vca
$(LIB_LOCAL_RES_Vrtalk) : $(TEMP_PATH_Vrtalk)/Vrtalk02.ccf

# Bitmap Library rules
LIB_BMP_RES_Vrtalk=$(TEMP_PATH_Vrtalk)/bmpres.vca
$(LIB_BMP_RES_Vrtalk) : $(TEMP_PATH_Vrtalk)/Vrtalk03.ccf
$(BMGRP_OBJECTS_Vrtalk) : $(PALFILE_Vrtalk) $(VC_LANGUAGES_Vrtalk)
$(BMINFO_OBJECTS_Vrtalk) : $(PALFILE_Vrtalk)

BUILD_FILE_Vrtalk=$(TEMP_PATH_Vrtalk)/BuildFiles.arg
$(BUILD_FILE_Vrtalk) : BUILD_FILE_CLEAN_Vrtalk $(BUILD_SOURCES_Vrtalk)
BUILD_FILE_CLEAN_Vrtalk:
	$(RM) /F /Q "$(BUILD_FILE_Vrtalk)" 2>nul
#All Modules depending to this project
PROJECT_MODULES_Vrtalk=$(AS_CPU_PATH)/Vrtalk01.br $(AS_CPU_PATH)/Vrtalk02.br $(AS_CPU_PATH)/Vrtalk03.br $(FONT_MODULES_Vrtalk) $(SHARED_MODULE)

# General Build rules

$(TARGET_FILE_Vrtalk): $(PROJECT_MODULES_Vrtalk) $(TEMP_PATH_Vrtalk)/Vrtalk.prj
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Vrtalk) -fw "$(VCFIRMWAREPATH)" -m $(VCSTPOST) -v V1.00.0 -f "$(TEMP_PATH_Vrtalk)/Vrtalk.prj" -o "$@" -vc "$(VCOBJECT_Vrtalk)" $(DEPENDENCIES_Vrtalk) $(addprefix -d ,$(notdir $(PROJECT_MODULES_Vrtalk:.br=)))

$(AS_CPU_PATH)/Vrtalk01.br: $(TEMP_PATH_Vrtalk)/Vrtalk01.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Vrtalk) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -v V1.00.0 -b -vc "$(VCOBJECT_Vrtalk)" -f "$<" -o "$@" $(DEPENDENCIES_Vrtalk)

$(AS_CPU_PATH)/Vrtalk02.br: $(TEMP_PATH_Vrtalk)/Vrtalk02.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Vrtalk) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -v V1.00.0 -b -vc "$(VCOBJECT_Vrtalk)" -f "$<" -o "$@" $(DEPENDENCIES_Vrtalk)

$(AS_CPU_PATH)/Vrtalk03.br: $(TEMP_PATH_Vrtalk)/Vrtalk03.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Vrtalk) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -v V1.00.0 -b -vc "$(VCOBJECT_Vrtalk)" -f "$<" -o "$@" $(DEPENDENCIES_Vrtalk)

# General Build rules END
$(LIB_LOCAL_OBJ_Vrtalk) : $(TEMP_PATH_Vrtalk)/Vrtalk01.ccf

# Main Module
$(TEMP_PATH_ROOT_Vrtalk)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Vrtalk.vcm:
$(TEMP_PATH_Vrtalk)/Vrtalk.prj: $(TEMP_PATH_ROOT_Vrtalk)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Vrtalk.vcm
	$(VCDEP) -m "$(TEMP_PATH_ROOT_Vrtalk)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Vrtalk.vcm" -s "$(AS_CPU_PATH)/VCShared/Shared.vcm" -p "$(AS_PATH)/AS/VC/Firmware" -c "$(AS_CPU_PATH)" -fw "$(VCFIRMWAREPATH)" -hw "$(CPUHWC)" -so $(VC_STATIC_OPTIONS_Vrtalk) -o Vrtalk -proj Vrtalk
	$(VCPL) $(notdir $(PROJECT_MODULES_Vrtalk:.br=,4)) Vrtalk,2 -o "$@" -p Vrtalk -vc "Vrtalk" -verbose "False" -fl "$(TEMP_PATH_ROOT_Vrtalk)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Vrtalk.vcm" -vcr "$(VCR_SOURCE_Vrtalk)" -prj "$(AS_PROJECT_PATH)" -warningLevel2 -sfas

# 01 Module

DEL_TARGET01_LFL_Vrtalk=$(TEMP_PATH_Vrtalk)\Vrtalk01.ccf.lfl
$(TEMP_PATH_Vrtalk)/Vrtalk01.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_Vrtalk) $(TEMP_PATH_Vrtalk)/Vrtalk03.ccf $(LIB_LOCAL_RES_Vrtalk) $(TEMP_PATH_Vrtalk)/Vrtalk02.ccf $(DIS_OBJECTS_Vrtalk) $(PAGE_OBJECTS_Vrtalk) $(VCS_OBJECTS_Vrtalk) $(VCVK_OBJECTS_Vrtalk) $(VCRT_OBJECTS_Vrtalk) $(TPR_OBJECTS_Vrtalk) $(TXTGRP_OBJECTS_Vrtalk) $(LAYER_OBJECTS_Vrtalk) $(VCR_OBJECT_Vrtalk) $(TDC_OBJECTS_Vrtalk) $(TRD_OBJECTS_Vrtalk) $(TRE_OBJECTS_Vrtalk) $(PRC_OBJECTS_Vrtalk) $(SCR_OBJECTS_Vrtalk)
	-@CMD /Q /C if exist "$(DEL_TARGET01_LFL_Vrtalk)" DEL /F /Q "$(DEL_TARGET01_LFL_Vrtalk)" 2>nul
	@$(VCFLGEN) "$@.lfl" "$(LIB_SHARED)" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(LIB_BMP_RES_Vrtalk)" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(LIB_LOCAL_RES_Vrtalk)" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(DIS_OBJECTS_Vrtalk:.vco=.vco|)" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .page -vcp "$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Package.vcp" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(VCS_OBJECTS_Vrtalk:.vco=.vco|)" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .vcvk -vcp "$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Package.vcp" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(VCRT_OBJECTS_Vrtalk:.vco=.vco|)" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(TPR_OBJECTS_Vrtalk:.vco=.vco|)" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .txtgrp -vcp "$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Package.vcp" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .layer -vcp "$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Package.vcp" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(VCR_OBJECT_Vrtalk:.vco=.vco|)" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .tdc -vcp "$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Package.vcp" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .trd -vcp "$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Package.vcp" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(SCR_OBJECTS_Vrtalk:.vco=.vco|)" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	$(LINK) "$@.lfl" -o "$@" -p Vrtalk -lib "$(LIB_LOCAL_OBJ_Vrtalk)" -P "$(AS_PROJECT_PATH)" -m "local objects" -profile "False" -warningLevel2 -vcr 4265 -sfas
# 01 Module END

# 02 Module

DEL_TARGET02_LFL_Vrtalk=$(TEMP_PATH_Vrtalk)\Vrtalk02.ccf.lfl
$(TEMP_PATH_Vrtalk)/Vrtalk02.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_Vrtalk) $(TEMP_PATH_Vrtalk)/Vrtalk03.ccf $(BDR_OBJECTS_Vrtalk) $(LFNT_OBJECTS_Vrtalk) $(CLM_OBJECTS_Vrtalk)
	-@CMD /Q /C if exist "$(DEL_TARGET02_LFL_Vrtalk)" DEL /F /Q "$(DEL_TARGET02_LFL_Vrtalk)" 2>nul
	@$(VCFLGEN) "$@.lfl" "$(LIB_SHARED)" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(LIB_BMP_RES_Vrtalk)" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(BDR_OBJECTS_Vrtalk:.vco=.vco|)" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(LFNT_OBJECTS_Vrtalk:.vco=.vco|)" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(CLM_OBJECTS_Vrtalk:.vco=.vco|)" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	$(LINK) "$@.lfl" -o "$@" -p Vrtalk -lib "$(LIB_LOCAL_RES_Vrtalk)" -P "$(AS_PROJECT_PATH)" -m "local resources" -profile "False" -warningLevel2 -vcr 4265 -sfas
# 02 Module END

# 03 Module

DEL_TARGET03_LFL_Vrtalk=$(TEMP_PATH_Vrtalk)\Vrtalk03.ccf.lfl
$(TEMP_PATH_Vrtalk)/Vrtalk03.ccf: $(LIB_SHARED) $(SHARED_CCF) $(BMGRP_OBJECTS_Vrtalk) $(BMINFO_OBJECTS_Vrtalk) $(PALFILE_Vrtalk)
	-@CMD /Q /C if exist "$(DEL_TARGET03_LFL_Vrtalk)" DEL /F /Q "$(DEL_TARGET03_LFL_Vrtalk)" 2>nul
	@$(VCFLGEN) "$@.lfl" "$(LIB_SHARED)" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .bmgrp -vcp "$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Package.vcp" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .bminfo -vcp "$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Package.vcp" -temp "$(TEMP_PATH_Vrtalk)" -prj "$(PRJ_PATH_Vrtalk)" -sfas
	$(LINK) "$@.lfl" -o "$@" -p Vrtalk -lib "$(LIB_BMP_RES_Vrtalk)" -P "$(AS_PROJECT_PATH)" -m "bitmap resources" -profile "False" -warningLevel2 -vcr 4265 -sfas
# 03 Module END

