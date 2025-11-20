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
