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
