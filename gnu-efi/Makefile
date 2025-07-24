REPO	?= https://github.com/ncroxon/gnu-efi

include ../Makefile.defaults

MAKEARGS = $(shell if [ "$(ARCH)" = "i386" ] || [ "$(ARCH)" = "i686" ]; then \
			 echo 'ARCH="ia32" && cd $(BUILD)/$* && mv ia32 $(ARCH) && ln -s $(ARCH) ia32'; fi)
INSTARGS = $(shell if [ "$(ARCH)" = "i386" ] || [ "$(ARCH)" = "i686" ]; then \
			 echo 'ARCH="ia32" && rm -f $(shell pwd)/$(BUILD)/$*/ia32'; fi)

cp=)
ARCH := $(shell case "$(ARCH)" in "arm"*$(cp) echo arm ;; *$(cp) echo "$(ARCH)" ;; esac)

include ../Makefile.rules
