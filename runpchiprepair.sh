cd
echo Instalando Aplicaciones...
sudo apt-get update
sudo apt-get install android-tools-backup sunxi-tools u-boot-tools
echo Listo
cd /CHIP/CHIP-tools

echo Conecta PocketCHIP...
read -rsp $'Presione enter para continuar...\n'
FEL='sudo sunxi-fel' FASTBOOT='sudo fastboot' SNIB=false ./chip-update-firmware.sh -L ../stable-pocketchip-b126
