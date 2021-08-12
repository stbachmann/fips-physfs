if (NOT FIPS_IMPORT)
    cmake_minimum_required(VERSION 2.8)
    get_filename_component(FIPS_ROOT_DIR "../fips" ABSOLUTE)
    include("${FIPS_ROOT_DIR}/cmake/fips.cmake")
    project(fips-physfs)
    fips_setup()
endif()

# Current SDL version 2.0.9
fips_begin_module(physfs)
    fips_files_ex(physfs/src/ *.c)
    
    if(FIPS_MACOS)
        fips_files(physfs/src/platform_apple.m)
    endif()

fips_end_module()
target_include_directories(physfs PUBLIC physfs/include)

if (NOT FIPS_IMPORT)
    fips_finish()
endif()