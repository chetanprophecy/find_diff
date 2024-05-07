#!/bin/ksh
# Script generated by software licensed from Ab Initio.
# 
# Use and disclosure are subject to Ab Initio confidentiality and license terms.
# 
export AB_HOME;AB_HOME=${AB_HOME:-/etl/opt/abinitio/abinitio-V3-2-6}
export AB_COMPONENTS;AB_COMPONENTS="$AB_HOME"'/Projects/root/components'
export PATH
typeset _ab_uname=`uname`
case "$_ab_uname" in
Windows_* )
    PATH="$AB_HOME/bin;$PATH" ;;
CYGWIN_* )
    PATH="`cygpath "$AB_HOME"`/bin:/usr/local/bin:/usr/bin:/bin:$PATH" ;;
* )
    PATH="$AB_HOME/bin:$PATH" ;;
esac
unset GDE_EXECUTION
unset ENV
export AB_COMPATIBILITY;AB_COMPATIBILITY=3.2.6.4

# Deployed execution script for graph distribute.datalake compiled at 2019-03-27 16:06:20 using Co>Operating System version 3.2.6.4
# 
export AB_REPORT;AB_REPORT=${AB_REPORT:-'monitor=60 processes scroll=true'}
export AB_STRUCTURED_ERRORS;AB_STRUCTURED_ERRORS=0

# Begin Ab Initio shell utility functions

: ${_ab_uname:=`uname`}

function __AB_INVOKE_PROJECT
{
  export __AB_PROJECT_INVOKED=true
  typeset _AB_PROJECT_KSH="$1" ; shift
  typeset _AB_PROJECT_DIR="$1" ; shift
  typeset _AB_DEFINE_OR_EXECUTE="$1" ; shift
  typeset _AB_START_OR_END="$1" ; shift
  # Check that the project exists:
  if [ ! -r "$_AB_PROJECT_KSH" ] ; then
    print -r -u2 Warning: Cannot find common sandbox script: "$_AB_PROJECT_KSH"
    if [ ! -z "${_AB_CALLING_PROJECT:=}" ] ; then
      print -r -u2 Please check the common sandbox settings for the calling project: "$_AB_CALLING_PROJECT"
    fi
  fi
  if [ $# -gt 0 ] ; then
    . "$_AB_PROJECT_KSH" "$_AB_PROJECT_DIR" "$_AB_DEFINE_OR_EXECUTE" "$_AB_START_OR_END"  "$@"
  else
    . "$_AB_PROJECT_KSH" "$_AB_PROJECT_DIR" "$_AB_DEFINE_OR_EXECUTE" "$_AB_START_OR_END" 
  fi;
}

function __AB_DOTIT
{
  if [ $# -gt 0 ] ; then
    .  "$@"
  fi
}

function __AB_QUOTEIT {
  typeset queue q qq qed lotsaqs s trail
  q="'"
  qq='"'
  if [ X"$1" = X"" ] ; then
    print $q$q
    return
  fi
  lotsaqs=${q}${qq}${q}${qq}${q}
  if [ ${#1} -ge 10000 ]; then
    print -r -- "$1" | sed "s/$q/$lotsaqs/g; 1s/^/$q/; \$s/\$/$q/"
  else
    queue=${1%$q}
    if [ X"$queue" != X"$1" ] ; then
      trail="${qq}${q}${qq}" 
    else 
      trail=""
    fi
    oldIFS="$IFS"
    IFS=$q
    set -- $queue
    IFS="$oldIFS"
    print -rn "$q$1"
    shift
    for s; do
      print -rn "$lotsaqs$s"
    done
    print -r $q$trail
  fi
}

function __AB_dirname {
    case $_ab_uname in
    Windows_* | CYGWIN_* )
        typeset d='' p="$1"
        # Strip drive letter colon, if present, and put it into d.
        case $p in
        [A-Za-z]:* )
            d=${p%%:*}:
            p=${p#??}
            ;;
        esac
        # Remove trailing separators, though not the last character in the
        # pathname.
        while : true; do
            case $p in
            ?*[/\\] )
                p=${p%[/\\]} ;;
            * )
                break ;;
            esac
        done
        if [[ "$p" = ?*[/\\]* ]] ; then
            print -r -- "$d${p%[/\\]*}"
        elif [[ "$p" = [/\\]* ]] ; then
            print "$d/"
        else
            print "$d." 
        fi
        ;;
    * ) # Unix
        typeset p="$1"
        # Remove trailing separators, though not the last character in the
        # pathname.
        while : true; do
            case $p in
            ?*/ )
                p="${p%/}" ;;
            * )
                break ;;
            esac
        done
        case $p in
        ?*/* )
            print -r -- "${p%/*}" ;;
        /* )
            print / ;;
        * )
            print . ;;
        esac
        ;;
    esac
}

function __AB_concat_pathname {
    case $_ab_uname in
    Windows_* | CYGWIN_* )
        # Does not handle all cases of concatenating partially absolute
        # pathnames, those with only one of a drive letter or an initial
        # separator.
        case $2 in
        [/\\]* | [A-Za-z]:* )
            print -r -- "$2"
            ;;
        * )
            case $1 in
            # Assume that empty string means ".".  Avoid adding a
            # redundant separator.
            '' | *[/\\] )
                print -r -- "$1$2" ;;
            * )
                print -r -- "$1/$2" ;;
            esac
            ;;
        esac
        ;;
    * ) # Unix
        case $2 in
        /* )
            print -r -- "$2"
            ;;
        * )
            case $1 in
            # Assume that empty string means ".".  Avoid adding a
            # redundant separator.
            '' | */ )
                print -r -- "$1$2" ;;
            * )
                print -r -- "$1/$2" ;;
            esac
            ;;
        esac
        ;;
    esac
}

function __AB_COND {
if [ X"$1" = X0  -o X"$1" = Xfalse -o X"$1" = XFalse -o X"$1" = XF -o X"$1" = Xf ] ; then
  print "0"
else
  print "1"
fi
}

# End Ab Initio shell utility functions
# Check that the "air" program is found correctly on the PATH
case "$_ab_uname" in
  CYGWIN_* | Windows_* )
    _ab_expected_file=air.exe
    _ab_expected_bin=$AB_HOME/bin/$_ab_expected_file ;;
  * )
    _ab_expected_file=air
    _ab_expected_bin=$AB_HOME/bin/$_ab_expected_file
esac
if [ ! -x "$_ab_expected_bin" ]; then
  print "\n*** ERROR: Cannot find the program $_ab_expected_file in \$AB_HOME/bin"
  print "    AB_HOME is probably not set correctly.  Details:"
  print "    This script: $0"
  print "    AB_HOME:     $AB_HOME"
  print "    PATH:        $PATH"
  exit 1
fi
_ab_found_bin=$(whence air)
if [ "$_ab_found_bin" = "" ] || [ "$_ab_found_bin" -ot "$_ab_expected_bin" ] || [ "$_ab_found_bin" -nt "$_ab_expected_bin" ]; then
  if [ "$_ab_found_bin" = "" ]; then
    print "\n*** ERROR: The program $_ab_expected_bin is not on the path"
    print "    AB_HOME is probably not set correctly.  Details:"
    print "    This script: $0"
    print "    AB_HOME:     $AB_HOME"
    print "    PATH:        $PATH"
  else
    case "$_ab_uname" in
      CYGWIN_* )
        _ab_found_bin=`cygpath -m "$_ab_found_bin"` ;;
    esac
    print "\n*** ERROR: Wrong air found on the PATH: $_ab_found_bin"
    print "    Should be via \$AB_HOME/bin: $_ab_expected_bin"
    print "    AB_HOME or PATH is not set correctly.  Details:"
    print "    This script: $0"
    print "    AB_HOME:     $AB_HOME"
    print "    PATH:        $PATH"
  fi
  exit 1
fi

if [ X"${PROJECT_DIR:-}" = X"" ]; then
  # Compute the script directory from $0
  __ab_arg0="$0"
  # Expand symlinks.
  while [ -L "$__ab_arg0" ]
  do
    if [ ! -f "$__ab_arg0" ]; then
      print -r \
"Internal error: '$0' is a symlink and some problem occurred expanding
it.  Please define the environment variable PROJECT_DIR to be the project
base directory before invoking this script."
      exit 1
    fi
    __ab_ls_output="$(/bin/ls -ld "$__ab_arg0")"
    __ab_target_pathname="${__ab_ls_output#*-> }"
    __ab_arg0="$(__AB_concat_pathname "$(__AB_dirname "$__ab_arg0")" "$__ab_target_pathname")"
  done
  
  __ab_script_dir="$(__AB_dirname "$__ab_arg0")"
fi

# Project parameters:
export PROJECT_DIR;PROJECT_DIR=${PROJECT_DIR:-/etl/devel/appconf.bp35_idw_direct/idw_direct/users/ssrivats/aicoe/pub_dxf_3_5}
case "$_ab_uname" in
CYGWIN_* )
   PROJECT_DIR="$(cygpath -m "$PROJECT_DIR")"
esac
typeset _AB_SAVED_PROJECT_DIR
_AB_SAVED_PROJECT_DIR="${PROJECT_DIR}"
export AB_GRAPH_NAME;AB_GRAPH_NAME=distribute.datalake

# Host Setup Commands:
. /etl/etc/environment
_AB_PROXY_DIR="$(pwd)/"distribute.datalake-ProxyDir-$$
rm -rf "${_AB_PROXY_DIR}"
mkdir "${_AB_PROXY_DIR}"
function __AB_CLEANUP_PROXY_FILES
{
   rm -rf "${_AB_PROXY_DIR}"
   rm -rf "${AB_EXTERNAL_PROXY_DIR}"
   return
}
trap '__AB_CLEANUP_PROXY_FILES' EXIT
# Work around pdksh bug: the EXIT handler is not executed upon a signal.
trap '_AB_status=$?; __AB_CLEANUP_PROXY_FILES; exit $_AB_status' HUP INT QUIT TERM

if [ $# -gt 0 ]; then
   air sandbox run "${PROJECT_DIR}"'/mp/distribute.datalake.mp' "$@"  -prohibit-legacy-codegen
   mpjret=$?
else
   air sandbox run "${PROJECT_DIR}"'/mp/distribute.datalake.mp'   -prohibit-legacy-codegen
   mpjret=$?
fi

exit $mpjret
