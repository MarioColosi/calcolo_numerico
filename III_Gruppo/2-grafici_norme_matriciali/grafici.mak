# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=grafici - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to grafici - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "grafici - Win32 Release" && "$(CFG)" !=\
 "grafici - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "grafici.mak" CFG="grafici - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "grafici - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "grafici - Win32 Debug" (based on "Win32 (x86) Console Application")
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

!IF  "$(CFG)" == "grafici - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\grafici.exe"

CLEAN : 
	-@erase ".\grafici.exe"
	-@erase ".\grafici.obj"
	-@erase ".\norma_inf.obj"
	-@erase ".\norma_2.obj"
	-@erase ".\norma_1.obj"
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
BSC32_FLAGS=/nologo /o"$(OUTDIR)/grafici.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/grafici.pdb" /machine:I386 /out:"$(OUTDIR)/grafici.exe" 
LINK32_OBJS= \
	".\grafici.obj" \
	".\norma_inf.obj" \
	".\norma_2.obj" \
	".\norma_1.obj" \
	".\build_wilkinson.obj" \
	".\build_vandermonde.obj" \
	".\build_toepliz.obj" \
	".\build_hilbert.obj"

"$(OUTDIR)\grafici.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "grafici - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\grafici.exe"

CLEAN : 
	-@erase ".\grafici.exe"
	-@erase ".\grafici.obj"
	-@erase ".\norma_inf.obj"
	-@erase ".\norma_2.obj"
	-@erase ".\norma_1.obj"
	-@erase ".\build_wilkinson.obj"
	-@erase ".\build_vandermonde.obj"
	-@erase ".\build_toepliz.obj"
	-@erase ".\build_hilbert.obj"
	-@erase ".\grafici.ilk"
	-@erase ".\grafici.pdb"

# ADD BASE F90 /Zi /c /nologo
# ADD F90 /Zi /c /nologo
F90_PROJ=/Zi /c /nologo /Fd"grafici.pdb" 
# ADD BASE RSC /l 0x410 /d "_DEBUG"
# ADD RSC /l 0x410 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/grafici.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/grafici.pdb" /debug /machine:I386 /out:"$(OUTDIR)/grafici.exe" 
LINK32_OBJS= \
	".\grafici.obj" \
	".\norma_inf.obj" \
	".\norma_2.obj" \
	".\norma_1.obj" \
	".\build_wilkinson.obj" \
	".\build_vandermonde.obj" \
	".\build_toepliz.obj" \
	".\build_hilbert.obj"

"$(OUTDIR)\grafici.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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

# Name "grafici - Win32 Release"
# Name "grafici - Win32 Debug"

!IF  "$(CFG)" == "grafici - Win32 Release"

!ELSEIF  "$(CFG)" == "grafici - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\grafici.f

"$(INTDIR)\grafici.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=\Users\Grazia\Desktop\Fortran\Esercizi\Z_Funzioni\norma_inf.f

"$(INTDIR)\norma_inf.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=\Users\Grazia\Desktop\Fortran\Esercizi\Z_Funzioni\norma_2.f

"$(INTDIR)\norma_2.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=\Users\Grazia\Desktop\Fortran\Esercizi\Z_Funzioni\norma_1.f

"$(INTDIR)\norma_1.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


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
