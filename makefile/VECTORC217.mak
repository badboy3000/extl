#���ļ���
NAME=ExtlTest

#����·��
PATH=../../IDE\VECTORC217\Bin

LIB_PATH=../../IDE\VC60\Lib
INCLUDE_PATH=../../IDE\VC60\Include
VECTORC_INCLUDE_PATH=../../IDE\VECTORC217\Include
BIN_PATH=../../Bin

#�����ļ�
OBJS=$(NAME).obj

#������
LINK32=Link.exe
#���ӱ�־
LINK_FLAG=/libpath:$(LIB_PATH) /libpath:$(BIN_PATH) kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib \
odbccp32.lib /nologo /subsystem:console /incremental:no /machine:I386 /out:"$(BIN_PATH)/$(NAME).exe"

#������
CPP=vectorc86.exe
#�����־
CL_FLAG=/nodefaultinclude /include $(INCLUDE_PATH) /include $(VECTORC_INCLUDE_PATH) /noprogress \
	/optimize 10 /autoinline 15 /uncached 128 /define "WIN32" /define "NDEBUG" /define "_MBCS" \
	/define "_LIB" /target pentiummmx /schars /cdecl /mslibs /alignment 1

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
