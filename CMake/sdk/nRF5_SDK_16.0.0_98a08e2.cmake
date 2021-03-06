set(nRF5_SDK_16.0.0_98a08e2_SOURCE_FILES
    "${SDK_ROOT}/components/libraries/util/app_error.c"
    "${SDK_ROOT}/components/libraries/util/app_util_platform.c")

set(nRF5_SDK_16.0.0_98a08e2_INCLUDE_DIRS
    "${SDK_ROOT}/integration/nrfx"
    "${SDK_ROOT}/components/libraries/util"
    "${SDK_ROOT}/components/libraries/timer"
    "${SDK_ROOT}/components/libraries/log"
    "${SDK_ROOT}/components/libraries/log/src"
    "${SDK_ROOT}/components/libraries/experimental_section_vars"
    "${SDK_ROOT}/components/libraries/delay")

if (TOOLCHAIN STREQUAL "armcc")
    set(nRF5_SDK_16.0.0_98a08e2_SOURCE_FILES
        ${nRF5_SDK_16.0.0_98a08e2_SOURCE_FILES}
        "${SDK_ROOT}/components/libraries/util/app_error_handler_keil.c")
else ()
    set(nRF5_SDK_16.0.0_98a08e2_SOURCE_FILES
        ${nRF5_SDK_16.0.0_98a08e2_SOURCE_FILES}
        "${SDK_ROOT}/components/libraries/util/app_error_handler_gcc.c")
endif ()
