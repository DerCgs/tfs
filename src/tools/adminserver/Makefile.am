AM_CPPFLAGS=-I$(top_srcdir)/src\
	    -I$(TBLIB_ROOT)/include/tbsys\
	    -I$(TBLIB_ROOT)/include/tbnet\
            $(READLINE_INCLUDE)

AM_LDFLAGS=-lrt -lpthread -ldl $(READLINE_LIB)

bin_PROGRAMS = adminservertool

LDADD = $(top_builddir)/src/tools/util/libtfstoolsutil.a\
        $(top_builddir)/src/message/libtfsmessage.a\
	$(top_builddir)/src/common/libtfscommon.a\
	$(top_builddir)/src/tbnet/libtbnet.a\
	$(top_builddir)/src/tbsys/libtbsys.a

adminservertool_SOURCES =  adminservertool.cpp
