# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=matrici_tridiagonali - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to matrici_tridiagonali -\
 Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "matrici_tridiagonali - Win32 Release" && "$(CFG)" !=\
 "matrici_tridiagonali - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "matrici_tridiagonali.mak"\
 CFG="matrici_tridiagonali - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "matrici_tridiagonali - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "matrici_tridiagonali - Win32 Debug" (based on\
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

!IF  "$(CFG)" == "matrici_tridiagonali - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\matrici_tridiagonali.exe"

CLEAN : 
	-@erase ".\matrici_tridiagonali.exe"
	-@erase ".\matrici_tridiagonali.obj"
	-@erase ".\norme_vett.obj"
	-@erase ".\jacobi_ottimizzato.obj"
	-@erase ".\gauss_seidel.obj"
	-@erase ".\init_matrix.obj"

# ADD BASE F90 /Ox /c /nologo
# ADD F90 /Ox /c /nologo
F90_PROJ=/Ox /c /nologo 
# ADD BASE RSC /l 0x410 /d "NDEBUG"
# ADD RSC /l 0x410 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/matrici_tridiagonali.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/matrici_tridiagonali.pdb" /machine:I386\
 /out:"$(OUTDIR)/matrici_tridiagonali.exe" 
LINK32_OBJS= \
	".\matrici_tridiagonali.obj" \
	".\norme_vett.obj" \
	".\jacobi_ottimizzato.obj" \
	".\gauss_seidel.obj" \
	".\init_matrix.obj"

"$(OUTDIR)\matrici_tridiagonali.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "matrici_tridiagonali - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\matrici_tridiagonali.exe"

CLEAN : 
	-@erase ".\matrici_tridiagonali.exe"
	-@erase ".\matrici_tridiagonali.obj"
	-@erase ".\norme_vett.obj"
	-@erase ".\jacobi_ottimizzato.obj"
	-@erase ".\gauss_seidel.obj"
	-@erase ".\init_matrix.obj"
	-@erase ".\matrici_tridiagonali.ilk"
	-@erase ".\matrici_tridiagonali.pdb"

# ADD BASE F90 /Zi /c /nologo
# ADD F90 /Zi /c /nologo
F90_PROJ=/Zi /c /nologo /Fd"matrici_tridiagonali.pdb" 
# ADD BASE RSC /l 0x410 /d "_DEBUG"
# ADD RSC /l 0x410 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/matrici_tridiagonali.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/matrici_tridiagonali.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/matrici_tridiagonali.exe" 
LINK32_OBJS= \
	".\matrici_tridiagonali.obj" \
	".\norme_vett.obj" \
	".\jacobi_ottimizzato.obj" \
	".\gauss_seidel.obj" \
	".\init_matrix.obj"

"$(OUTDIR)\matrici_tridiagonali.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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

# Name "matrici_tridiagonali - Win32 Release"
# Name "matrici_tridiagonali - Win32 Debug"

!IF  "$(CFG)" == "matrici_tridiagonali - Win32 Release"

!ELSEIF  "$(CFG)" == "matrici_tridiagonali - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\matrici_tridiagonali.f

"$(INTDIR)\matrici_tridiagonali.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=\
\Users\xmari\Desktop\UNI\Calcolo_Numerico\Esercizi\Z_Funzioni\norme_vett.f

"$(INTDIR)\norme_vett.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=\
\Users\xmari\Desktop\UNI\Calcolo_Numerico\Esercizi\Z_Subroutine\jacobi_ottimizzato.f

"$(INTDIR)\jacobi_ottimizzato.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=\
\Users\xmari\Desktop\UNI\Calcolo_Numerico\Esercizi\Z_Subroutine\gauss_seidel.f

"$(INTDIR)\gauss_seidel.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=\
\Users\xmari\Desktop\UNI\Calcolo_Numerico\Esercizi\Z_Subroutine\init_matrix.f

"$(INTDIR)\init_matrix.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


# End Source File
# End Target
# End Project
################################################################################
