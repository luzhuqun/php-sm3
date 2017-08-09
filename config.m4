dnl $Id$
dnl config.m4 for extension sm3

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(sm3, for sm3 support,
dnl Make sure that the comment is aligned:
dnl [  --with-sm3             Include sm3 support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(sm3, whether to enable sm3 support,
Make sure that the comment is aligned:
[  --enable-sm3           Enable sm3 support])

if test "$PHP_SM3" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-sm3 -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/sm3.h"  # you most likely want to change this
  dnl if test -r $PHP_SM3/$SEARCH_FOR; then # path given as parameter
  dnl   SM3_DIR=$PHP_SM3
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for sm3 files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       SM3_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$SM3_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the sm3 distribution])
  dnl fi

  dnl # --with-sm3 -> add include path
  dnl PHP_ADD_INCLUDE($SM3_DIR/include)

  dnl # --with-sm3 -> check for lib and symbol presence
  dnl LIBNAME=sm3 # you may want to change this
  dnl LIBSYMBOL=sm3 # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $SM3_DIR/$PHP_LIBDIR, SM3_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_SM3LIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong sm3 lib version or lib not found])
  dnl ],[
  dnl   -L$SM3_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(SM3_SHARED_LIBADD)

  PHP_NEW_EXTENSION(sm3, sm3.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
