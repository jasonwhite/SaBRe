function(sabre_add_plugin plugin_name)
  add_library(${plugin_name} SHARED ${ARGN})
  target_include_directories(${plugin_name} PRIVATE ${CMAKE_SOURCE_DIR}/includes/plugins)
  target_compile_options(${plugin_name} PRIVATE ${SABRE_PLUGIN_C_COMPILE_OPTIONS})
  target_link_libraries(${plugin_name} ${CMAKE_SYSTEM_PROCESSOR})
endfunction()
