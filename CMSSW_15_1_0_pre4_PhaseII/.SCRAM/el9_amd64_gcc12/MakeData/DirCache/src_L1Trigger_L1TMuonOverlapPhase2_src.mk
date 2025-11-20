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
