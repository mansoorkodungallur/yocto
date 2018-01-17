
sudo apt-get install -y vim gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat cpio python python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping libsdl1.2-dev xterm

mkdir Yocto-Daisy-Labs;

cd Yocto-Daisy-Labs;

git clone git://git.yoctoproject.org/poky;

cd poky;

git checkout -b daisy origin/daisy;

source oe-init-build-env;
sudo curl -O https://raw.githubusercontent.com/mansoorkodungallur/yocto/master/abc.txt

sudo cat abc.txt>conf/local.conf;
sudo rm -f  cat abc.txt;


bitbake core-image-minimal;
