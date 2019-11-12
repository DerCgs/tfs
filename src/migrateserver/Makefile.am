AM_CPPFLAGS =-I$(top_srcdir)/src

AM_LDFLAGS=-lrt -lpthread -ldl

LDADD=$(top_builddir)/src/clientv2/.libs/libtfsclientv2.a\
      $(top_builddir)/src/requester/libtfsrequester.a\
      $(top_builddir)/src/message/libtfsmessage.a\
      $(top_builddir)/src/common/libtfscommon.a\
      $(UNIQUE_STORE_LDFLAGS)\
      $(TAIR_CACHE_LDFLAGS)\
      $(top_builddir)/src/tbnet/libtbnet.a\
      $(top_builddir)/src/tbsys/libtbsys.a

noinst_LIBRARIES = libmigrateserver.a

MIGRATESERVER_SOURCE_LIST_HEADER=ms_define.h migrateserver.h migrate_manager.h

MIGRATESERVER_SOURCE_LIST_CPP=ms_define.cpp migrateserver.cpp migrate_manager.cpp

libmigrateserver_a_SOURCES=$(MIGRATESERVER_SOURCE_LIST_CPP) $(MIGRATESERVER_SOURCE_LIST_HEADER)

bin_PROGRAMS = migrateserver

migrateserver_SOURCES = service.cpp $(libmigrateserver_a_SOURCES)
