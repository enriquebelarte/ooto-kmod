KERNEL_SRC_DIR =

ccflags-y += -I$(KERNEL_SRC_DIR)/include
obj-m += ooto_ci_a.o
obj-m += ooto_ci_b.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules 	

