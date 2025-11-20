ALL_TOOLS      += celeritas
celeritas_EX_INCLUDE := /cvmfs/cms.cern.ch/el9_amd64_gcc12/external/celeritas/v0.4.1-a605f5173c8476be317aae768e4f3c3e/include
celeritas_EX_LIB := accel celeritas corecel
celeritas_EX_USE := geant4core expat xerces-c vecgeom_interface vecgeom
celeritas_EX_FLAGS_REM_CXXFLAGS  := -Werror=missing-braces

