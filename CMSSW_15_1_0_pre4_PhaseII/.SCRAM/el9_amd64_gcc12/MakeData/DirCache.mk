ifeq ($(strip $(L1TriggerL1TMuonOverlapPhase1Plugins)),)
L1TriggerL1TMuonOverlapPhase1Plugins := self/src/L1Trigger/L1TMuonOverlapPhase1/plugins
PLUGINS:=yes
L1TriggerL1TMuonOverlapPhase1Plugins_files := $(patsubst src/L1Trigger/L1TMuonOverlapPhase1/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/L1Trigger/L1TMuonOverlapPhase1/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/L1Trigger/L1TMuonOverlapPhase1/plugins/$(file). Please fix src/L1Trigger/L1TMuonOverlapPhase1/plugins/BuildFile.))))
L1TriggerL1TMuonOverlapPhase1Plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/L1Trigger/L1TMuonOverlapPhase1/plugins/BuildFile
L1TriggerL1TMuonOverlapPhase1Plugins_LOC_FLAGS_LDFLAGS   := -lXMLIO
L1TriggerL1TMuonOverlapPhase1Plugins_LOC_USE := self   L1Trigger/L1TMuonOverlapPhase1 CondFormats/L1TObjects CondFormats/DataRecord FWCore/ServiceRegistry CondCore/DBOutputService SimDataFormats/Track SimDataFormats/Vertex root clhep hepmc
L1TriggerL1TMuonOverlapPhase1Plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,L1TriggerL1TMuonOverlapPhase1Plugins,L1TriggerL1TMuonOverlapPhase1Plugins,$(SCRAMSTORENAME_LIB),src/L1Trigger/L1TMuonOverlapPhase1/plugins))
L1TriggerL1TMuonOverlapPhase1Plugins_PACKAGE := self/src/L1Trigger/L1TMuonOverlapPhase1/plugins
ALL_PRODS += L1TriggerL1TMuonOverlapPhase1Plugins
L1Trigger/L1TMuonOverlapPhase1_forbigobj+=L1TriggerL1TMuonOverlapPhase1Plugins
L1TriggerL1TMuonOverlapPhase1Plugins_INIT_FUNC        += $$(eval $$(call Library,L1TriggerL1TMuonOverlapPhase1Plugins,src/L1Trigger/L1TMuonOverlapPhase1/plugins,src_L1Trigger_L1TMuonOverlapPhase1_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
L1TriggerL1TMuonOverlapPhase1Plugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,L1TriggerL1TMuonOverlapPhase1Plugins,src/L1Trigger/L1TMuonOverlapPhase1/plugins))
endif
ALL_COMMONRULES += src_L1Trigger_L1TMuonOverlapPhase1_plugins
src_L1Trigger_L1TMuonOverlapPhase1_plugins_parent := L1Trigger/L1TMuonOverlapPhase1
src_L1Trigger_L1TMuonOverlapPhase1_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_L1Trigger_L1TMuonOverlapPhase1_plugins,src/L1Trigger/L1TMuonOverlapPhase1/plugins,PLUGINS))
ifeq ($(strip $(UserCodeOmtfAnalysisPlugins)),)
UserCodeOmtfAnalysisPlugins := self/src/UserCode/OmtfAnalysis/plugins
PLUGINS:=yes
UserCodeOmtfAnalysisPlugins_files := $(patsubst src/UserCode/OmtfAnalysis/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/UserCode/OmtfAnalysis/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/UserCode/OmtfAnalysis/plugins/$(file). Please fix src/UserCode/OmtfAnalysis/plugins/BuildFile.))))
UserCodeOmtfAnalysisPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/UserCode/OmtfAnalysis/plugins/BuildFile
UserCodeOmtfAnalysisPlugins_LOC_USE := self   UserCode/OmtfAnalysis
UserCodeOmtfAnalysisPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UserCodeOmtfAnalysisPlugins,UserCodeOmtfAnalysisPlugins,$(SCRAMSTORENAME_LIB),src/UserCode/OmtfAnalysis/plugins))
UserCodeOmtfAnalysisPlugins_PACKAGE := self/src/UserCode/OmtfAnalysis/plugins
ALL_PRODS += UserCodeOmtfAnalysisPlugins
UserCode/OmtfAnalysis_forbigobj+=UserCodeOmtfAnalysisPlugins
UserCodeOmtfAnalysisPlugins_INIT_FUNC        += $$(eval $$(call Library,UserCodeOmtfAnalysisPlugins,src/UserCode/OmtfAnalysis/plugins,src_UserCode_OmtfAnalysis_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UserCodeOmtfAnalysisPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,UserCodeOmtfAnalysisPlugins,src/UserCode/OmtfAnalysis/plugins))
endif
ALL_COMMONRULES += src_UserCode_OmtfAnalysis_plugins
src_UserCode_OmtfAnalysis_plugins_parent := UserCode/OmtfAnalysis
src_UserCode_OmtfAnalysis_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_UserCode_OmtfAnalysis_plugins,src/UserCode/OmtfAnalysis/plugins,PLUGINS))
ifeq ($(strip $(L1TriggerL1TMuonOverlapPhase2Plugins)),)
L1TriggerL1TMuonOverlapPhase2Plugins := self/src/L1Trigger/L1TMuonOverlapPhase2/plugins
PLUGINS:=yes
L1TriggerL1TMuonOverlapPhase2Plugins_files := $(patsubst src/L1Trigger/L1TMuonOverlapPhase2/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/L1Trigger/L1TMuonOverlapPhase2/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/L1Trigger/L1TMuonOverlapPhase2/plugins/$(file). Please fix src/L1Trigger/L1TMuonOverlapPhase2/plugins/BuildFile.))))
L1TriggerL1TMuonOverlapPhase2Plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/L1Trigger/L1TMuonOverlapPhase2/plugins/BuildFile
L1TriggerL1TMuonOverlapPhase2Plugins_LOC_FLAGS_LDFLAGS   := -lXMLIO
L1TriggerL1TMuonOverlapPhase2Plugins_LOC_USE := self   L1Trigger/L1TMuonOverlapPhase2 L1Trigger/L1TMuonOverlapPhase1 CondFormats/L1TObjects CondFormats/DataRecord FWCore/ServiceRegistry CondCore/DBOutputService SimDataFormats/Track root clhep hepmc
L1TriggerL1TMuonOverlapPhase2Plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,L1TriggerL1TMuonOverlapPhase2Plugins,L1TriggerL1TMuonOverlapPhase2Plugins,$(SCRAMSTORENAME_LIB),src/L1Trigger/L1TMuonOverlapPhase2/plugins))
L1TriggerL1TMuonOverlapPhase2Plugins_PACKAGE := self/src/L1Trigger/L1TMuonOverlapPhase2/plugins
ALL_PRODS += L1TriggerL1TMuonOverlapPhase2Plugins
L1Trigger/L1TMuonOverlapPhase2_forbigobj+=L1TriggerL1TMuonOverlapPhase2Plugins
L1TriggerL1TMuonOverlapPhase2Plugins_INIT_FUNC        += $$(eval $$(call Library,L1TriggerL1TMuonOverlapPhase2Plugins,src/L1Trigger/L1TMuonOverlapPhase2/plugins,src_L1Trigger_L1TMuonOverlapPhase2_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
L1TriggerL1TMuonOverlapPhase2Plugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,L1TriggerL1TMuonOverlapPhase2Plugins,src/L1Trigger/L1TMuonOverlapPhase2/plugins))
endif
ALL_COMMONRULES += src_L1Trigger_L1TMuonOverlapPhase2_plugins
src_L1Trigger_L1TMuonOverlapPhase2_plugins_parent := L1Trigger/L1TMuonOverlapPhase2
src_L1Trigger_L1TMuonOverlapPhase2_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_L1Trigger_L1TMuonOverlapPhase2_plugins,src/L1Trigger/L1TMuonOverlapPhase2/plugins,PLUGINS))
ifeq ($(strip $(FWCoreMessageServicePlugins)),)
FWCoreMessageServicePlugins := self/src/FWCore/MessageService/plugins
PLUGINS:=yes
FWCoreMessageServicePlugins_files := $(patsubst src/FWCore/MessageService/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/plugins/$(file). Please fix src/FWCore/MessageService/plugins/BuildFile.))))
FWCoreMessageServicePlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/plugins/BuildFile
FWCoreMessageServicePlugins_LOC_USE := self   FWCore/MessageService FWCore/ServiceRegistry DataFormats/Provenance
FWCoreMessageServicePlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,FWCoreMessageServicePlugins,FWCoreMessageServicePlugins,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/plugins))
FWCoreMessageServicePlugins_PACKAGE := self/src/FWCore/MessageService/plugins
ALL_PRODS += FWCoreMessageServicePlugins
FWCore/MessageService_forbigobj+=FWCoreMessageServicePlugins
FWCoreMessageServicePlugins_INIT_FUNC        += $$(eval $$(call Library,FWCoreMessageServicePlugins,src/FWCore/MessageService/plugins,src_FWCore_MessageService_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
FWCoreMessageServicePlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,FWCoreMessageServicePlugins,src/FWCore/MessageService/plugins))
endif
ALL_COMMONRULES += src_FWCore_MessageService_plugins
src_FWCore_MessageService_plugins_parent := FWCore/MessageService
src_FWCore_MessageService_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_FWCore_MessageService_plugins,src/FWCore/MessageService/plugins,PLUGINS))
ifeq ($(strip $(L1Trigger/Phase2L1GMT)),)
ALL_COMMONRULES += src_L1Trigger_Phase2L1GMT_src
src_L1Trigger_Phase2L1GMT_src_parent := L1Trigger/Phase2L1GMT
src_L1Trigger_Phase2L1GMT_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_L1Trigger_Phase2L1GMT_src,src/L1Trigger/Phase2L1GMT/src,LIBRARY))
L1TriggerPhase2L1GMT := self/L1Trigger/Phase2L1GMT
L1Trigger/Phase2L1GMT := L1TriggerPhase2L1GMT
L1TriggerPhase2L1GMT_files := $(patsubst src/L1Trigger/Phase2L1GMT/src/%,%,$(wildcard $(foreach dir,src/L1Trigger/Phase2L1GMT/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
L1TriggerPhase2L1GMT_BuildFile    := $(WORKINGDIR)/cache/bf/src/L1Trigger/Phase2L1GMT/BuildFile
L1TriggerPhase2L1GMT_LOC_USE := self   FWCore/ParameterSet DataFormats/L1TMuonPhase2 DataFormats/L1TMuon DataFormats/L1Trigger L1Trigger/L1TMuon L1Trigger/L1TTwinMux L1Trigger/L1TMuonEndCapPhase2 hls hepmc SimTracker/TrackTriggerAssociation FWCore/ServiceRegistry CommonTools/UtilAlgos
L1TriggerPhase2L1GMT_EX_LIB   := L1TriggerPhase2L1GMT
L1TriggerPhase2L1GMT_EX_USE   := $(foreach d,$(L1TriggerPhase2L1GMT_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerPhase2L1GMT_PACKAGE := self/src/L1Trigger/Phase2L1GMT/src
ALL_PRODS += L1TriggerPhase2L1GMT
L1TriggerPhase2L1GMT_CLASS := LIBRARY
L1Trigger/Phase2L1GMT_forbigobj+=L1TriggerPhase2L1GMT
L1TriggerPhase2L1GMT_INIT_FUNC        += $$(eval $$(call Library,L1TriggerPhase2L1GMT,src/L1Trigger/Phase2L1GMT/src,src_L1Trigger_Phase2L1GMT_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(FWCore/MessageLogger)),)
ALL_COMMONRULES += src_FWCore_MessageLogger_src
src_FWCore_MessageLogger_src_parent := FWCore/MessageLogger
src_FWCore_MessageLogger_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_FWCore_MessageLogger_src,src/FWCore/MessageLogger/src,LIBRARY))
FWCoreMessageLogger := self/FWCore/MessageLogger
FWCore/MessageLogger := FWCoreMessageLogger
FWCoreMessageLogger_files := $(patsubst src/FWCore/MessageLogger/src/%,%,$(wildcard $(foreach dir,src/FWCore/MessageLogger/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
FWCoreMessageLogger_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageLogger/BuildFile
FWCoreMessageLogger_LOC_USE := self   FWCore/Utilities DataFormats/Provenance boost fmt tinyxml2 tbb
FWCoreMessageLogger_EX_LIB   := FWCoreMessageLogger
FWCoreMessageLogger_EX_USE   := $(foreach d,$(FWCoreMessageLogger_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreMessageLogger_PACKAGE := self/src/FWCore/MessageLogger/src
ALL_PRODS += FWCoreMessageLogger
FWCoreMessageLogger_CLASS := LIBRARY
FWCore/MessageLogger_forbigobj+=FWCoreMessageLogger
FWCoreMessageLogger_INIT_FUNC        += $$(eval $$(call Library,FWCoreMessageLogger,src/FWCore/MessageLogger/src,src_FWCore_MessageLogger_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(UserCode/OmtfAnalysis)),)
ALL_COMMONRULES += src_UserCode_OmtfAnalysis_src
src_UserCode_OmtfAnalysis_src_parent := UserCode/OmtfAnalysis
src_UserCode_OmtfAnalysis_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_UserCode_OmtfAnalysis_src,src/UserCode/OmtfAnalysis/src,LIBRARY))
UserCodeOmtfAnalysis := self/UserCode/OmtfAnalysis
UserCode/OmtfAnalysis := UserCodeOmtfAnalysis
UserCodeOmtfAnalysis_files := $(patsubst src/UserCode/OmtfAnalysis/src/%,%,$(wildcard $(foreach dir,src/UserCode/OmtfAnalysis/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
UserCodeOmtfAnalysis_BuildFile    := $(WORKINGDIR)/cache/bf/src/UserCode/OmtfAnalysis/BuildFile
UserCodeOmtfAnalysis_LOC_USE := self   root FWCore/Framework DataFormats/L1Trigger DataFormats/RPCDigi DataFormats/CSCDigi DataFormats/L1CSCTrackFinder DataFormats/FEDRawData DataFormats/L1GlobalMuonTrigger DataFormats/L1GlobalTrigger DataFormats/MuonReco DataFormats/TrackReco CondFormats/L1TObjects CondFormats/RPCObjects L1Trigger/CSCTrackFinder L1Trigger/RPCTrigger L1Trigger/L1TMuonOverlap HLTrigger/HLTcore DQMServices/Core Geometry/RPCGeometry Geometry/CommonDetUnit Geometry/Records EventFilter/RPCRawToDigi EventFilter/L1TRawToDigi CommonTools/UtilAlgos PhysicsTools/UtilAlgos TrackingTools/Records TrackingTools/TrajectoryState TrackingTools/GeomPropagators TrackingTools/PatternTools SimTracker/TrackerHitAssociation SimDataFormats/TrackerDigiSimLink FWCore/PluginManager UserCode/OmtfDataFormats xerces-c
UserCodeOmtfAnalysis_EX_LIB   := UserCodeOmtfAnalysis
UserCodeOmtfAnalysis_EX_USE   := $(foreach d,$(UserCodeOmtfAnalysis_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
UserCodeOmtfAnalysis_PACKAGE := self/src/UserCode/OmtfAnalysis/src
ALL_PRODS += UserCodeOmtfAnalysis
UserCodeOmtfAnalysis_CLASS := LIBRARY
UserCode/OmtfAnalysis_forbigobj+=UserCodeOmtfAnalysis
UserCodeOmtfAnalysis_INIT_FUNC        += $$(eval $$(call Library,UserCodeOmtfAnalysis,src/UserCode/OmtfAnalysis/src,src_UserCode_OmtfAnalysis_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(L1Trigger/L1TMuonOverlapPhase2)),)
ALL_COMMONRULES += src_L1Trigger_L1TMuonOverlapPhase2_src
src_L1Trigger_L1TMuonOverlapPhase2_src_parent := L1Trigger/L1TMuonOverlapPhase2
src_L1Trigger_L1TMuonOverlapPhase2_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_L1Trigger_L1TMuonOverlapPhase2_src,src/L1Trigger/L1TMuonOverlapPhase2/src,LIBRARY))
L1TriggerL1TMuonOverlapPhase2 := self/L1Trigger/L1TMuonOverlapPhase2
L1Trigger/L1TMuonOverlapPhase2 := L1TriggerL1TMuonOverlapPhase2
L1TriggerL1TMuonOverlapPhase2_files := $(patsubst src/L1Trigger/L1TMuonOverlapPhase2/src/%,%,$(wildcard $(foreach dir,src/L1Trigger/L1TMuonOverlapPhase2/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
L1TriggerL1TMuonOverlapPhase2_BuildFile    := $(WORKINGDIR)/cache/bf/src/L1Trigger/L1TMuonOverlapPhase2/BuildFile
L1TriggerL1TMuonOverlapPhase2_LOC_LIB   := boost_timer
L1TriggerL1TMuonOverlapPhase2_LOC_USE := self   xerces-c root roofit PhysicsTools/TensorFlow DataFormats/L1TMuon Geometry/Records Geometry/DTGeometry Geometry/CSCGeometry Geometry/RPCGeometry L1Trigger/DTUtilities L1Trigger/L1TMuonOverlapPhase1 PhysicsTools/UtilAlgos FWCore/ServiceRegistry
L1TriggerL1TMuonOverlapPhase2_EX_LIB   := L1TriggerL1TMuonOverlapPhase2
L1TriggerL1TMuonOverlapPhase2_EX_USE   := $(foreach d,$(L1TriggerL1TMuonOverlapPhase2_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerL1TMuonOverlapPhase2_PACKAGE := self/src/L1Trigger/L1TMuonOverlapPhase2/src
ALL_PRODS += L1TriggerL1TMuonOverlapPhase2
L1TriggerL1TMuonOverlapPhase2_CLASS := LIBRARY
L1Trigger/L1TMuonOverlapPhase2_forbigobj+=L1TriggerL1TMuonOverlapPhase2
L1TriggerL1TMuonOverlapPhase2_INIT_FUNC        += $$(eval $$(call Library,L1TriggerL1TMuonOverlapPhase2,src/L1Trigger/L1TMuonOverlapPhase2/src,src_L1Trigger_L1TMuonOverlapPhase2_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(L1Trigger/L1TMuon)),)
ALL_COMMONRULES += src_L1Trigger_L1TMuon_src
src_L1Trigger_L1TMuon_src_parent := L1Trigger/L1TMuon
src_L1Trigger_L1TMuon_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_L1Trigger_L1TMuon_src,src/L1Trigger/L1TMuon/src,LIBRARY))
L1TriggerL1TMuon := self/L1Trigger/L1TMuon
L1Trigger/L1TMuon := L1TriggerL1TMuon
L1TriggerL1TMuon_files := $(patsubst src/L1Trigger/L1TMuon/src/%,%,$(wildcard $(foreach dir,src/L1Trigger/L1TMuon/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
L1TriggerL1TMuon_BuildFile    := $(WORKINGDIR)/cache/bf/src/L1Trigger/L1TMuon/BuildFile
L1TriggerL1TMuon_LOC_USE := self   DataFormats/L1DTTrackFinder DataFormats/L1TMuon DataFormats/L1Trigger DataFormats/RPCRecHit DataFormats/CSCDigi FWCore/PluginManager L1Trigger/L1TCommon L1Trigger/CSCTriggerPrimitives L1Trigger/DTUtilities Geometry/Records Geometry/CSCGeometry Geometry/DTGeometry Geometry/RPCGeometry Geometry/GEMGeometry MagneticField/Engine MagneticField/Records
L1TriggerL1TMuon_EX_LIB   := L1TriggerL1TMuon
L1TriggerL1TMuon_EX_USE   := $(foreach d,$(L1TriggerL1TMuon_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerL1TMuon_PACKAGE := self/src/L1Trigger/L1TMuon/src
ALL_PRODS += L1TriggerL1TMuon
L1TriggerL1TMuon_CLASS := LIBRARY
L1Trigger/L1TMuon_forbigobj+=L1TriggerL1TMuon
L1TriggerL1TMuon_INIT_FUNC        += $$(eval $$(call Library,L1TriggerL1TMuon,src/L1Trigger/L1TMuon/src,src_L1Trigger_L1TMuon_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(DataFormats/L1TMuonPhase2)),)
ALL_COMMONRULES += src_DataFormats_L1TMuonPhase2_src
src_DataFormats_L1TMuonPhase2_src_parent := DataFormats/L1TMuonPhase2
src_DataFormats_L1TMuonPhase2_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_L1TMuonPhase2_src,src/DataFormats/L1TMuonPhase2/src,LIBRARY))
DataFormatsL1TMuonPhase2 := self/DataFormats/L1TMuonPhase2
DataFormats/L1TMuonPhase2 := DataFormatsL1TMuonPhase2
DataFormatsL1TMuonPhase2_files := $(patsubst src/DataFormats/L1TMuonPhase2/src/%,%,$(wildcard $(foreach dir,src/DataFormats/L1TMuonPhase2/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsL1TMuonPhase2_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/L1TMuonPhase2/BuildFile
DataFormatsL1TMuonPhase2_LOC_USE := self   DataFormats/CLHEP DataFormats/Common DataFormats/L1Trigger DataFormats/L1TMuon DataFormats/L1TrackTrigger hls rootrflx
DataFormatsL1TMuonPhase2_LCGDICTS  := x 
DataFormatsL1TMuonPhase2_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsL1TMuonPhase2,src/DataFormats/L1TMuonPhase2/src/classes.h,src/DataFormats/L1TMuonPhase2/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) $(root_EX_FLAGS_GENREFLEX_FAILES_ON_WARNS)))
DataFormatsL1TMuonPhase2_EX_LIB   := DataFormatsL1TMuonPhase2
DataFormatsL1TMuonPhase2_EX_USE   := $(foreach d,$(DataFormatsL1TMuonPhase2_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsL1TMuonPhase2_PACKAGE := self/src/DataFormats/L1TMuonPhase2/src
ALL_PRODS += DataFormatsL1TMuonPhase2
DataFormatsL1TMuonPhase2_CLASS := LIBRARY
DataFormats/L1TMuonPhase2_forbigobj+=DataFormatsL1TMuonPhase2
DataFormatsL1TMuonPhase2_INIT_FUNC        += $$(eval $$(call Library,DataFormatsL1TMuonPhase2,src/DataFormats/L1TMuonPhase2/src,src_DataFormats_L1TMuonPhase2_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(L1TriggerL1TMuonPlugins)),)
L1TriggerL1TMuonPlugins := self/src/L1Trigger/L1TMuon/plugins
PLUGINS:=yes
L1TriggerL1TMuonPlugins_files := $(patsubst src/L1Trigger/L1TMuon/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/L1Trigger/L1TMuon/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/L1Trigger/L1TMuon/plugins/$(file). Please fix src/L1Trigger/L1TMuon/plugins/BuildFile.))))
L1TriggerL1TMuonPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/L1Trigger/L1TMuon/plugins/BuildFile
L1TriggerL1TMuonPlugins_LOC_USE := self   FWCore/Framework FWCore/ParameterSet FWCore/Utilities L1Trigger/L1TMuon L1Trigger/L1TCommon DataFormats/L1Trigger CondFormats/L1TObjects CondFormats/DataRecord
L1TriggerL1TMuonPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,L1TriggerL1TMuonPlugins,L1TriggerL1TMuonPlugins,$(SCRAMSTORENAME_LIB),src/L1Trigger/L1TMuon/plugins))
L1TriggerL1TMuonPlugins_PACKAGE := self/src/L1Trigger/L1TMuon/plugins
ALL_PRODS += L1TriggerL1TMuonPlugins
L1Trigger/L1TMuon_forbigobj+=L1TriggerL1TMuonPlugins
L1TriggerL1TMuonPlugins_INIT_FUNC        += $$(eval $$(call Library,L1TriggerL1TMuonPlugins,src/L1Trigger/L1TMuon/plugins,src_L1Trigger_L1TMuon_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
L1TriggerL1TMuonPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,L1TriggerL1TMuonPlugins,src/L1Trigger/L1TMuon/plugins))
endif
ALL_COMMONRULES += src_L1Trigger_L1TMuon_plugins
src_L1Trigger_L1TMuon_plugins_parent := L1Trigger/L1TMuon
src_L1Trigger_L1TMuon_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_L1Trigger_L1TMuon_plugins,src/L1Trigger/L1TMuon/plugins,PLUGINS))
ifeq ($(strip $(L1Trigger/L1TMuonOverlapPhase1)),)
ALL_COMMONRULES += src_L1Trigger_L1TMuonOverlapPhase1_src
src_L1Trigger_L1TMuonOverlapPhase1_src_parent := L1Trigger/L1TMuonOverlapPhase1
src_L1Trigger_L1TMuonOverlapPhase1_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_L1Trigger_L1TMuonOverlapPhase1_src,src/L1Trigger/L1TMuonOverlapPhase1/src,LIBRARY))
L1TriggerL1TMuonOverlapPhase1 := self/L1Trigger/L1TMuonOverlapPhase1
L1Trigger/L1TMuonOverlapPhase1 := L1TriggerL1TMuonOverlapPhase1
L1TriggerL1TMuonOverlapPhase1_files := $(patsubst src/L1Trigger/L1TMuonOverlapPhase1/src/%,%,$(wildcard $(foreach dir,src/L1Trigger/L1TMuonOverlapPhase1/src src/L1Trigger/L1TMuonOverlapPhase1/src/Omtf src/L1Trigger/L1TMuonOverlapPhase1/src/Tools,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
L1TriggerL1TMuonOverlapPhase1_BuildFile    := $(WORKINGDIR)/cache/bf/src/L1Trigger/L1TMuonOverlapPhase1/BuildFile
L1TriggerL1TMuonOverlapPhase1_LOC_LIB   := boost_timer
L1TriggerL1TMuonOverlapPhase1_LOC_USE := self   CommonTools/UtilAlgos DataFormats/L1DTTrackFinder DataFormats/L1TMuon FWCore/ServiceRegistry Geometry/CSCGeometry Geometry/DTGeometry Geometry/RPCGeometry Geometry/Records L1Trigger/DTUtilities L1Trigger/L1TMuon L1Trigger/RPCTrigger SimDataFormats/DigiSimLinks SimDataFormats/TrackingAnalysis TrackPropagation/SteppingHelixPropagator TrackingTools/Records TrackingTools/TrajectoryParametrization roofit root xerces-c Utilities/Xerces
L1TriggerL1TMuonOverlapPhase1_EX_LIB   := L1TriggerL1TMuonOverlapPhase1
L1TriggerL1TMuonOverlapPhase1_EX_USE   := $(foreach d,$(L1TriggerL1TMuonOverlapPhase1_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerL1TMuonOverlapPhase1_PACKAGE := self/src/L1Trigger/L1TMuonOverlapPhase1/src
ALL_PRODS += L1TriggerL1TMuonOverlapPhase1
L1TriggerL1TMuonOverlapPhase1_CLASS := LIBRARY
L1Trigger/L1TMuonOverlapPhase1_forbigobj+=L1TriggerL1TMuonOverlapPhase1
L1TriggerL1TMuonOverlapPhase1_INIT_FUNC        += $$(eval $$(call Library,L1TriggerL1TMuonOverlapPhase1,src/L1Trigger/L1TMuonOverlapPhase1/src,src_L1Trigger_L1TMuonOverlapPhase1_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(FWCore/MessageService)),)
ALL_COMMONRULES += src_FWCore_MessageService_src
src_FWCore_MessageService_src_parent := FWCore/MessageService
src_FWCore_MessageService_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_FWCore_MessageService_src,src/FWCore/MessageService/src,LIBRARY))
FWCoreMessageService := self/FWCore/MessageService
FWCore/MessageService := FWCoreMessageService
FWCoreMessageService_files := $(patsubst src/FWCore/MessageService/src/%,%,$(wildcard $(foreach dir,src/FWCore/MessageService/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
FWCoreMessageService_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/BuildFile
FWCoreMessageService_LOC_USE := self   FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities tbb
FWCoreMessageService_EX_LIB   := FWCoreMessageService
FWCoreMessageService_EX_USE   := $(foreach d,$(FWCoreMessageService_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreMessageService_PACKAGE := self/src/FWCore/MessageService/src
ALL_PRODS += FWCoreMessageService
FWCoreMessageService_CLASS := LIBRARY
FWCore/MessageService_forbigobj+=FWCoreMessageService
FWCoreMessageService_INIT_FUNC        += $$(eval $$(call Library,FWCoreMessageService,src/FWCore/MessageService/src,src_FWCore_MessageService_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(Phase2L1GMTPlugins)),)
Phase2L1GMTPlugins := self/src/L1Trigger/Phase2L1GMT/plugins
PLUGINS:=yes
Phase2L1GMTPlugins_files := $(patsubst src/L1Trigger/Phase2L1GMT/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/L1Trigger/Phase2L1GMT/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/L1Trigger/Phase2L1GMT/plugins/$(file). Please fix src/L1Trigger/Phase2L1GMT/plugins/BuildFile.))))
Phase2L1GMTPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/L1Trigger/Phase2L1GMT/plugins/BuildFile
Phase2L1GMTPlugins_LOC_FLAGS_REM_CXXFLAGS   := -fsanitize=undefined
Phase2L1GMTPlugins_LOC_USE := self   DataFormats/L1TMuonPhase2 DataFormats/L1TMuon DataFormats/L1Trigger L1Trigger/Phase2L1GMT hepmc hls root
Phase2L1GMTPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,Phase2L1GMTPlugins,Phase2L1GMTPlugins,$(SCRAMSTORENAME_LIB),src/L1Trigger/Phase2L1GMT/plugins))
Phase2L1GMTPlugins_PACKAGE := self/src/L1Trigger/Phase2L1GMT/plugins
ALL_PRODS += Phase2L1GMTPlugins
L1Trigger/Phase2L1GMT_forbigobj+=Phase2L1GMTPlugins
Phase2L1GMTPlugins_INIT_FUNC        += $$(eval $$(call Library,Phase2L1GMTPlugins,src/L1Trigger/Phase2L1GMT/plugins,src_L1Trigger_Phase2L1GMT_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
Phase2L1GMTPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,Phase2L1GMTPlugins,src/L1Trigger/Phase2L1GMT/plugins))
endif
ALL_COMMONRULES += src_L1Trigger_Phase2L1GMT_plugins
src_L1Trigger_Phase2L1GMT_plugins_parent := L1Trigger/Phase2L1GMT
src_L1Trigger_Phase2L1GMT_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_L1Trigger_Phase2L1GMT_plugins,src/L1Trigger/Phase2L1GMT/plugins,PLUGINS))
ifeq ($(strip $(UserCode/OmtfDataFormats)),)
ALL_COMMONRULES += src_UserCode_OmtfDataFormats_src
src_UserCode_OmtfDataFormats_src_parent := UserCode/OmtfDataFormats
src_UserCode_OmtfDataFormats_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_UserCode_OmtfDataFormats_src,src/UserCode/OmtfDataFormats/src,LIBRARY))
UserCodeOmtfDataFormats := self/UserCode/OmtfDataFormats
UserCode/OmtfDataFormats := UserCodeOmtfDataFormats
UserCodeOmtfDataFormats_files := $(patsubst src/UserCode/OmtfDataFormats/src/%,%,$(wildcard $(foreach dir,src/UserCode/OmtfDataFormats/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
UserCodeOmtfDataFormats_BuildFile    := $(WORKINGDIR)/cache/bf/src/UserCode/OmtfDataFormats/BuildFile
UserCodeOmtfDataFormats_LOC_USE := self   root rootrflx L1Trigger/L1TMuonOverlap
UserCodeOmtfDataFormats_LCGDICTS  := x 
UserCodeOmtfDataFormats_PRE_INIT_FUNC += $$(eval $$(call LCGDict,UserCodeOmtfDataFormats,src/UserCode/OmtfDataFormats/src/classes.h,src/UserCode/OmtfDataFormats/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) $(root_EX_FLAGS_GENREFLEX_FAILES_ON_WARNS)))
UserCodeOmtfDataFormats_EX_LIB   := UserCodeOmtfDataFormats
UserCodeOmtfDataFormats_EX_USE   := $(foreach d,$(UserCodeOmtfDataFormats_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
UserCodeOmtfDataFormats_PACKAGE := self/src/UserCode/OmtfDataFormats/src
ALL_PRODS += UserCodeOmtfDataFormats
UserCodeOmtfDataFormats_CLASS := LIBRARY
UserCode/OmtfDataFormats_forbigobj+=UserCodeOmtfDataFormats
UserCodeOmtfDataFormats_INIT_FUNC        += $$(eval $$(call Library,UserCodeOmtfDataFormats,src/UserCode/OmtfDataFormats/src,src_UserCode_OmtfDataFormats_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
