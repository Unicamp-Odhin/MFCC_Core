cmake_minimum_required(VERSION 3.21)
project(AudioPreEmphasis C CXX HIP)

# Padrão C
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

# Opções
option(DEBUG "Ativar debug" OFF)
option(CREATE_DATABANK "Ativar databank" OFF)
option(LOG "Ativar log" OFF)
option(VERBOSE "Ativar verbose" OFF)
option(USE_FLOAT "Usar float em vez de int16" OFF)
option(ROCM "Usar ROCm HIP" OFF)

# Diretórios
set(SRC_DIR ${CMAKE_SOURCE_DIR}/src)
set(ROC_DIR ${CMAKE_SOURCE_DIR}/roc)
include_directories(${CMAKE_SOURCE_DIR}/lib)
include_directories(/opt/rocm/include)

# Fontes
file(GLOB C_SOURCES ${SRC_DIR}/*.c)
if(ROCM)
    find_package(HIP REQUIRED)
    file(GLOB ROC_SOURCES ${ROC_DIR}/*.hip)
    add_executable(main ${C_SOURCES} ${ROC_SOURCES})
    add_compile_definitions(__HIP_PLATFORM_AMD__)
else()
    add_executable(main ${C_SOURCES})
endif()

# Flags de compilação
if(DEBUG)
    target_compile_options(main PRIVATE -g -O0)
else()
    target_compile_options(main PRIVATE -O3 -march=native)
endif()

# Macros
target_compile_definitions(main PRIVATE $<$<BOOL:${ROCM}>:CONFIG_ROCM>)
target_compile_definitions(main PRIVATE $<$<BOOL:${DEBUG}>:DEBUG>)
target_compile_definitions(main PRIVATE $<$<BOOL:${CREATE_DATABANK}>:CONFIG_CREATE_DATABANK>)
target_compile_definitions(main PRIVATE $<$<BOOL:${LOG}>:CONFIG_LOG>)
target_compile_definitions(main PRIVATE $<$<BOOL:${VERBOSE}>:CONFIG_VERBOSE>)
target_compile_definitions(main PRIVATE $<$<BOOL:${USE_FLOAT}>:CONFIG_USE_FLOAT>)

target_link_libraries(main PRIVATE m)