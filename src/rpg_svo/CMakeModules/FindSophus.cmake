set(SOPHUS_INCLUDE_DIRS "${EXTERNALS_PATH_SRC}Sophus/sophus" "${EXTERNALS_PATH_SRC}Sophus")
set(SOPHUS_LIBRARIES Sophus)

find_package(Eigen3 QUIET REQUIRED)
if(EIGEN3_FOUND)
    list(APPEND SOPHUS_INCLUDE_DIRS ${EIGEN3_INCLUDE_DIR})
endif()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Sophus DEFAULT_MSG SOPHUS_LIBRARIES SOPHUS_INCLUDE_DIRS)

mark_as_advanced(SOPHUS_INCLUDE_DIRS SOPHUS_LIBRARIES)
