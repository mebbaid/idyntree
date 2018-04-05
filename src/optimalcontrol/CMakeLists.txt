cmake_minimum_required(VERSION 3.0)

project(idyntree_optimalcontrol)

set(libraryname idyntree-optimalcontrol)


idyntree_enable_cxx11()

option(BUILD_SHARED_LIBS "Build libraries as shared" TRUE)

# Dependencies
# IPOPT
# SUNDIALS (?)
# find_package(IPOPT REQUIRED)


set(PUBLIC_HEADERS include/iDynTree/OptimalControl.h
                   include/iDynTree/DynamicalSystem.h
                   include/iDynTree/LinearSystem.h
                   include/iDynTree/MultiBodySystem.h
                   include/iDynTree/Integrator.h
                   include/iDynTree/MPC.h
                   include/iDynTree/OptimalControlProblem.h
                   include/iDynTree/OptimalControlSolver.h
                   include/iDynTree/SystemLineariser.h
                   include/iDynTree/OCSolvers/MultipleShootingSolver.h
                   include/iDynTree/Cost.h
                   include/iDynTree/Constraint.h
                   include/iDynTree/QuadraticCost.h
                   include/iDynTree/LinearConstraint.h
                   include/iDynTree/Controller.h
                   include/iDynTree/TimeRange.h
                   include/iDynTree/ConstraintsGroup.h)
set(INTEGRATORS_PUBLIC_HEADERS include/iDynTree/Integrators/RK4.h)


set(SOURCES src/DynamicalSystem.cpp
            src/LinearSystem.cpp
            src/MultiBodySystem.cpp
            src/Integrator.cpp
            src/MPC.cpp
            src/OptimalControlProblem.cpp
            src/OptimalControlSolver.cpp
            src/SystemLineariser.cpp
            src/MultipleShootingSolver.cpp
            src/Cost.cpp
            src/Constraint.cpp
            src/QuadraticCost.cpp
            src/LinearConstraint.cpp
            src/Controller.cpp
            src/RK4.cpp
            src/TimeRange.cpp
            src/ConstraintsGroup.cpp)

add_library(${libraryname} ${PUBLIC_HEADERS} ${INTEGRATORS_PUBLIC_HEADERS} ${SOURCES})
target_include_directories(${libraryname} SYSTEM PUBLIC ${EIGEN3_INCLUDE_DIR})
target_include_directories(${libraryname} PUBLIC $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>)
target_include_directories(${libraryname} PUBLIC $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>)
target_link_libraries(${libraryname} PUBLIC idyntree-core idyntree-model)


# install
set_property(TARGET ${libraryname} PROPERTY PUBLIC_HEADER ${PUBLIC_HEADERS})

install(TARGETS ${libraryname}
        EXPORT iDynTree
        COMPONENT runtime
        RUNTIME DESTINATION "${CMAKE_INSTALL_BINDIR}" COMPONENT bin
        LIBRARY DESTINATION "${CMAKE_INSTALL_LIBDIR}" COMPONENT shlib
        ARCHIVE DESTINATION "${CMAKE_INSTALL_LIBDIR}" COMPONENT lib
        PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/iDynTree)

install(FILES ${INTEGRATORS_PUBLIC_HEADERS} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/iDynTree/Integrators)

set_property(GLOBAL APPEND PROPERTY ${VARS_PREFIX}_TARGETS ${libraryname})
set_property(GLOBAL APPEND PROPERTY IDYNTREE_TREE_INCLUDE_DIRS ${CMAKE_CURRENT_SOURCE_DIR}/include)


if(IDYNTREE_COMPILE_TESTS)
  add_subdirectory(tests)
endif()