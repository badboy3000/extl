#���ļ���
NAME=ExtlTest

#����·��
PATH=../../IDE\INTEL11_0_061\Bin;../../IDE\VC90\Bin

LIB_PATH=../../IDE\VC90\Lib
INTEL_LIB_PATH=../../IDE\INTEL11_0_061\Lib
INCLUDE_PATH=../../IDE\VC90\Include
INTEL_INCLUDE_PATH=../../IDE\INTEL11_0_061\Include
BIN_PATH=../../Bin

#�����ļ�
OBJS=$(NAME).obj

#������
LINK32=xilink.exe

#���ӱ�־
LINK_FLAG=/libpath:$(LIB_PATH) /libpath:$(BIN_PATH) /libpath:$(INTEL_LIB_PATH) kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib \
odbccp32.lib /nologo /subsystem:console /incremental:no /machine:I386 /out:"$(BIN_PATH)/$(NAME).exe"

#������
CPP=icl.exe
#�����־
CL_FLAG=/X /I $(INCLUDE_PATH) /I $(INTEL_INCLUDE_PATH) /nologo /W3 /GX /O3 \
/D "WIN32" /D "NDEBUG" /D "_CONSOLE" /Fo"$(BIN_PATH)/" $(FLAG_TC) /c 

#����
$(NAME).exe:$(OBJS)
	$(LINK32) $(LINK_FLAG) $(OBJS)

#����
$(OBJS):$(NAME).cpp

#��������
.cpp.obj:
	$(CPP) $(CL_FLAG) $<

#����ļ�
clean:
