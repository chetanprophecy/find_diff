# DO NOT EDIT THIS FILE
# This file is automatically generated.

# ${_AB_PROJECT_DIR}: path to this project
# ${_AB_DEFINE_OR_EXECUTE}: 'define' or 'execute' or 'undefine'
# ${_AB_START_OR_END}: 'start' or 'end'
shift 3  # remove projectdir, defineorexecute, and startorend from command line
if [  ! -d "${_AB_PROJECT_DIR}" ]; then
   print -r -- 'Error: cannot find project: "'"${_AB_PROJECT_DIR}"'"'
   exit 1
fi

_AB_PROJECT_DIR=$(cd "$_AB_PROJECT_DIR"; print -r $PWD)
case $_ab_uname in
CYGWIN_* )
   _AB_PROJECT_DIR="${_AB_PROJECT_DIR:+$(cygpath -m "$_AB_PROJECT_DIR")}"
esac

# Check for recursion using an id unique to this sandbox
if [ X"${_AB_recursion_aa579084_e8536738cd2_1c7a_c:-}" = X"" ]; then
   _AB_recursion_aa579084_e8536738cd2_1c7a_c=1
else
   print -r -- "Recursive invocation of ${_AB_PROJECT_DIR} ${_AB_DEFINE_OR_EXECUTE} ${_AB_START_OR_END} $* ; exiting"
   exit 1
fi

# Check that AB_HOME is set
if [ -z "${AB_HOME}" ]; then
   print --  "AB_HOME is not set"
   exit 1
fi

# Check that AB_HOME is set correctly
__ab_home_version_string__=$("${AB_HOME}"/bin/m_env -v)
if [ -z "${__ab_home_version_string__}" ]; then
   print --  "AB_HOME=${AB_HOME}" 
   print --  "AB_HOME is not correctly set"
   exit 1
fi

function _ab_invoke_project_scriptlet {
   # Used to guard invocation of project scriptlets for format 3 sandboxes
   # This function will be invoked only for legacy scripts 
   
   # ${1} = project key
   # ${2} = project location
   # ${3} = project start/end
   
   # _AB_EVOL_SCRIPTLETS_INVOCATION_COUNT used to detect first invocation of this function
   # _AB_EVOL_PROJECT_UNIQUE_KEYS_ARRAY array with unique evol project keys
   # _AB_EVOL_PROJECT_INVOKE_CNTS_ARRAY array with unique evol project counts
   # The 2 arrays have the same size and are used together
   
   typeset _ab_invoke_project_key="${1}"
   typeset _ab_invoke_project_loc="${2}"
   typeset _ab_invoke_start_or_end="${3}"
   typeset _ab_invoke_project_slot=0
   typeset _ab_array_size=0
   typeset _ab_loop_index=0
   typeset _ab_invoke_project_cnt=0
   typeset _ab_project_key_exists=0
   
   if [ X"${_AB_EVOL_SCRIPTLETS_INVOCATION_COUNT:-}" = X"" ]; then
      _AB_EVOL_SCRIPTLETS_INVOCATION_COUNT=0
   fi
   
   if [ X"${_AB_EVOL_SCRIPTLETS_INVOCATION_COUNT}" = X"0" ]; then
      let _AB_EVOL_SCRIPTLETS_INVOCATION_COUNT=_AB_EVOL_SCRIPTLETS_INVOCATION_COUNT+1
      # First time this function was invoked, the two arrays are not defined
      # Insert the current project key in slot 0, this will define the array
      _AB_EVOL_PROJECT_UNIQUE_KEYS_ARRAY[0]="${_ab_invoke_project_key}"
      # Insert the current count in slot 0, this will define the array
      _AB_EVOL_PROJECT_INVOKE_CNTS_ARRAY[0]=0
   else
      let _AB_EVOL_SCRIPTLETS_INVOCATION_COUNT=_AB_EVOL_SCRIPTLETS_INVOCATION_COUNT+1
      # Search the keys array for the slot of the current project
      let _ab_array_size=${#_AB_EVOL_PROJECT_UNIQUE_KEYS_ARRAY[*]}
      while [ ${_ab_loop_index} -lt ${_ab_array_size} ]; do
         if [ "X${_AB_EVOL_PROJECT_UNIQUE_KEYS_ARRAY[_ab_loop_index]}" = "X${_ab_invoke_project_key}" ]; then
            # Remember the slot where we found this project
            let _ab_invoke_project_slot=_ab_loop_index
            # Current project key is in keys array
            let _ab_project_key_exists=1
            break
         fi
         let _ab_loop_index=_ab_loop_index+1
      done
   fi
   
   if [ X"${_ab_invoke_start_or_end}" = "Xstart" -a X"${_ab_project_key_exists}" = "X0" ]; then
      # Current project was not found in the keys array
      let _ab_invoke_project_slot=_ab_array_size
      # Add current project at the end of the keys array
      _AB_EVOL_PROJECT_UNIQUE_KEYS_ARRAY[_ab_invoke_project_slot]="${_ab_invoke_project_key}"
      # Set the count at the end of the counts array
      _AB_EVOL_PROJECT_INVOKE_CNTS_ARRAY[_ab_invoke_project_slot]=0
   fi
   
   if [  X"${_ab_invoke_start_or_end}" = "Xend" -a X"${_ab_project_key_exists}" = "X0" ]; then
      # This is a error, project end was called before project start
      # Print a message and exit 
      print -r -- "project end was called before project start; exiting"
      exit 1
   fi
   
   if [ X"${_ab_invoke_start_or_end}" = "Xstart" ]; then
      let _ab_invoke_project_cnt=${_AB_EVOL_PROJECT_INVOKE_CNTS_ARRAY[_ab_invoke_project_slot]}
      if [ X"${_ab_invoke_project_cnt}"  = "X0" ]; then
          . "${_ab_invoke_project_loc}/.project-start.ksh"
      fi
      let _AB_EVOL_PROJECT_INVOKE_CNTS_ARRAY[_ab_invoke_project_slot]=${_AB_EVOL_PROJECT_INVOKE_CNTS_ARRAY[_ab_invoke_project_slot]}+1
   fi
   
   if [ "X${_ab_invoke_start_or_end}" = "Xend" ]; then
      let _AB_EVOL_PROJECT_INVOKE_CNTS_ARRAY[_ab_invoke_project_slot]=${_AB_EVOL_PROJECT_INVOKE_CNTS_ARRAY[_ab_invoke_project_slot]}-1
      let _ab_invoke_project_cnt=${_AB_EVOL_PROJECT_INVOKE_CNTS_ARRAY[_ab_invoke_project_slot]}
      if [ X"${_ab_invoke_project_cnt}"  = "X0" ]; then
          . "${_ab_invoke_project_loc}/.project-end.ksh"
      fi
   fi
}

function _ab_compare_version_2_15_7 {
   # Used to compare version to 2.15.7
   typeset _ab_version_string=$("${AB_HOME}/bin/m_env" -v1)
   typeset oldIFS="${IFS}"
   IFS=".r"
   set -A _ab_version_array ${_ab_version_string}
   IFS="${oldIFS}"
   let _ab_numeric_version=1000*${_ab_version_array[0]}+${_ab_version_array[1]}
   let _ab_target_version=1000*2+15
   if [ $_ab_numeric_version -gt $_ab_target_version ]; then
      # Later than 2.15.*  releases
      print -- 1
      return 0
   fi
   if [ $_ab_numeric_version -lt $_ab_target_version ]; then
      # Earlier than 2.15.*  releases
      print -- -1
      return 0
   fi
   # Must be a 2.15.*  release
   if [ ${_ab_version_array[2]} -ge 7 ]; then
      # Later  than 2.15.7  release
      print -- 1
      return 0
   fi
   
   if [ ${_ab_version_array[2]} -lt 6 ]; then
      # Earlier  than 2.15.6  release
      print -- -1
      return 0
   fi
   
   # Must be a 2.15.6.r??
   if [ ${_ab_version_array[4]} -ge 35 ]; then
      print -- 1
      return 0
   fi
   print -- -1
   return 0
}

function _ab_define_parameters {
   typeset _AB_PROJECT_DIR="$1"; shift
   typeset _AB_DEFINE_OR_EXECUTE="$1"; shift
   typeset _AB_START_OR_END="$1"; shift
   typeset _ab_uname="$(uname)"
   typeset _ab_tmp_dir=/tmp
   case "$_ab_uname" in
   Windows_* | CYGWIN_* )
     _ab_tmp_dir="$TEMP" ;;
   esac
   
   # Check for existence of folder AB_TMPDIR
   typeset _ab_using_ab_tmpdir=0
   if [ X"${AB_TMPDIR:-}" = X"" ]; then
      _ab_using_ab_tmpdir=0
   else
      if [ -d "${AB_TMPDIR}" ]; then
         _ab_using_ab_tmpdir=1
         # AB_TMPDIR exists, redirect temp files there
         _ab_tmp_dir="${AB_TMPDIR}"
      fi
   fi
   
   typeset _ab_running_from_gde=0
   # Check for existence of folder _AB_PROXY_DIR
   # If _AB_PROXY_DIR exists we are running a legacy script from GDE
   if [ X"${_AB_PROXY_DIR:-}" = X"" ]; then
      _ab_running_from_gde=0
   else
      if [ -d "${_AB_PROXY_DIR}" ]; then
         _ab_running_from_gde=1
      fi
   fi
   
   typeset _ab_tmp_scriptid=aa579084_e8536738ce8_1c7a_d
   typeset _ab_tmp_file=_ab_tmp_${_ab_tmp_scriptid}_$$.ksh
   if [ X"${_ab_running_from_gde}" = "X0"  ]; then
      _AB_tmp_parameters_aa579084_e8536738ce8_1c7a_d="${_ab_tmp_dir}"/"${_ab_tmp_file}"
      trap 'rm -f "${_AB_tmp_parameters_aa579084_e8536738ce8_1c7a_d}" ' EXIT
      # Work around pdksh bug: the EXIT handler is not executed upon a signal.
      trap '_AB_status=$?; rm -f "${_AB_tmp_parameters_aa579084_e8536738ce8_1c7a_d}"; exit $_AB_status' HUP INT QUIT TERM
   else
      # Temp files will be in _AB_PROXY_DIR folder
      # _AB_PROXY_DIR folder will be deleted by the top level script
      _AB_tmp_parameters_aa579084_e8536738ce8_1c7a_d="${_AB_PROXY_DIR}"/"${_ab_tmp_file}"
   fi
   
   # Set AIRPROGRAM to the default value ${AB_HOME}/bin/air
   typeset AIRPROGRAM="${AB_HOME}/bin/air" 
   if [ $(_ab_compare_version_2_15_7) -lt 0 ]; then
      if [ -z "${AB_AIR_HOME}" ]; then
         print --  "AB_AIR_HOME is not set"
         exit 1
      fi
      # Version older than 2.15.18, set AIRPROGRAM to ${AB_AIR_HOME}/bin/air
      AIRPROGRAM="${AB_AIR_HOME}/bin/air" 
   fi
   
   rm -f "${_AB_tmp_parameters_aa579084_e8536738ce8_1c7a_d}"
   
   if [ $# -gt 0 ]; then
      "${AIRPROGRAM}"  sandbox scripts -inner  "${_AB_PROJECT_DIR}"  "${_AB_DEFINE_OR_EXECUTE}" "${_AB_START_OR_END}"   "$@" >  "${_AB_tmp_parameters_aa579084_e8536738ce8_1c7a_d}"
   else
      "${AIRPROGRAM}"  sandbox scripts -inner  "${_AB_PROJECT_DIR}"  "${_AB_DEFINE_OR_EXECUTE}" "${_AB_START_OR_END}"   >  "${_AB_tmp_parameters_aa579084_e8536738ce8_1c7a_d}"
   fi
   # Save the status from air sandbox scripts -inner
   status=$?
   if [ $status -ne 0 ]; then
      exit $status
   fi
   
   .  "${_AB_tmp_parameters_aa579084_e8536738ce8_1c7a_d}"
   rm -f "${_AB_tmp_parameters_aa579084_e8536738ce8_1c7a_d}"
   if [ X"${_ab_running_from_gde}" = "X0"  ]; then
      # Remove the installed handlers.
      trap - EXIT HUP INT QUIT TERM
   fi
}

if [ $# -gt 0 ]; then
   _ab_define_parameters   "${_AB_PROJECT_DIR}"  "${_AB_DEFINE_OR_EXECUTE}" "${_AB_START_OR_END}" "$@"
else
   _ab_define_parameters   "${_AB_PROJECT_DIR}"  "${_AB_DEFINE_OR_EXECUTE}" "${_AB_START_OR_END}"
fi

# Unset recursion identifier
unset _AB_recursion_aa579084_e8536738cd2_1c7a_c
