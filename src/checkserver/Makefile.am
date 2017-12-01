AM_CPPFLAGS=-I$(top_srcdir)/src\
            $(READLINE_INCLUDE)

AM_LDFLAGS=-lrt -lpthread -ldl $(READLINE_LIB)

bin_PROGRAMS = checkserver

LDADD = $(UNIQUE_STORE_LDFLAGS)\
        $(TAIR_CACHE_LDFLAGS) \
	$(top_builddir)/src/message/libtfsmessage.a\
        $(top_builddir)/src/common/libtfscommon.a


checkserver_SOURCES = checkserver.cpp checkserver.h server_helper.cpp server_helper.h
