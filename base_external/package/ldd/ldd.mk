LDD_VERSION = '4dc8c736d7c1269439a885957bd3e5ab90fe19c6'
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-githuberj.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULE_SUBDIRS=scull misc-modules

define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -d $(TARGET_DIR)/lib
	$(INSTALL) -m 0644 $(@D)/misc-modules/faulty.ko $(TARGET_DIR)/lib/
	$(INSTALL) -m 0644 $(@D)/misc-modules/hello.ko $(TARGET_DIR)/lib/
	$(INSTALL) -m 0644 $(@D)/scull/scull.ko $(TARGET_DIR)/lib/
endef

$(eval $(kernel-module))
$(eval $(generic-package))