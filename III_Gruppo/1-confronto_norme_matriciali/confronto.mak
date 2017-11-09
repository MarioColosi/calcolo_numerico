# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=confronto - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to confronto - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "confronto - Win32 Release" && "$(CFG)" !=\
 "confronto - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "confronto.mak" CFG="confronto - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "confronto - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "confronto - Win32 Debug" (based on "Win32 (x86) Console Application")
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

!IF  "$(CFG)" == "confronto - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\confronto.exe"

CLEAN : 
	-@erase ".\confronto.exe"
	-@erase ".\confronto.obj"
	-@erase ".\build_wilkinson.obj"
	-@erase ".\build_vandermonde.obj"
	-@erase ".\build_toepliz.obj"
	-@erase ".\build_hilbert.obj"

# ADD BASE F90 /Ox /c /nologo
# ADD F90 /Ox /c /nologo
F90_PROJ=/Ox /c /nologo 
# ADD BASE RSC /l 0x410 /d "NDEBUG"
# ADD RSC /l 0x410 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/confronto.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/confronto.pdb" /machine:I386 /out:"$(OUTDIR)/confronto.exe" 
LINK32_OBJS= \
	".\confronto.obj" \
	".\build_wilkinson.obj" \
	".\build_vandermonde.obj" \
	".\build_toepliz.obj" \
	".\build_hilbert.obj"

"$(OUTDIR)\confronto.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "confronto - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\confronto.exe"

CLEAN : 
	-@erase ".\confronto.exe"
	-@erase ".\confronto.obj"
	-@erase ".\build_wilkinson.obj"
	-@erase ".\build_vandermonde.obj"
	-@erase ".\build_toepliz.obj"
	-@erase ".\build_hilbert.obj"
	-@erase ".\confronto.ilk"
	-@erase ".\confronto.pdb"

# ADD BASE F90 /Zi /c /nologo
# ADD F90 /Zi /c /nologo
F90_PROJ=/Zi /c /nologo /Fd"confronto.pdb" 
# ADD BASE RSC /l 0x410 /d "_DEBUG"
# ADD RSC /l 0x410 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/confronto.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/confronto.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/confronto.exe" 
LINK32_OBJS= \
	".\confronto.obj" \
	".\build_wilkinson.obj" \
	".\build_vandermonde.obj" \
	".\build_toepliz.obj" \
	".\build_hilbert.obj"

"$(OUTDIR)\confronto.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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

# Name "confronto - Win32 Release"
# Name "confronto - Win32 Debug"

!IF  "$(CFG)" == "confronto - Win32 Release"

!ELSEIF  "$(CFG)" == "confronto - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\confronto.f

"$(INTDIR)\confronto.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=\Users\Grazia\Desktop\Fortran\Esercizi\Z_Subroutine\build_wilkinson.f

"$(INTDIR)\build_wilkinson.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=\Users\Grazia\Desktop\Fortran\Esercizi\Z_Subroutine\build_vandermonde.f

"$(INTDIR)\build_vandermonde.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=\Users\Grazia\Desktop\Fortran\Esercizi\Z_Subroutine\build_toepliz.f

"$(INTDIR)\build_toepliz.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=\Users\Grazia\Desktop\Fortran\Esercizi\Z_Subroutine\build_hilbert.f

"$(INTDIR)\build_hilbert.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


# End Source File
# End Target
# End Project
################################################################################
