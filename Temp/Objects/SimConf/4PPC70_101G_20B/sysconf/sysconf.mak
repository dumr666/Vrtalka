$(AS_CPU_PATH)/sysconf.br: \
	$(AS_PROJECT_PATH)/Physical/HW_config/Hardware.hw 
	@"$(AS_BIN_PATH)/BR.AS.ConfigurationBuilder.exe" "$(AS_PROJECT_PATH)/Physical/HW_config/Hardware.hw"  -c SimConf -sysconf -S "4PPC70_101G_20B" -o "$(AS_CPU_PATH)/sysconf.br" -T SG4  -B D4.26 -P "$(AS_PROJECT_PATH)" -s "SimConf" -secret "$(AS_PROJECT_PATH)_br.as.configurationbuilder.exe"

-include $(AS_CPU_PATH)/Force.mak 
