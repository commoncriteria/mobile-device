TRANS?=transforms
BASE=mobile-device
-include User.make
include $(TRANS)/Helper.make

worksheet:
	python3 $(TRANS)/python/pp-to-worksheet.py $(PP_XML):$(OUT)/MobileDeviceWorksheet.html
