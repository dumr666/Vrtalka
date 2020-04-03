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
# include Shared and Font Makefile (only once)
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCFntDat/Font_Vrtal1.mak
ifneq ($(VCINC),1)
	VCINC=1
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VCShared.mak
endif

DEPENDENCIES_Vrtal1=-d vcgclass -profile "False"
DEFAULT_STYLE_SHEET_Vrtal1=Source[local].StyleSheet[Color]
SHARED_MODULE=$(TEMP_PATH_ROOT_Vrtal1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcshared.br
LFNTFLAGS_Vrtal1=-P "$(AS_PROJECT_PATH)" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)"
BDRFLAGS_Vrtal1=-P "$(AS_PROJECT_PATH)" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)"

# Local Libs
LIB_LOCAL_OBJ_Vrtal1=$(TEMP_PATH_Vrtal1)/localobj.vca

# Hardware sources
PANEL_HW_OBJECT_Vrtal1=$(TEMP_PATH_ROOT_Vrtal1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Vrtal1/dis.Hardware.vco
PANEL_HW_VCI_Vrtal1=$(TEMP_PATH_ROOT_Vrtal1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Vrtal1/dis.Hardware.vci
PANEL_HW_SOURCE_Vrtal1=F:/1_Automation_projects/Vrtalka/Physical/HW_config/Hardware.hw 
DIS_OBJECTS_Vrtal1=$(PANEL_HW_OBJECT_Vrtal1) $(KEYMAP_OBJECTS_Vrtal1)

# KeyMapping flags
$(TEMP_PATH_Vrtal1)/dis.PS2-Keyboard1.vco: $(AS_PROJECT_PATH)/Physical/SimConf/4PPC70_101G_20B/VC/PS2-Keyboard1.dis
	$(VCHWPP) -f "$(PANEL_HW_SOURCE_Vrtal1)" -o "$(subst .vco,.vci,$(TEMP_PATH_Vrtal1)/dis.PS2-Keyboard1.vco)" -n VrtalkaHMI -d Vrtal1 -pal "$(PALFILE_Vrtal1)" -c "$(AS_CONFIGURATION)" -p "$(AS_PLC)" -ptemp "$(AS_TEMP_PLC)" -B "D4.26" -L "" -hw "$(CPUHWC)" -warninglevel 2 -so $(VC_STATIC_OPTIONS_Vrtal1) -sos $(VC_STATIC_OPTIONS_Shared) -keyboard "$(AS_PROJECT_PATH)/Physical/SimConf/4PPC70_101G_20B/VC/PS2-Keyboard1.dis" -fp "$(AS_VC_PATH)/Firmware/V4.26.5/SG4" -prj "$(AS_PROJECT_PATH)" -apj "Vrtalka" -sfas -vcob "$(VCOBJECT_Vrtal1)"
	$(VCC) -f "$(subst .vco,.vci,$@)" -o "$@" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -k "$(VCVK_SOURCES_Vrtal1)" $(VCCFLAGS_Vrtal1) -p Vrtal1 -sfas

KEYMAP_SOURCES_Vrtal1=$(AS_PROJECT_PATH)/Physical/SimConf/4PPC70_101G_20B/VC/PS2-Keyboard1.dis 
KEYMAP_OBJECTS_Vrtal1=$(TEMP_PATH_Vrtal1)/dis.PS2-Keyboard1.vco 

# All Source Objects
FNINFO_SOURCES_Vrtal1=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Fonts/DefaultFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Fonts/Arial9px.fninfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Fonts/Arial9pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Fonts/Arial10pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Fonts/Arial12px.fninfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Fonts/Arial9pxValue.fninfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Fonts/Font_1.fninfo 

BMINFO_SOURCES_Vrtal1=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA1.bminfo \
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
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneNumPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Vozicek.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Rail_vozicka.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Agregat.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Header_PS.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Home_screen.bminfo \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/settings_page.bminfo 

BMGRP_SOURCES_Vrtal1=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AlphaPadQVGA.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/NumPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AlphaPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AlarmEvent.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AlarmState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/BypassState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AcknowledgeState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/NavigationPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/Borders.bmgrp 

PAGE_SOURCES_Vrtal1=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Pages/Default.page \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Pages/Service.page 

LAYER_SOURCES_Vrtal1=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Layers/BackgroundLayer.layer 

VCS_SOURCES_Vrtal1=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/StyleSheets/Gray.vcs \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/StyleSheets/Color.vcs 

BDR_SOURCES_Vrtal1=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/Raised.bdr \
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

TPR_SOURCES_Vrtal1=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/NumPad.tpr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/AlphaPadQVGA.tpr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/AlphaPad.tpr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/NavigationPad_ver.tpr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/NavigationPad_hor.tpr \
	$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/EditPad.tpr 

TDC_SOURCES_Vrtal1=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Trends/TrendData.tdc 

PRC_SOURCES_Vrtal1=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Processes/Process_1.prc 

VCVK_SOURCES_Vrtal1=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/VirtualKeys.vcvk 

VCR_SOURCES_Vrtal1=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Palette.vcr 

# Runtime Object sources
VCR_OBJECT_Vrtal1=$(TEMP_PATH_Vrtal1)/vcrt.vco
VCR_SOURCE_Vrtal1=$(SRC_PATH_Vrtal1)/package.vcp
# All Source Objects END

#Panel Hardware
$(PANEL_HW_VCI_Vrtal1): $(PANEL_HW_SOURCE_Vrtal1) $(VC_LIBRARY_LIST_Vrtal1) $(KEYMAP_SOURCES_Vrtal1)
	$(VCHWPP) -f "$<" -o "$@" -n VrtalkaHMI -d Vrtal1 -pal "$(PALFILE_Vrtal1)" -c "$(AS_CONFIGURATION)" -p "$(AS_PLC)" -ptemp "$(AS_TEMP_PLC)" -B "D4.26" -L "" -verbose "False" -profile "False" -hw "$(CPUHWC)" -warninglevel 2 -so $(VC_STATIC_OPTIONS_Vrtal1) -sos $(VC_STATIC_OPTIONS_Shared) -fp "$(AS_VC_PATH)/Firmware/V4.26.5/SG4" -sfas -prj "$(AS_PROJECT_PATH)" -apj "Vrtalka" -vcob "$(VCOBJECT_Vrtal1)"

$(PANEL_HW_OBJECT_Vrtal1): $(PANEL_HW_VCI_Vrtal1) $(PALFILE_Vrtal1) $(VC_LIBRARY_LIST_Vrtal1)
	$(VCC) -f "$(subst .vco,.vci,$@)" -o "$@" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -k "$(VCVK_SOURCES_Vrtal1)" $(VCCFLAGS_Vrtal1) -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


# Pages
PAGE_OBJECTS_Vrtal1 = $(addprefix $(TEMP_PATH_Vrtal1)/page., $(notdir $(PAGE_SOURCES_Vrtal1:.page=.vco)))

$(TEMP_PATH_Vrtal1)/page.Default.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Pages/Default.page $(VC_LANGUAGES_Vrtal1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1) -P "$(AS_PROJECT_PATH)" -ds "$(SRC_PATH_Vrtal1)/StyleSheets/Color.vcs" -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/page.Service.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Pages/Service.page $(VC_LANGUAGES_Vrtal1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1) -P "$(AS_PROJECT_PATH)" -ds "$(SRC_PATH_Vrtal1)/StyleSheets/Color.vcs" -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


#Pages END




# Stylesheets
VCS_OBJECTS_Vrtal1 = $(addprefix $(TEMP_PATH_Vrtal1)/vcs., $(notdir $(VCS_SOURCES_Vrtal1:.vcs=.vco)))

$(TEMP_PATH_Vrtal1)/vcs.Gray.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/StyleSheets/Gray.vcs
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1) -P "$(AS_PROJECT_PATH)" -ds $(DEFAULT_STYLE_SHEET_Vrtal1) -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/vcs.Color.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/StyleSheets/Color.vcs
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1) -P "$(AS_PROJECT_PATH)" -ds $(DEFAULT_STYLE_SHEET_Vrtal1) -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


#Stylesheets END




# Layers
LAYER_OBJECTS_Vrtal1 = $(addprefix $(TEMP_PATH_Vrtal1)/layer., $(notdir $(LAYER_SOURCES_Vrtal1:.layer=.vco)))

$(TEMP_PATH_Vrtal1)/layer.BackgroundLayer.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Layers/BackgroundLayer.layer $(VC_LANGUAGES_Vrtal1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1) -ds $(DEFAULT_STYLE_SHEET_Vrtal1) -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


#Layers END




# Virtual Keys
VCVK_OBJECTS_Vrtal1 = $(addprefix $(TEMP_PATH_Vrtal1)/vcvk., $(notdir $(VCVK_SOURCES_Vrtal1:.vcvk=.vco)))

$(TEMP_PATH_Vrtal1)/vcvk.VirtualKeys.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/VirtualKeys.vcvk
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas

$(VCVK_OBJECTS_Vrtal1): $(VC_LANGUAGES_Vrtal1)

#Virtual Keys END




# Touch Pads
TPR_OBJECTS_Vrtal1 = $(addprefix $(TEMP_PATH_Vrtal1)/tpr., $(notdir $(TPR_SOURCES_Vrtal1:.tpr=.vco)))

$(TEMP_PATH_Vrtal1)/tpr.NumPad.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/NumPad.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1) -prj "F:/1_Automation_projects/Vrtalka/Logical/VrtalkaHMI" -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/tpr.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/AlphaPadQVGA.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1) -prj "F:/1_Automation_projects/Vrtalka/Logical/VrtalkaHMI" -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/tpr.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/AlphaPad.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1) -prj "F:/1_Automation_projects/Vrtalka/Logical/VrtalkaHMI" -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/tpr.NavigationPad_ver.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/NavigationPad_ver.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1) -prj "F:/1_Automation_projects/Vrtalka/Logical/VrtalkaHMI" -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/tpr.NavigationPad_hor.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/NavigationPad_hor.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1) -prj "F:/1_Automation_projects/Vrtalka/Logical/VrtalkaHMI" -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/tpr.EditPad.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/TouchPads/EditPad.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1) -prj "F:/1_Automation_projects/Vrtalka/Logical/VrtalkaHMI" -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


#Touch Pads END




# BitmapGroups
BMGRP_OBJECTS_Vrtal1 = $(addprefix $(TEMP_PATH_Vrtal1)/bmgrp., $(notdir $(BMGRP_SOURCES_Vrtal1:.bmgrp=.vco)))

$(TEMP_PATH_Vrtal1)/bmgrp.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AlphaPadQVGA.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bmgrp.NumPad.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/NumPad.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bmgrp.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AlphaPad.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bmgrp.AlarmEvent.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AlarmEvent.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bmgrp.AlarmState.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AlarmState.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bmgrp.BypassState.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/BypassState.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bmgrp.AcknowledgeState.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/AcknowledgeState.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bmgrp.NavigationPad.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/NavigationPad.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bmgrp.Borders.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/BitmapGroups/Borders.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


#BitmapGroups END




# Bitmaps
BMINFO_OBJECTS_Vrtal1 = $(addprefix $(TEMP_PATH_Vrtal1)/bminfo., $(notdir $(BMINFO_SOURCES_Vrtal1:.bminfo=.vco)))

$(TEMP_PATH_Vrtal1)/bminfo.AlphaPadQVGA1.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA1.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA1.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.AlphaPadQVGA2.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA2.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA2.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.AlphaPadQVGA3.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA3.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA3.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.AlphaPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadVGA_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.AlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA2_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.AlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA3_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.AlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadQVGA1_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.AlphaPadVGA.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlphaPadVGA.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.NumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/NumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/NumPad_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.NumPad.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/NumPad.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/NumPad.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.AcknowledgeReset.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AcknowledgeReset.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AcknowledgeReset.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.AlarmActive.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmActive.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmActive.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.AlarmBypassOFF.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmBypassOFF.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmBypassOFF.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.AlarmBypassON.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmBypassON.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmBypassON.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.AlarmInactive.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmInactive.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmInactive.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.AlarmLatched.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmLatched.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmLatched.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.AlarmNotQuit.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmNotQuit.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmNotQuit.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.AlarmQuit.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmQuit.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/AlarmQuit.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.Reset.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Reset.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Reset.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.ResetAcknowledge.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ResetAcknowledge.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ResetAcknowledge.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.Triggered.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Triggered.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Triggered.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.ListPadHor.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadHor.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadHor.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.ListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadHor_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.ListPadVer.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadVer.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadVer.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.ListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ListPadVer_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.backward_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/backward_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/backward_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.backward_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/backward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/backward_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.global_area_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.global_area_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.forward_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/forward_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/forward_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.forward_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/forward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/forward_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.control_button_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/control_button_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/control_button_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.control_button_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/control_button_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/control_button_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.right_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/right_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/right_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.right_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/right_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/right_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.left_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/left_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/left_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.left_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/left_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/left_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.up_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.up_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.down_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.down_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.multi_up_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_up_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_up_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.multi_up_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_up_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.multi_down_active.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_down_active.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_down_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.multi_down_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/multi_down_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.ProgressBorder.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ProgressBorder.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/ProgressBorder.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.down_active_control.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_active_control.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_active_control.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.down_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/down_pressed_control.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.up_active_control.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_active_control.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_active_control.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.global_area_gradient_upside.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_gradient_upside.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_gradient_upside.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.global_area_gradient_downside.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_gradient_downside.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/global_area_gradient_downside.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.frame_header.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/frame_header.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/frame_header.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.up_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/up_pressed_control.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.EditPadVGA.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/EditPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/EditPadVGA.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.EditPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/EditPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/EditPadVGA_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.zuneNumPad_released.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneNumPad_released.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneNumPad_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.zuneListPadVer_released.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadVer_released.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadVer_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.zuneAlphaPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPad_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.zuneAlphaPad_released.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPad_released.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPad_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.zuneAlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA1_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.zuneAlphaPadQVGA1_released.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA1_released.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA1_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.zuneAlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA2_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.zuneAlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneAlphaPadQVGA3_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.zuneEditpadQVGA2_released.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditpadQVGA2_released.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditpadQVGA2_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.zuneEditPadQVGA3_released.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditPadQVGA3_released.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditPadQVGA3_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.zuneEditPadVga_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditPadVga_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditPadVga_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.zuneEditPadVga_released.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditPadVga_released.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneEditPadVga_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.zuneListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadHor_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.zuneListPadHor_released.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadHor_released.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadHor_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.zuneListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneListPadVer_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.zuneNumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneNumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/zuneNumPad_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.Vozicek.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Vozicek.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Vozicek.png
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.Rail_vozicka.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Rail_vozicka.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Rail_vozicka.png
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.Agregat.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Agregat.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Agregat.png
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.Header_PS.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Header_PS.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Header_PS.png
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.Home_screen.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Home_screen.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/Home_screen.png
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


$(TEMP_PATH_Vrtal1)/bminfo.settings_page.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/settings_page.bminfo $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Bitmaps/settings_page.png
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


#Bitmaps END




# Trend Data Configuration
TDC_OBJECTS_Vrtal1 = $(addprefix $(TEMP_PATH_Vrtal1)/tdc., $(notdir $(TDC_SOURCES_Vrtal1:.tdc=.vco)))

$(TEMP_PATH_Vrtal1)/tdc.TrendData.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Trends/TrendData.tdc
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


#Trend Data Configuration END




# Process
PRC_OBJECTS_Vrtal1 = $(addprefix $(TEMP_PATH_Vrtal1)/prc., $(notdir $(PRC_SOURCES_Vrtal1:.prc=.vco)))

$(TEMP_PATH_Vrtal1)/prc.Process_1.vco: $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Processes/Process_1.prc
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Vrtal1)" $(VCCFLAGS_Vrtal1)  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas


#Process END


#
# Borders
#
BDR_SOURCES_Vrtal1=$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/Raised.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/Sunken.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/Etched.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/Bump.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/SunkenOuter.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/RaisedInner.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/Flat_black.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/Flat_grey.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/BackwardActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/BackwardPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ControlActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ControlPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/DownActiveControl.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/DownPressedControl.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ForwardActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ForwardPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/GlobalAreaActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/GlobalAreaPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/MultiScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/MultiScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/MultiScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/MultiScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ProgressBarBorder.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollLeftActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollLeftPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollRightActive.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/ScrollRightPressed.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/UpActiveControl.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/UpPressedControl.bdr $(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Borders/FrameHeader.bdr 
BDR_OBJECTS_Vrtal1=$(TEMP_PATH_Vrtal1)/bdr.Bordermanager.vco
$(TEMP_PATH_Vrtal1)/bdr.Bordermanager.vco: $(BDR_SOURCES_Vrtal1)
	$(VCC) -f "$<" -o "$@" -pkg "$(SRC_PATH_Vrtal1)" $(BDRFLAGS_Vrtal1) $(VCCFLAGS_Vrtal1) -p Vrtal1$(SRC_PATH_Vrtal1)
#
# Logical fonts
#
$(TEMP_PATH_Vrtal1)/lfnt.en.vco: $(TEMP_PATH_Vrtal1)/en.lfnt $(VC_LANGUAGES_Vrtal1)
	 $(VCC) -f "$<" -o "$@" $(LFNTFLAGS_Vrtal1) $(VCCFLAGS_Vrtal1) -p Vrtal1 -sfas
$(TEMP_PATH_Vrtal1)/lfnt.de.vco: $(TEMP_PATH_Vrtal1)/de.lfnt $(VC_LANGUAGES_Vrtal1)
	 $(VCC) -f "$<" -o "$@" $(LFNTFLAGS_Vrtal1) $(VCCFLAGS_Vrtal1) -p Vrtal1 -sfas
LFNT_OBJECTS_Vrtal1=$(TEMP_PATH_Vrtal1)/lfnt.en.vco $(TEMP_PATH_Vrtal1)/lfnt.de.vco 

#Runtime Object
$(VCR_OBJECT_Vrtal1) : $(VCR_SOURCE_Vrtal1)
	$(VCC) -f "$<" -o "$@" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -sl en $(VCCFLAGS_Vrtal1) -rt  -p Vrtal1 -so $(VC_STATIC_OPTIONS_Vrtal1) -vcr 4265 -sfas
# Local resources Library rules
LIB_LOCAL_RES_Vrtal1=$(TEMP_PATH_Vrtal1)/localres.vca
$(LIB_LOCAL_RES_Vrtal1) : $(TEMP_PATH_Vrtal1)/Vrtal102.ccf

# Bitmap Library rules
LIB_BMP_RES_Vrtal1=$(TEMP_PATH_Vrtal1)/bmpres.vca
$(LIB_BMP_RES_Vrtal1) : $(TEMP_PATH_Vrtal1)/Vrtal103.ccf
$(BMGRP_OBJECTS_Vrtal1) : $(PALFILE_Vrtal1) $(VC_LANGUAGES_Vrtal1)
$(BMINFO_OBJECTS_Vrtal1) : $(PALFILE_Vrtal1)

BUILD_FILE_Vrtal1=$(TEMP_PATH_Vrtal1)/BuildFiles.arg
$(BUILD_FILE_Vrtal1) : BUILD_FILE_CLEAN_Vrtal1 $(BUILD_SOURCES_Vrtal1)
BUILD_FILE_CLEAN_Vrtal1:
	$(RM) /F /Q "$(BUILD_FILE_Vrtal1)" 2>nul
#All Modules depending to this project
PROJECT_MODULES_Vrtal1=$(AS_CPU_PATH)/Vrtal101.br $(AS_CPU_PATH)/Vrtal102.br $(AS_CPU_PATH)/Vrtal103.br $(FONT_MODULES_Vrtal1) $(SHARED_MODULE)

# General Build rules

$(TARGET_FILE_Vrtal1): $(PROJECT_MODULES_Vrtal1) $(TEMP_PATH_Vrtal1)/Vrtal1.prj
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Vrtal1) -fw "$(VCFIRMWAREPATH)" -m $(VCSTPOST) -v V1.00.0 -f "$(TEMP_PATH_Vrtal1)/Vrtal1.prj" -o "$@" -vc "$(VCOBJECT_Vrtal1)" $(DEPENDENCIES_Vrtal1) $(addprefix -d ,$(notdir $(PROJECT_MODULES_Vrtal1:.br=)))

$(AS_CPU_PATH)/Vrtal101.br: $(TEMP_PATH_Vrtal1)/Vrtal101.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Vrtal1) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -v V1.00.0 -b -vc "$(VCOBJECT_Vrtal1)" -f "$<" -o "$@" $(DEPENDENCIES_Vrtal1)

$(AS_CPU_PATH)/Vrtal102.br: $(TEMP_PATH_Vrtal1)/Vrtal102.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Vrtal1) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -v V1.00.0 -b -vc "$(VCOBJECT_Vrtal1)" -f "$<" -o "$@" $(DEPENDENCIES_Vrtal1)

$(AS_CPU_PATH)/Vrtal103.br: $(TEMP_PATH_Vrtal1)/Vrtal103.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Vrtal1) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -v V1.00.0 -b -vc "$(VCOBJECT_Vrtal1)" -f "$<" -o "$@" $(DEPENDENCIES_Vrtal1)

# General Build rules END
$(LIB_LOCAL_OBJ_Vrtal1) : $(TEMP_PATH_Vrtal1)/Vrtal101.ccf

# Main Module
$(TEMP_PATH_ROOT_Vrtal1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Vrtal1.vcm:
$(TEMP_PATH_Vrtal1)/Vrtal1.prj: $(TEMP_PATH_ROOT_Vrtal1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Vrtal1.vcm
	$(VCDEP) -m "$(TEMP_PATH_ROOT_Vrtal1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Vrtal1.vcm" -s "$(AS_CPU_PATH)/VCShared/Shared.vcm" -p "$(AS_PATH)/AS/VC/Firmware" -c "$(AS_CPU_PATH)" -fw "$(VCFIRMWAREPATH)" -hw "$(CPUHWC)" -so $(VC_STATIC_OPTIONS_Vrtal1) -o Vrtal1 -proj Vrtal1
	$(VCPL) $(notdir $(PROJECT_MODULES_Vrtal1:.br=,4)) Vrtal1,2 -o "$@" -p Vrtal1 -vc "Vrtal1" -verbose "False" -fl "$(TEMP_PATH_ROOT_Vrtal1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Vrtal1.vcm" -vcr "$(VCR_SOURCE_Vrtal1)" -prj "$(AS_PROJECT_PATH)" -warningLevel2 -sfas

# 01 Module

DEL_TARGET01_LFL_Vrtal1=$(TEMP_PATH_Vrtal1)\Vrtal101.ccf.lfl
$(TEMP_PATH_Vrtal1)/Vrtal101.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_Vrtal1) $(TEMP_PATH_Vrtal1)/Vrtal103.ccf $(LIB_LOCAL_RES_Vrtal1) $(TEMP_PATH_Vrtal1)/Vrtal102.ccf $(DIS_OBJECTS_Vrtal1) $(PAGE_OBJECTS_Vrtal1) $(VCS_OBJECTS_Vrtal1) $(VCVK_OBJECTS_Vrtal1) $(VCRT_OBJECTS_Vrtal1) $(TPR_OBJECTS_Vrtal1) $(TXTGRP_OBJECTS_Vrtal1) $(LAYER_OBJECTS_Vrtal1) $(VCR_OBJECT_Vrtal1) $(TDC_OBJECTS_Vrtal1) $(TRD_OBJECTS_Vrtal1) $(TRE_OBJECTS_Vrtal1) $(PRC_OBJECTS_Vrtal1) $(SCR_OBJECTS_Vrtal1)
	-@CMD /Q /C if exist "$(DEL_TARGET01_LFL_Vrtal1)" DEL /F /Q "$(DEL_TARGET01_LFL_Vrtal1)" 2>nul
	@$(VCFLGEN) "$@.lfl" "$(LIB_SHARED)" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(LIB_BMP_RES_Vrtal1)" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(LIB_LOCAL_RES_Vrtal1)" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(DIS_OBJECTS_Vrtal1:.vco=.vco|)" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .page -vcp "$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Package.vcp" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(VCS_OBJECTS_Vrtal1:.vco=.vco|)" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .vcvk -vcp "$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Package.vcp" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(VCRT_OBJECTS_Vrtal1:.vco=.vco|)" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(TPR_OBJECTS_Vrtal1:.vco=.vco|)" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .txtgrp -vcp "$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Package.vcp" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .layer -vcp "$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Package.vcp" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(VCR_OBJECT_Vrtal1:.vco=.vco|)" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .tdc -vcp "$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Package.vcp" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .trd -vcp "$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Package.vcp" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(TEMP_PATH_Vrtal1)/prc.Process_1.vco" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(SCR_OBJECTS_Vrtal1:.vco=.vco|)" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	$(LINK) "$@.lfl" -o "$@" -p Vrtal1 -lib "$(LIB_LOCAL_OBJ_Vrtal1)" -P "$(AS_PROJECT_PATH)" -m "local objects" -profile "False" -warningLevel2 -vcr 4265 -sfas
# 01 Module END

# 02 Module

DEL_TARGET02_LFL_Vrtal1=$(TEMP_PATH_Vrtal1)\Vrtal102.ccf.lfl
$(TEMP_PATH_Vrtal1)/Vrtal102.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_Vrtal1) $(TEMP_PATH_Vrtal1)/Vrtal103.ccf $(BDR_OBJECTS_Vrtal1) $(LFNT_OBJECTS_Vrtal1) $(CLM_OBJECTS_Vrtal1)
	-@CMD /Q /C if exist "$(DEL_TARGET02_LFL_Vrtal1)" DEL /F /Q "$(DEL_TARGET02_LFL_Vrtal1)" 2>nul
	@$(VCFLGEN) "$@.lfl" "$(LIB_SHARED)" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(LIB_BMP_RES_Vrtal1)" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(BDR_OBJECTS_Vrtal1:.vco=.vco|)" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(LFNT_OBJECTS_Vrtal1:.vco=.vco|)" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(CLM_OBJECTS_Vrtal1:.vco=.vco|)" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	$(LINK) "$@.lfl" -o "$@" -p Vrtal1 -lib "$(LIB_LOCAL_RES_Vrtal1)" -P "$(AS_PROJECT_PATH)" -m "local resources" -profile "False" -warningLevel2 -vcr 4265 -sfas
# 02 Module END

# 03 Module

DEL_TARGET03_LFL_Vrtal1=$(TEMP_PATH_Vrtal1)\Vrtal103.ccf.lfl
$(TEMP_PATH_Vrtal1)/Vrtal103.ccf: $(LIB_SHARED) $(SHARED_CCF) $(BMGRP_OBJECTS_Vrtal1) $(BMINFO_OBJECTS_Vrtal1) $(PALFILE_Vrtal1)
	-@CMD /Q /C if exist "$(DEL_TARGET03_LFL_Vrtal1)" DEL /F /Q "$(DEL_TARGET03_LFL_Vrtal1)" 2>nul
	@$(VCFLGEN) "$@.lfl" "$(LIB_SHARED)" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .bmgrp -vcp "$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Package.vcp" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .bminfo -vcp "$(AS_PROJECT_PATH)/Logical/VrtalkaHMI/Package.vcp" -temp "$(TEMP_PATH_Vrtal1)" -prj "$(PRJ_PATH_Vrtal1)" -sfas
	$(LINK) "$@.lfl" -o "$@" -p Vrtal1 -lib "$(LIB_BMP_RES_Vrtal1)" -P "$(AS_PROJECT_PATH)" -m "bitmap resources" -profile "False" -warningLevel2 -vcr 4265 -sfas
# 03 Module END

# Post Build Steps

.PHONY : vcPostBuild_Vrtal1

vcPostBuild_Vrtal1 :
	$(VCC) -pb -vcm "$(TEMP_PATH_Vrtal1)/MODULEFILES.vcm" -fw "$(VCFIRMWAREPATH)" $(VCCFLAGS_Vrtal1) -p Vrtal1 -vcr 4265 -sfas

# Post Build Steps END
