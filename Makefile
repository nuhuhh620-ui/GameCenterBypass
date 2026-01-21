TARGET := iphone:clang:14.5:14.0
ARCHS = arm64
INSTALL_TARGET_PROCESSES = GameCenter

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = GameCenterBypass

GameCenterBypass_FILES = Tweak.x
GameCenterBypass_CFLAGS = -fobjc-arc
GameCenterBypass_FRAMEWORKS = GameKit Foundation UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
