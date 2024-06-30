# CMakeList.txt : CMake project for SDL_cmake_template, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.7.2)

project(SDL_cmake_template)
set(CMAKE_CXX_STANDARD 11)

# Imprimer la valeur de CMAKE_BUILD_TYPE pour vérifier qu'elle est correctement récupérée
message(STATUS "Build type: ${CMAKE_BUILD_TYPE}")

# TODO: Add tests and install targets if needed.
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/")

set(BIN_DIR ${CMAKE_BINARY_DIR}/bin)


find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIR})

set(SOURCE_FILES "src/main.cpp")

add_executable(SDL_cmake_template 
	${SOURCE_FILES}
)

target_link_libraries(SDL_cmake_template 
	${SDL2_LIBRARY}
)

install(TARGETS SDL_cmake_template RUNTIME DESTINATION ${BIN_DIR}/)
set_target_properties(SDL_cmake_template PROPERTIES 
	RUNTIME_OUTPUT_DIRECTORY "${BIN_DIR}" )

if(CMAKE_SIZEOF_VOID_P EQUAL 8) 
	add_custom_command( TARGET SDL_cmake_template POST_BUILD COMMAND ${CMAKE_COMMAND} -E copy_if_different 
		${SDL2_PATH}/lib/x64/SDL2.dll 
		${BIN_DIR}/$<CONFIG>/SDL2.dll  )
	add_custom_command( TARGET SDL_cmake_template POST_BUILD COMMAND ${CMAKE_COMMAND} -E copy_if_different
		${SDL2_PATH}/lib/x64/SDL2.dll
		${BIN_DIR}/$<CONFIG>/SDL2.dll  )
elseif()
	add_custom_command( TARGET SDL_cmake_template POST_BUILD COMMAND ${CMAKE_COMMAND} -E copy_if_different 
		${SDL2_PATH}/lib/x86/SDL2.dll 
		${BIN_DIR}/$<CONFIG>/SDL2.dll  )
	add_custom_command( TARGET SDL_cmake_template POST_BUILD COMMAND ${CMAKE_COMMAND} -E copy_if_different
		${SDL2_PATH}/lib/x86/SDL2.dll
		${BIN_DIR}/$<CONFIG>/SDL2.dll  )
endif()
