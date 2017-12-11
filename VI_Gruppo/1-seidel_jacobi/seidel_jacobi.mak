# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=seidel_jacobi - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to seidel_jacobi - Win32\
 Debug.
!ENDIF 

!IF "$(CFG)" != "seidel_jacobi - Win32 Release" && "$(CFG)" !=\
 "seidel_jacobi - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "seidel_jacobi.mak" CFG="seidel_jacobi - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "seidel_jacobi - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "seidel_jacobi - Win32 Debug" (based on\
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

!IF  "$(CFG)" == "seidel_jacobi - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\seidel_jacobi.exe"

CLEAN : 
	-@erase ".\seidel_jacobi.exe"
	-@erase ".\seidel_jacobi.obj"
	-@erase ".\norme_vett.obj"
	-@erase ".\jacobi_ottimizzato.obj"
	-@erase ".\gauss_seidel.obj"

# ADD BASE F90 /Ox /c /nologo
# ADD F90 /Ox /c /nologo
F90_PROJ=/Ox /c /nologo 
# ADD BASE RSC /l 0x410 /d "NDEBUG"
# ADD RSC /l 0x410 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/seidel_jacobi.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/seidel_jacobi.pdb" /machine:I386\
 /out:"$(OUTDIR)/seidel_jacobi.exe" 
LINK32_OBJS= \
	".\seidel_jacobi.obj" \
	".\norme_vett.obj" \
	".\jacobi_ottimizzato.obj" \
	".\gauss_seidel.obj"

"$(OUTDIR)\seidel_jacobi.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "seidel_jacobi - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\seidel_jacobi.exe"

CLEAN : 
	-@erase ".\seidel_jacobi.exe"
	-@erase ".\seidel_jacobi.obj"
	-@erase ".\norme_vett.obj"
	-@erase ".\jacobi_ottimizzato.obj"
	-@erase ".\gauss_seidel.obj"
	-@erase ".\seidel_jacobi.ilk"
	-@erase ".\seidel_jacobi.pdb"

# ADD BASE F90 /Zi /c /nologo
# ADD F90 /Zi /c /nologo
F90_PROJ=/Zi /c /nologo /Fd"seidel_jacobi.pdb" 
# ADD BASE RSC /l 0x410 /d "_DEBUG"
# ADD RSC /l 0x410 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/seidel_jacobi.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/seidel_jacobi.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/seidel_jacobi.exe" 
LINK32_OBJS= \
	".\seidel_jacobi.obj" \
	".\norme_vett.obj" \
	".\jacobi_ottimizzato.obj" \
	".\gauss_seidel.obj"

"$(OUTDIR)\seidel_jacobi.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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

# Name "seidel_jacobi - Win32 Release"
# Name "seidel_jacobi - Win32 Debug"

!IF  "$(CFG)" == "seidel_jacobi - Win32 Release"

!ELSEIF  "$(CFG)" == "seidel_jacobi - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\seidel_jacobi.f

"$(INTDIR)\seidel_jacobi.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE="\Users\Mario-PC\Desktop\calcolo_numerico\Z_Funzioni\norme_vett.f"

"$(INTDIR)\norme_vett.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=\
"\Users\Mario-PC\Desktop\calcolo_numerico\Z_Subroutine\jacobi_ottimizzato.f"

"$(INTDIR)\jacobi_ottimizzato.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE="\Users\Mario-PC\Desktop\calcolo_numerico\Z_Subroutine\gauss_seidel.f"

"$(INTDIR)\gauss_seidel.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


# End Source File
# End Target
# End Project
################################################################################
