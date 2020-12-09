#
# cmake/reflect/_Dependencies.cmake is generated by `mulle-sde reflect`. Edits will be lost.
# Disable generation of this file with:
#   mulle-sde environment  --global set MULLE_SOURCETREE_TO_CMAKE_DEPENDENCIES_FILE DISABLE
if( MULLE_TRACE_INCLUDE)
   message( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()

#
# Generated from sourcetree: mulle-dlfcn;no-actual-link,no-all-load,no-import,no-public,no-singlephase;
# Disable with: `mulle-sourcetree mark mulle-dlfcn no-header`
#
if( NOT MULLE_DLFCN_HEADER)
   find_file( MULLE_DLFCN_HEADER NAMES mulle-dlfcn.h mulle-dlfcn/mulle-dlfcn.h)
   message( STATUS "MULLE_DLFCN_HEADER is ${MULLE_DLFCN_HEADER}")

   #
   # Add MULLE_DLFCN_HEADER to HEADER_ONLY_LIBRARIES list.
   # Disable with: `mulle-sourcetree mark mulle-dlfcn no-cmakeadd`
   #
   set( HEADER_ONLY_LIBRARIES
      ${MULLE_DLFCN_HEADER}
      ${HEADER_ONLY_LIBRARIES}
      CACHE INTERNAL "need to cache this"
   )
   if( MULLE_DLFCN_HEADER)
      #
      # Inherit ObjC loader and link dependency info.
      # Disable with: `mulle-sourcetree mark mulle-dlfcn no-cmakeinherit`
      #
      get_filename_component( _TMP_MULLE_DLFCN_ROOT "${MULLE_DLFCN_HEADER}" DIRECTORY)
      get_filename_component( _TMP_MULLE_DLFCN_NAME "${_TMP_MULLE_DLFCN_ROOT}" NAME)
      get_filename_component( _TMP_MULLE_DLFCN_ROOT "${_TMP_MULLE_DLFCN_ROOT}" DIRECTORY)
      get_filename_component( _TMP_MULLE_DLFCN_ROOT "${_TMP_MULLE_DLFCN_ROOT}" DIRECTORY)
      #
      # Search for "DependenciesAndLibraries.cmake" to include.
      # Disable with: `mulle-sourcetree mark mulle-dlfcn no-cmakedependency`
      #
      foreach( _TMP_MULLE_DLFCN_NAME IN LISTS _TMP_MULLE_DLFCN_NAME)
         set( _TMP_MULLE_DLFCN_DIR "${_TMP_MULLE_DLFCN_ROOT}/include/${_TMP_MULLE_DLFCN_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( EXISTS "${_TMP_MULLE_DLFCN_DIR}/DependenciesAndLibraries.cmake")
            unset( MULLE_DLFCN_DEFINITIONS)
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_MULLE_DLFCN_DIR}")
            # we only want top level INHERIT_OBJC_LOADERS, so disable them
            if( NOT NO_INHERIT_OBJC_LOADERS)
               set( NO_INHERIT_OBJC_LOADERS OFF)
            endif()
            list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
            set( NO_INHERIT_OBJC_LOADERS ON)
            #
            include( "${_TMP_MULLE_DLFCN_DIR}/DependenciesAndLibraries.cmake")
            #
            list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
            list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_MULLE_DLFCN_DIR}")
            set( INHERITED_DEFINITIONS
               ${INHERITED_DEFINITIONS}
               ${MULLE_DLFCN_DEFINITIONS}
               CACHE INTERNAL "need to cache this"
            )
            break()
         else()
            message( STATUS "${_TMP_MULLE_DLFCN_DIR}/DependenciesAndLibraries.cmake not found")
         endif()
      endforeach()
   else()
      message( FATAL_ERROR "MULLE_DLFCN_HEADER was not found")
   endif()
endif()
