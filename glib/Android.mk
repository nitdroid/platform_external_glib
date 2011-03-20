LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    ./libcharset/localcharset.c \
    garray.c        \
    gasyncqueue.c   \
    gatomic.c       \
    gbacktrace.c    \
    gbase64.c       \
    gbookmarkfile.c \
    gcache.c        \
    gchecksum.c	    \
    gcompletion.c   \
    gconvert.c      \
    gdataset.c      \
    gdate.c         \
    gdir.c          \
    gerror.c        \
    gfileutils.c    \
    ghash.c         \
    ghook.c         \
    giochannel.c    \
    gkeyfile.c      \
    glist.c         \
    gmain.c         \
    gmappedfile.c   \
    gmarkup.c       \
    gmem.c          \
    gmessages.c     \
    gnode.c         \
    goption.c       \
    gpattern.c      \
    gprimes.c       \
    gqsort.c        \
    gqueue.c        \
    grel.c          \
    grand.c         \
    gscanner.c      \
    gsequence.c     \
    gshell.c        \
    gslice.c        \
    gslist.c        \
    gstdio.c        \
    gstrfuncs.c     \
    gstring.c       \
    gthread.c       \
    gthreadpool.c   \
    gtimer.c        \
    gtree.c         \
    guniprop.c      \
    gutf8.c         \
    gunibreak.c     \
    gunicollate.c   \
    gunidecomp.c    \
    gutils.c        \
    gprintf.c       \
    giounix.c       \
    gspawn.c        \
    gvariant.c      \
    gvariant-core.c \
    gvarianttype.c  \
    gvarianttypeinfo.c  \
    gvariant-serialiser.c \
    gbuffer.c       \
    gbitlock.c      \
    gtestutils.c    \
	libiconv/iconv.c \
	libiconv/localcharset.c
##

LOCAL_MODULE:= libglib-2.0
LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES := 			\
	$(GLIB_TOP)			\
	$(GLIB_TOP)/android/		\
	$(LOCAL_PATH)/libiconv        \
	$(LOCAL_PATH)/gnulib            \
	$(LOCAL_PATH)/pcre

# ./glib private macros, copy from Makefile.am
LOCAL_CFLAGS := \
    -DLIBDIR=\"$(libdir)\"          \
    -DHAVE_CONFIG_H                 \
    \
    -DG_LOG_DOMAIN=\"GLib-GRegex\" \
    -DSUPPORT_UCP \
    -DSUPPORT_UTF8 \
    -DNEWLINE=-1 \
    -DMATCH_LIMIT=10000000 \
    -DMATCH_LIMIT_RECURSION=10000000 \
    -DMAX_NAME_SIZE=32 \
    -DMAX_NAME_COUNT=10000 \
    -DMAX_DUPLENGTH=30000 \
    -DLINK_SIZE=2 \
    -DEBCDIC=0 \
    -DPOSIX_MALLOC_THRESHOLD=10 \
    -DG_DISABLE_DEPRECATED \
    -DGLIB_COMPILATION 

LOCAL_PRELINK_MODULE := false

include $(BUILD_SHARED_LIBRARY)
