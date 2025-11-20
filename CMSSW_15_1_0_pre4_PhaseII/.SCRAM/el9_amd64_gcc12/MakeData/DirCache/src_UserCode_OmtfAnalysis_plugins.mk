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
