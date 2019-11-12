AM_CPPFLAGS =-I$(top_srcdir)/src

AM_LDFLAGS=-lrt -lpthread -ldl

LDADD=$(top_builddir)/src/clientv2/.libs/libtfsclientv2.a\
      $(top_builddir)/src/message/libtfsmessage.a\
      $(top_builddir)/src/common/libtfscommon.a\
      $(UNIQUE_STORE_LDFLAGS)\
      $(TAIR_CACHE_LDFLAGS)\
      $(top_builddir)/src/tbnet/libtbnet.a\
      $(top_builddir)/src/tbsys/libtbsys.a

noinst_LIBRARIES = libsyncserver.a

SYNCSERVER_SOURCE_LIST_HEADER= ss_define.h syncserver.h sync_manager.h

SYNCSERVER_SOURCE_LIST=ss_define.cpp syncserver.cpp sync_manager.cpp

libsyncserver_a_SOURCES=$(SYNCSERVER_SOURCE_LIST) $(SYNCSERVER_SOURCE_LIST_HEADER)

bin_PROGRAMS = syncserver
syncserver_SOURCES = service.cpp ${libsyncserver_a_SOURCES}
