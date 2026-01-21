TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = GameCenter

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = GameCenterBypass

GameCenterBypass_FILES = Tweak.x
GameCenterBypass_CFLAGS = -fobjc-arc
GameCenterBypass_FRAMEWORKS = GameKit

include $(THEOS_MAKE_PATH)/tweak.mk
