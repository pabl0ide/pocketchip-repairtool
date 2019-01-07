cd
echo Instalando Aplicaciones...
sudo apt-get update
sudo apt-get install android-tools-backup sunxi-tools u-boot-tools
echo Listo
echo Descarge los archivos de https://drive.google.com/drive/folders/1BPfAo4e1GDnaW6P-zCEOKxqW4_y6TO3c?usp=sharing y guardelos en HOME/CHIP
read -rsp $'Presione enter para continuar...\n'
sudo whoami
cd /CHIP/CHIP-tools

echo Conecta el PocketCHIP a la computadora...
read -rsp $'Presione enter para continuar...\n'
FEL='sudo sunxi-fel' FASTBOOT='sudo fastboot' SNIB=false ./chip-update-firmware.sh -L ../stable-pocketchip-b126
