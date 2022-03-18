## how to install vlang/vsl

### install v to ~/bin:
```
v version ### check if alreay installed
git clone https://github.com/vlang/v ~/bin/vsrc
cd ~/bin/vsrc
make
### add ~/bin/vsrc to $PATH in ~/.bashrc
# sudo ./v symlink ###it create symbol link "/usr/local/bin/v", but may missing some libs
# v up ### if update
```
### install vsl for your project
```
v install vsl
```
## install vsl using vpkg instead of vpm:

```
git clone https://github.com/vpkg-project/vpkg.git ~/bin/vpkgsrc
cd ~/bin/vpkgsrc
v -prod .
cp ./vpkg ~/bin
vpkg get https://github.com/vlang/vsl
### install vsl to your project dir will let git think u have a submodule,
### so just use 'v install vsl'

```

## backup: Installing a C compiler on Linux 

Debian/Ubuntu
```
sudo apt install build-essential
```
CentOS/RHEL
```
sudo yum groupinstall "Development Tools"
```
Fedora
```
sudo dnf install @development-tools
```
