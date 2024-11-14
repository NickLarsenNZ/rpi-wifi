# rpi-wifi

See: <https://medium.com/@hungryspider/building-custom-linux-for-raspberry-pi-using-buildroot-f81efc7aa817>

```sh
nix-shell --run zsh
cd buildroot
make list_defconfigs
make raspberrypi5_defconfig
# set a few options
make all
# todo: need crypt.h
```
