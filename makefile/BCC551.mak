#���ļ���
NAME=ExtlTest

#����·��
PATH=../../IDE\BCC551\Bin\

LIB_PATH=../../IDE\BCC551\Lib
PSDK_LIB_PATH=../../IDE\BCC551\Lib\PSDK
INCLUDE_PATH=../../IDE\BCC551\Include
RW_INCLUDE_PATH=../../IDE\BCC551\Include\Rw
BIN_PATH=../../Bin

#�����ļ�
OBJS=$(NAME).obj

#���ӱ�־
#LINK_FLAG= /L"$(LIB_PATH)" /L"$(PSDK_LIB_PATH)" /j"$(BIN_PATH)" /I"$(BIN_PATH)" /Gn /ap

#�����־
#CL_FLAG= -c -I$(INCLUDE_PATH) -I$(INCLUDE_PATH) -n$(BIN_PATH) /L"$(LIB_PATH)"
CL_FLAG= -I$(INCLUDE_PATH) -I$(RW_INCLUDE_PATH) -n$(BIN_PATH) /L"$(LIB_PATH)"

#����
#$(NAME).exe:$(OBJS)
#	ILINK32 $(LINK_FLAG) $(OBJS)

#����
$(NAME).obj:$(NAME).cpp

#��������
.cpp.obj:
	BCC32 $(CL_FLAG) $<

#����ļ�
clean:
