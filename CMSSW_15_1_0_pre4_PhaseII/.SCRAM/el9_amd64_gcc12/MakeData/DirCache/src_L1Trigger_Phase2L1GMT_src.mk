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
