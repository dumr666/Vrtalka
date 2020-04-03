SHELL = cmd.exe
CYGWIN=nontsec
export PATH := C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files\PuTTY\;C:\Program Files\Git\cmd;C:\Program Files (x86)\GitExtensions\;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\110\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files\Microsoft SQL Server\120\DTS\Binn\;C:\Program Files (x86)\Windows Kits\8.1\Windows Performance Toolkit\;C:\Program Files\Calibre2\;C:\Program Files (x86)\WinSCP\;C:\Users\lesko\.cargo\bin;C:\python37\Scripts\;C:\python37\;C:\Users\lesko\AppData\Local\Microsoft\WindowsApps;C:\Users\lesko\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\lesko\AppData\Local\GitHubDesktop\bin;C:\Users\lesko\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\lesko\.cargo\bin;C:\python37\Scripts\;C:\python37\;C:\Users\lesko\AppData\Local\Microsoft\WindowsApps;C:\Users\lesko\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\lesko\AppData\Local\GitHubDesktop\bin;C:\Users\lesko\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode
export AS_BUILD_MODE := BuildAndTransfer
export AS_VERSION := 4.2.10.53 SP
export AS_COMPANY_NAME :=  
export AS_USER_NAME := lesko
export AS_PATH := C:/BrAutomation/AS42
export AS_BIN_PATH := C:/BrAutomation/AS42/Bin-en
export AS_PROJECT_PATH := F:/1_Automation_projects/Vrtalka
export AS_PROJECT_NAME := Vrtalka
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_VC_PATH := C:/BrAutomation/AS42/AS/VC
export AS_TEMP_PATH := F:/1_Automation_projects/Vrtalka/Temp
export AS_CONFIGURATION := SimConf
export AS_BINARIES_PATH := F:/1_Automation_projects/Vrtalka/Binaries
export AS_GNU_INST_PATH := C:/BrAutomation/AS42/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BrAutomation/AS42/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := C:/BrAutomation/AS42
export WIN32_AS_PATH := "C:\BrAutomation\AS42"
export WIN32_AS_BIN_PATH := "C:\BrAutomation\AS42\Bin-en"
export WIN32_AS_PROJECT_PATH := "F:\1_Automation_projects\Vrtalka"
export WIN32_AS_SYSTEM_PATH := "C:\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BrAutomation\AS42\AS\VC"
export WIN32_AS_TEMP_PATH := "F:\1_Automation_projects\Vrtalka\Temp"
export WIN32_AS_BINARIES_PATH := "F:\1_Automation_projects\Vrtalka\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BrAutomation\AS42\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\BrAutomation\AS42"

.suffixes:

ProjectMakeFile:

	@"$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe" "$(AS_PROJECT_PATH)/Vrtalka.apj" -t "$(AS_TEMP_PATH)" -c "$(AS_CONFIGURATION)" -o "$(AS_BINARIES_PATH)"   -sfas -buildMode "BuildAndTransfer"  

	@$(AS_GNU_BIN_PATH)/mingw32-make.exe -r -f 'F:/1_Automation_projects/Vrtalka/Temp/Objects/$(AS_CONFIGURATION)/4PPC70_101G_20B/#cpu.mak' -k 

