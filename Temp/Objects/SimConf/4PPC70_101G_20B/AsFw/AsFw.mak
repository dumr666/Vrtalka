$(AS_CPU_PATH)/asfw.br: \
	$(AS_PROJECT_PATH)/Physical/HW_config/Hardware.hw \
	$(AS_INSTALL_PATH)/Upgrades/Modified.txt
	@"$(AS_BIN_PATH)/BR.AS.ConfigurationBuilder.exe"  "$(AS_PROJECT_PATH)/Physical/HW_config/Hardware.hw" -v V1.00.0 -S "4PPC70_101G_20B" -o "$(AS_CPU_PATH)/asfw.br" -T SG4 -B D4.26 -P "$(AS_PROJECT_PATH)" -c "$(AS_CONFIGURATION)" -zip -s 4PPC70_101G_20B -firmware -secret "$(AS_PROJECT_PATH)_br.as.configurationbuilder.exe"

