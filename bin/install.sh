sudo apt update -y
sudo apt install -y build-essential libx11-dev libxtst-dev
make
sudo cp 99-ShuttlePRO.rules /etc/udev/rules.d
make install