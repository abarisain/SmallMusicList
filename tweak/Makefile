export SDKVERSION=8.1
export ARCHS = armv7 arm64
export TARGET = iphone:clang:8.1:8.1

SHARED_CFLAGS = -fobjc-arc
ADDITIONAL_OBJCFLAGS = -fobjc-arc

TWEAK_NAME = SmallMusicList
SmallMusicList_FILES = Tweak.xm
SmallMusicList_FRAMEWORKS = UIKit

include theos/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 backboardd"
