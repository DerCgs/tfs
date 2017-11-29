AM_CPPFLAGS=-I$(top_srcdir)/src

AM_LDFLAGS=-lrt -lpthread -ldl
LDADD=$(top_builddir)/src/message/libtfsmessage.a \
      $(top_builddir)/src/common/libtfscommon.a

bin_PROGRAMS = adminserver

adminserver_SOURCES = adminserver.cpp  adminserver.h
