# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=norme_matriciali - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to norme_matriciali - Win32\
 Debug.
!ENDIF 

!IF "$(CFG)" != "norme_matriciali - Win32 Release" && "$(CFG)" !=\
 "norme_matriciali - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "norme_matriciali.mak" CFG="norme_matriciali - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "norme_matriciali - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "norme_matriciali - Win32 Debug" (based on\
 "Win32 (x86) Console Application")
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

!IF  "$(CFG)" == "norme_matriciali - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\norme_matriciali.exe"

CLEAN : 
	-@erase ".\norme_matriciali.exe"
	-@erase ".\norme_matriciali.obj"

# ADD BASE F90 /Ox /c /nologo
# ADD F90 /Ox /c /nologo
F90_PROJ=/Ox /c /nologo 
# ADD BASE RSC /l 0x410 /d "NDEBUG"
# ADD RSC /l 0x410 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/norme_matriciali.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/norme_matriciali.pdb" /machine:I386\
 /out:"$(OUTDIR)/norme_matriciali.exe" 
LINK32_OBJS= \
	"$(INTDIR)/norme_matriciali.obj"

"$(OUTDIR)\norme_matriciali.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "norme_matriciali - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\norme_matriciali.exe"

CLEAN : 
	-@erase ".\norme_matriciali.exe"
	-@erase ".\norme_matriciali.obj"
	-@erase ".\norme_matriciali.ilk"
	-@erase ".\norme_matriciali.pdb"

# ADD BASE F90 /Zi /c /nologo
# ADD F90 /Zi /c /nologo
F90_PROJ=/Zi /c /nologo /Fd"norme_matriciali.pdb" 
# ADD BASE RSC /l 0x410 /d "_DEBUG"
# ADD RSC /l 0x410 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/norme_matriciali.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/norme_matriciali.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/norme_matriciali.exe" 
LINK32_OBJS= \
	"$(INTDIR)/norme_matriciali.obj"

"$(OUTDIR)\norme_matriciali.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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

# Name "norme_matriciali - Win32 Release"
# Name "norme_matriciali - Win32 Debug"

!IF  "$(CFG)" == "norme_matriciali - Win32 Release"

!ELSEIF  "$(CFG)" == "norme_matriciali - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\norme_matriciali.f

"$(INTDIR)\norme_matriciali.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
# End Target
# End Project
################################################################################
