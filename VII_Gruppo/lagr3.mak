# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=lagr3 - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to lagr3 - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "lagr3 - Win32 Release" && "$(CFG)" != "lagr3 - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "lagr3.mak" CFG="lagr3 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "lagr3 - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "lagr3 - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
F90=fl32.exe
RSC=rc.exe

!IF  "$(CFG)" == "lagr3 - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\lagr3.exe"

CLEAN : 
	-@erase ".\lagr3.exe"
	-@erase ".\lagr3.obj"
	-@erase ".\norme_vett.obj"

# ADD BASE F90 /Ox /c /nologo
# ADD F90 /Ox /c /nologo
F90_PROJ=/Ox /c /nologo 
# ADD BASE RSC /l 0x410 /d "NDEBUG"
# ADD RSC /l 0x410 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/lagr3.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/lagr3.pdb" /machine:I386 /out:"$(OUTDIR)/lagr3.exe" 
LINK32_OBJS= \
	".\lagr3.obj" \
	".\norme_vett.obj"

"$(OUTDIR)\lagr3.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "lagr3 - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\lagr3.exe"

CLEAN : 
	-@erase ".\lagr3.exe"
	-@erase ".\lagr3.obj"
	-@erase ".\norme_vett.obj"
	-@erase ".\lagr3.ilk"
	-@erase ".\lagr3.pdb"

# ADD BASE F90 /Zi /c /nologo
# ADD F90 /Zi /c /nologo
F90_PROJ=/Zi /c /nologo /Fd"lagr3.pdb" 
# ADD BASE RSC /l 0x410 /d "_DEBUG"
# ADD RSC /l 0x410 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/lagr3.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/lagr3.pdb" /debug /machine:I386 /out:"$(OUTDIR)/lagr3.exe" 
LINK32_OBJS= \
	".\lagr3.obj" \
	".\norme_vett.obj"

"$(OUTDIR)\lagr3.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.for.obj:
   $(F90) $(F90_PROJ) $<  

.f.obj:
   $(F90) $(F90_PROJ) $<  

.f90.obj:
   $(F90) $(F90_PROJ) $<  

################################################################################
# Begin Target

# Name "lagr3 - Win32 Release"
# Name "lagr3 - Win32 Debug"

!IF  "$(CFG)" == "lagr3 - Win32 Release"

!ELSEIF  "$(CFG)" == "lagr3 - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\lagr3.f

"$(INTDIR)\lagr3.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE="\Users\Mario-PC\Desktop\calcolo_numerico\Z_Funzioni\norme_vett.f"

"$(INTDIR)\norme_vett.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


# End Source File
# End Target
# End Project
################################################################################
