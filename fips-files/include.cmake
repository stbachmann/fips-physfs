# This "sets" the NO_FILESYSTEM flag as the default emscripten toolchain disables it. Physfs requires it
if(FIPS_EMSCRIPTEN)
    string(REPLACE "NO_FILESYSTEM=1" "NO_FILESYSTEM=0" CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS}")
endif()