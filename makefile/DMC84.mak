#���ļ���
NAME=ExtlTest

#����·��
PATH=../../IDE\DMC84\Bin

LIB_PATH=../../IDE\DMC84\Lib
INCLUDE_PATH=../../IDE\DMC84\Include
WIN32_INCLUDE_PATH=../../IDE\DMC84\Include\win32
BIN_PATH=../../Bin

#�����ļ�
OBJS=$(NAME).obj

#���ӱ�־
LINK_FLAG=

#�����־(-Ae:�����쳣,-Aa:����new[]..,-Ab:����bool)
CL_FLAG= -c -I$(INCLUDE_PATH) -I$(WIN32_INCLUDE_PATH) -Ae -Aa -Ab

#����
$(NAME).exe:$(OBJS)
	Link $(LINK_FLAG) $(OBJS)

#����
$(NAME).obj:$(NAME).cpp

#��������
.cpp.obj:
	DMC $(CL_FLAG) $<

#����ļ�
clean:
