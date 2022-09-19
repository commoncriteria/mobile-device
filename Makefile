-include ~/commoncriteria/User.make
-include User.make
TRANS?=transforms
#BASE=mobile-device

DIFF_EXE = diff -W 180 -y <(pandoc -f HTML -t markdown "$1") <(pandoc -f HTML -t markdown "$2") >$3
DIFF_EXT = txt

DIFF_TAGS=v3.2
include $(TRANS)/Helper.make

