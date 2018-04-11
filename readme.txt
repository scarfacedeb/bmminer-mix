
== 11 Apr 2018

Удалось скомпилировать и запустить bmminer под Ubuntu внутри Virtual Box.

Воспроизвести так:

```
project-root $ vagrant up
project-root $ vagrant ssh
ubuntu-vm $ cd /vagrant
ubuntu-vm $ ./run.sh
```

Внутри cgminer.c находит какой-то девайс, который выдает segfault при запуске.
Но если использовать на нем встроенную функцию `null_device_drv`, то майнер
запускается.

Удалось скомпилировать с поддержкой libncurses, которая дает возможность
в online вызывать комнады нажатием клавиш "d", "s", etc (см доки по cgminer).
Однако весь stdout начинает плыть, поэтому я добавил `--text-only` в mine.sh.


==== BELOW IS THE OLD README ====

environment setup:
need 2 PATH: toolchain base path and other open source lib binary and include files base path.

for example:
XILINX_BASE_PATH=/home/XILINX/gcc-linaro-arm-linux-gnueabihf-4.7-2012.11-20121123_linux
XILINX_OTHER_LIB_BASE_PATH=/home/XILINX/bin
export XILINX_OTHER_LIB_BASE_PATH
export XILINX_BASE_PATH

How to compile:
1. set miner type value
./setminertype S9
option: S9   R4   T9   T9+

2. compile the code
make

