#���ļ���
NAME=ExtlTest
#����·��
PATH=../../IDE\WATCOM12\Bin

LIB_PATH=../../IDE\WATCOM12\Lib
INCLUDE_PATH=../../IDE\WATCOM12\Include
BIN_PATH=../../Bin

#�����ļ�
OBJS=$(NAME).obj

#���ӱ�־
LINK_FLAG= d all op inc op m op maxe=25 op q op symf

#�����־(-xs:�����쳣)
CL_FLAG= -i=$(INCLUDE_PATH);$(INCLUDE_PATH)\nt -w4 -e25 -zq -od -d2 -5r -bt=nt -mf -xs

#����
$(NAME).exe:$(OBJS)
	wlink $(LINK_FLAG) $(OBJS)
#����
$(NAME).obj:$(NAME).cpp

#��������
.cpp.obj:
	wpp386 $(CL_FLAG) $<

#����ļ�
clean:
