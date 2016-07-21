![img](http://ecx.images-amazon.com/images/I/51AH1J4Wo9L._SX394_BO1,204,203,200_.jpg)
# Professional Assembly Language

# OS 
ubuntu-gnome-16.04-desktop-amd64
# Prerequisites
sudo apt install gcc-multilib

# Command
```bash
$ bash
>>> as --32 -o xxx.o xxx.s
>>> ld -m elf_i386 -o xxx xxx.o
>>> ld -m elf_i386 -dynamic-linker /lib32/ld-linux.so.2 -o xxx xxx.o /lib32/libc.so.6
```
