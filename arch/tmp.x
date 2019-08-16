##########################################################
#ARCH    Linux aarch64, gfortran compiler with gcc  #serial smpar dmpar dm+sm
#
DESCRIPTION     =       GNU ($SFC/$SCC)
DMPARALLEL      =       # 1
OMPCPP          =       # -D_OPENMP
OMP             =       # -fopenmp
OMPCC           =       # -fopenmp
SFC             =       gfortran
SCC             =       gcc
CCOMP           =       gcc
DM_FC           =       mpif90 -f90=$(SFC)
DM_CC           =       mpicc -cc=$(SCC) -DMPI2_SUPPORT
FC              =       CONFIGURE_FC
CC              =       CONFIGURE_CC
LD              =       $(FC)
RWORDSIZE       =       CONFIGURE_RWORDSIZE
PROMOTION       =       #-fdefault-real-8
ARCH_LOCAL      =       -DNONSTANDARD_SYSTEM_SUBR  -DWRF_USE_CLM
CFLAGS_LOCAL    =       -w -O3 -c
LDFLAGS_LOCAL   =
CPLUSPLUSLIB    =
ESMF_LDFLAG     =       $(CPLUSPLUSLIB)
FCOPTIM         =       -O2 -ftree-vectorize -funroll-loops -march=armv8-a
FCREDUCEDOPT    =       $(FCOPTIM)
FCNOOPT         =       -O0
FCDEBUG         =       # -g $(FCNOOPT) # -ggdb -fbacktrace -fcheck=bounds,do,mem,pointer -ffpe-trap=invalid,zero,overflow
FORMAT_FIXED    =       -ffixed-form
FORMAT_FREE     =       -ffree-form -ffree-line-length-none
FCSUFFIX        =
BYTESWAPIO      =       -fconvert=big-endian -frecord-marker=4
FCBASEOPTS_NO_G =       -w $(FORMAT_FREE) $(BYTESWAPIO)
FCBASEOPTS      =       $(FCBASEOPTS_NO_G) $(FCDEBUG)
MODULE_SRCH_FLAG =
TRADFLAG        =      CONFIGURE_TRADFLAG
CPP             =      /lib/cpp CONFIGURE_CPPFLAGS
AR              =      ar
ARFLAGS         =      ru
M4              =      m4 -G
RANLIB          =      ranlib
RLFLAGS         =
CC_TOOLS        =      $(SCC)
