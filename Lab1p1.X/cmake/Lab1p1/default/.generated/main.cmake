include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(Lab1p1_default_library_list )

# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group default-XC8
if(Lab1p1_default_default_XC8_FILE_TYPE_assemble)
add_library(Lab1p1_default_default_XC8_assemble OBJECT ${Lab1p1_default_default_XC8_FILE_TYPE_assemble})
    Lab1p1_default_default_XC8_assemble_rule(Lab1p1_default_default_XC8_assemble)
    list(APPEND Lab1p1_default_library_list "$<TARGET_OBJECTS:Lab1p1_default_default_XC8_assemble>")

endif()

# Handle files with suffix S, for group default-XC8
if(Lab1p1_default_default_XC8_FILE_TYPE_assemblePreprocess)
add_library(Lab1p1_default_default_XC8_assemblePreprocess OBJECT ${Lab1p1_default_default_XC8_FILE_TYPE_assemblePreprocess})
    Lab1p1_default_default_XC8_assemblePreprocess_rule(Lab1p1_default_default_XC8_assemblePreprocess)
    list(APPEND Lab1p1_default_library_list "$<TARGET_OBJECTS:Lab1p1_default_default_XC8_assemblePreprocess>")

endif()

# Handle files with suffix [cC], for group default-XC8
if(Lab1p1_default_default_XC8_FILE_TYPE_compile)
add_library(Lab1p1_default_default_XC8_compile OBJECT ${Lab1p1_default_default_XC8_FILE_TYPE_compile})
    Lab1p1_default_default_XC8_compile_rule(Lab1p1_default_default_XC8_compile)
    list(APPEND Lab1p1_default_library_list "$<TARGET_OBJECTS:Lab1p1_default_default_XC8_compile>")

endif()


# Main target for this project
add_executable(Lab1p1_default_image_5mhKC0bm ${Lab1p1_default_library_list})

set_target_properties(Lab1p1_default_image_5mhKC0bm PROPERTIES
    OUTPUT_NAME "default"
    SUFFIX ".elf"
    ADDITIONAL_CLEAN_FILES "${output_extensions}"
    RUNTIME_OUTPUT_DIRECTORY "${Lab1p1_default_output_dir}")
target_link_libraries(Lab1p1_default_image_5mhKC0bm PRIVATE ${Lab1p1_default_default_XC8_FILE_TYPE_link})
# Add the link options from the rule file.
Lab1p1_default_link_rule( Lab1p1_default_image_5mhKC0bm)



