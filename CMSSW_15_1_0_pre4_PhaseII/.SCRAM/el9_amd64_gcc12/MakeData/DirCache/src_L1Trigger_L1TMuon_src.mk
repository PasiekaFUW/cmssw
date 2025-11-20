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
