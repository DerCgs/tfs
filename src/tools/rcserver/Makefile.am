AM_CPPFLAGS=-I$(top_srcdir)/src

AM_LDFLAGS=-lz -lrt -lpthread -ldl  -luuid

bin_PROGRAMS = parse gene rcstat

LDADD = $(top_builddir)/src/tools/util/libtfstoolsutil.a\
	$(top_builddir)/src/dataserver/libdataserver.a\
	$(top_builddir)/src/message/libtfsmessage.a\
	$(top_builddir)/src/common/libtfscommon.a\
	$(top_builddir)/src/tbnet/libtbnet.a\
	$(top_builddir)/src/tbsys/libtbsys.a

parse_SOURCES = parse_session_id.cpp
gene_SOURCES = gene_session_id.cpp
rcstat_SOURCES = rcstat.cpp rcstat.h

