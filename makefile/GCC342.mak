#���ļ���
NAME=ExtlTest

#����·��
PATH=../../IDE\GCC342\Bin

LIB_PATH=../../IDE\GCC342\Lib
INCLUDE_PATH_1=../../IDE\GCC342\Include
INCLUDE_PATH_2=../../IDE\GCC342\Lib\gcc\mingw32\3.4.2\include
INCLUDE_PATH_3=../../IDE\GCC342\Include\c++\3.4.2\backward
INCLUDE_PATH_4=../../IDE\GCC342\Include\c++\3.4.2\mingw32
BIN_PATH=../../Bin

#�����ļ�
OBJS=$(NAME).o

#���ӱ�־
LINK_FLAG= -L"$(LIB_PATH)"

#�����־
CL_FLAG= -c -I"$(INCLUDE_PATH_1)" -I"$(INCLUDE_PATH_2)" -I"$(INCLUDE_PATH_3)" -I"$(INCLUDE_PATH_4)" -Wall

#����
$(NAME).exe:$(OBJS)
	g++ $(OBJS) -o $(NAME).exe $(LINK_FLAG) 

#����
$(NAME).o:$(NAME).cpp

#��������
.cpp.o:
	g++ $(CL_FLAG) $<

#����ļ�
clean:
