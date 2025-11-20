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
