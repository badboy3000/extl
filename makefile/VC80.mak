#���ļ���
NAME=ExtlTest

#����·��
PATH=../../IDE\VC80\Bin

LIB_PATH=../../IDE\VC80\Lib
INCLUDE_PATH=../../IDE\VC80\Include
BIN_PATH=../../Bin

#�����ļ�
OBJS=$(NAME).obj

#���ӱ�־
LINK_FLAG=/libpath:$(LIB_PATH) /libpath:$(BIN_PATH) kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib \
odbccp32.lib /nologo /subsystem:console /incremental:no /machine:I386 /out:"$(BIN_PATH)/$(NAME).exe"

#�����־
CL_FLAG=/X /I $(INCLUDE_PATH) /nologo /W3 /EHsc /O2 /Oi \
/D "WIN32" /D "NDEBUG" /D "_CONSOLE" /Fo"$(BIN_PATH)/" $(FLAG_TC) /c

#����
$(NAME).exe:$(OBJS)
	Link $(LINK_FLAG) $(OBJS)

#����
$(OBJS):$(NAME).cpp

#��������
.cpp.obj:
	Cl $(CL_FLAG) $<

#����ļ�
clean:
