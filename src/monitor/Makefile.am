AM_CPPFLAGS=-I$(top_srcdir)/src

AM_LDFLAGS=-lrt -lpthread -ldl

LDADD=$(top_builddir)/src/message/libtfsmessage.a \
      $(top_builddir)/src/common/libtfscommon.a \
      $(top_builddir)/src/tbnet/libtbnet.a \
      $(top_builddir)/src/tbsys/libtbsys.a

bin_PROGRAMS = ha_monitor ns_ping

ha_monitor_SOURCES = ha_monitor.cpp

ns_ping_SOURCES = ns_ping.cpp
