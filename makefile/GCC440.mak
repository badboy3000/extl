#���ļ���
NAME=ExtlTest

#����·��
PATH=../../IDE\GCC440\Bin

LIB_PATH=../../IDE\GCC440\Lib
INCLUDE_PATH_1=../../IDE\GCC440\Include
INCLUDE_PATH_2=../../IDE\GCC440\Lib\gcc\i386-pc-mingw32\4.4.0\include
INCLUDE_PATH_3=../../IDE\GCC440\Include\c++\4.4.0\backward
INCLUDE_PATH_4=../../IDE\GCC440\i386-pc-mingw32\include
BIN_PATH=../../Bin

#�����ļ�
OBJS=$(NAME).o

#���ӱ�־
LINK_FLAG= -L"$(LIB_PATH)"

#�����־
CL_FLAG= -c -I"$(INCLUDE_PATH_1)" -I"$(INCLUDE_PATH_2)" -I"$(INCLUDE_PATH_3)" -I"$(INCLUDE_PATH_4)" -std=c++0x -Wall

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
