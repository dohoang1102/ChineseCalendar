include config.mk
include $(THEOS)/makefiles/common.mk

SUBPROJECTS = Preference

BUNDLE_NAME = LunarCalendarWidget
LunarCalendarWidget_FILES = LunarCalendarWidgetController.m \
														../Common/NSCalendarAdditons.m \
														../Common/NSDateComponentsAdditions.m \
														../Common/TLLunarDate.m \
														../Common/TLCalendarScrollView.m \
														TLLunarCalendarWeeView.m \
														TLMonthWidgetView.m \
														TLWeekWidgetView.m \
														TLDayWidgetView.m \
														TLWidgetView.m
LunarCalendarWidget_INSTALL_PATH = /Library/WeeLoader/Plugins/
LunarCalendarWidget_FRAMEWORKS = UIKit CoreGraphics


include $(THEOS_MAKE_PATH)/bundle.mk
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	 install.exec "killall -9 SpringBoard"
