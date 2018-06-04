
# List options
option(ENVIROMENT_DEV "Application will check for extended errors. This is recommended only during development.")

# Enable options

if(ENVIROMENT_DEV)
    message(STATUS "Building for development enviroment, extended checks enabled")
    message(STATUS "To build for production use 'cmake -DENVIROMENT_DEV=FALSE .")
    add_definitions(-DEXTENDED_CHECKS)
else(ENVIROMENT_DEV)
    message(STATUS "Building for production enviroment, no extended checks included")
    message(STATUS "To build for development use 'cmake -DENVIROMENT_DEV=TRUE .")
endif(ENVIROMENT_DEV)
