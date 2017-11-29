AM_CPPFLAGS=-I$(top_srcdir)/src

AM_LDFLAGS=-lrt -lpthread -ldl
LDADD=$(top_builddir)/src/message/libtfsmessage.a \
      $(top_builddir)/src/common/libtfscommon.a\
      $(top_builddir)/src/tbsys/libtbsys.a\
      $(top_builddir)/src/tbnet/libtbnet.a

bin_PROGRAMS = adminserver

adminserver_SOURCES = adminserver.cpp  adminserver.h
