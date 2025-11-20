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
