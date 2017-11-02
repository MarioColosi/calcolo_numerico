# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=verifica_equivalenza - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to verifica_equivalenza -\
 Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "verifica_equivalenza - Win32 Release" && "$(CFG)" !=\
 "verifica_equivalenza - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "verifica_equivalenza.mak"\
 CFG="verifica_equivalenza - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "verifica_equivalenza - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "verifica_equivalenza - Win32 Debug" (based on\
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
RSC=rc.exe
F90=fl32.exe

!IF  "$(CFG)" == "verifica_equivalenza - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\verifica_equivalenza.exe"

CLEAN : 
	-@erase ".\verifica_equivalenza.exe"
	-@erase ".\verifica_equivalenza.obj"

# ADD BASE F90 /Ox /c /nologo
# ADD F90 /Ox /c /nologo
F90_PROJ=/Ox /c /nologo 
# ADD BASE RSC /l 0x410 /d "NDEBUG"
# ADD RSC /l 0x410 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/verifica_equivalenza.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/verifica_equivalenza.pdb" /machine:I386\
 /out:"$(OUTDIR)/verifica_equivalenza.exe" 
LINK32_OBJS= \
	"$(INTDIR)/verifica_equivalenza.obj"

"$(OUTDIR)\verifica_equivalenza.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "verifica_equivalenza - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\verifica_equivalenza.exe"

CLEAN : 
	-@erase ".\verifica_equivalenza.exe"
	-@erase ".\verifica_equivalenza.obj"
	-@erase ".\verifica_equivalenza.ilk"
	-@erase ".\verifica_equivalenza.pdb"

# ADD BASE F90 /Zi /c /nologo
# ADD F90 /Zi /c /nologo
F90_PROJ=/Zi /c /nologo /Fd"verifica_equivalenza.pdb" 
# ADD BASE RSC /l 0x410 /d "_DEBUG"
# ADD RSC /l 0x410 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/verifica_equivalenza.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/verifica_equivalenza.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/verifica_equivalenza.exe" 
LINK32_OBJS= \
	"$(INTDIR)/verifica_equivalenza.obj"

"$(OUTDIR)\verifica_equivalenza.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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

# Name "verifica_equivalenza - Win32 Release"
# Name "verifica_equivalenza - Win32 Debug"

!IF  "$(CFG)" == "verifica_equivalenza - Win32 Release"

!ELSEIF  "$(CFG)" == "verifica_equivalenza - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\verifica_equivalenza.f

"$(INTDIR)\verifica_equivalenza.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
# End Target
# End Project
################################################################################
