# ShuttlePRO


![ShuttlePROv2](https://raw.githubusercontent.com/patomation/ShuttlePRO/shuttle-pro-v2.png)


## Quick Start

Install: run the script
```
$ bin/install.sh
```

Usage:
```
$ shuttle
```

Usage:
```
$ shuttlepro /dev/input/inputX
```
replace X with your input device number. See next session"

## How to find the device

```
$ cat /proc/bus/input/devices

```
look for /input/inputX
now combine that with /dev/
/dev/input/inputX

cat /proc/bus/input/devices output will look like this
```
I: ...
N: Name="Contour Design ShuttlePRO v2"
P: Phys=...
S: Sysfs=/devices/.../input/inputX
U: Uniq=
H: Handlers=...
B: PROP=...
B: EV=...
B: KEY=...
B: REL=...
B: MSC=...

```

## Longer Install instructions

1. Install build dependencies
```
$ apt update -y
$ apt install -y build-essential libx11-dev 
libxtst-dev
```

2. Build
```
$ make
```

3. Copy global rools
```
$ cp 99-ShuttlePRO.rules /etc/udev/rules.d
```

4. Install
```
 
evgrab ioctl: Operation not permitted