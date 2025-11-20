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
