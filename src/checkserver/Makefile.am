AM_CPPFLAGS=-I$(top_srcdir)/src\
            -I$(top_srcdir)/tbsys\
            -I$(top_srcdir)/tbnet

AM_LDFLAGS=-lrt -lpthread -ldl 

bin_PROGRAMS = checkserver
LDADD = $(top_builddir)/src/message/libtfsmessage.a\
        $(top_builddir)/src/common/libtfscommon.a\
	$(top_builddir)/src/requester/libtfsrequester.a\
	$(top_builddir)/src/clientv2/.libs/libtfsclientv2.a\
        $(top_builddir)/src/tbnet/libtbnet.a\
        $(top_builddir)/src/tbsys/libtbsys.a

checkserver_SOURCES = service.cpp checkserver.cpp check_manager.cpp default_server_helper.cpp checkserver.h check_manager.h default_server_helper.h base_server_helper.h
