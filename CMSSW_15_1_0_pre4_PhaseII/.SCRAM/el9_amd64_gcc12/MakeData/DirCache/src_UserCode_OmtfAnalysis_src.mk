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
