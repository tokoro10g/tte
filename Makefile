
-include $(TOPDIR)/Make.defs
-include $(SDKDIR)/Make.defs

CONFIG_MYAPPS_TTE_PRIORITY ?= SCHED_PRIORITY_DEFAULT
CONFIG_MYAPPS_TTE_STACKSIZE ?= 32768

APPNAME = tte
PRIORITY = $(CONFIG_MYAPPS_TTE_PRIORITY)
STACKSIZE = $(CONFIG_MYAPPS_TTE_STACKSIZE)

ASRCS =
CSRCS = contrib/getline/getline.c
MAINSRC = tte.c

CFLAGS+=-Icontrib/getline -Wno-strict-prototypes -DSIGWINCH=0 -DSIGCONT=0 -DSIGTSTP=0

CONFIG_MYAPPS_TTE_PROGNAME ?= tte$(EXEEXT)
PROGNAME = $(CONFIG_MYAPPS_TTE_PROGNAME)

include $(APPDIR)/Application.mk
