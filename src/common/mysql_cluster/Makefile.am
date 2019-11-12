AM_CPPFLAGS=-Wall -I$(top_srcdir)/src\
            $(MYSQL_CFLAGS)

AM_LDFLAGS=-lz -lrt -lpthread -ldl -luuid

AM_LDFLAGS+=$(MYSQL_LDFLAGS)

LDADD=$(top_builddir)/src/message/libtfsmessage.a \
      $(top_builddir)/src/common/libtfscommon.a\
      $(top_builddir)/src/tbnet/libtbnet.a \
      $(top_builddir)/src/tbsys/libtbsys.a

noinst_LIBRARIES=libkvengine_mysql.a

kvengine_mysql_INCLUDE= database_pool.h  mysql_database_helper.h  mysql_engine_helper.h

libkvengine_mysql_a_SOURCES=database_pool.cpp  mysql_database_helper.cpp mysql_engine_helper.cpp $(kvengine_mysql_INCLUDE)

