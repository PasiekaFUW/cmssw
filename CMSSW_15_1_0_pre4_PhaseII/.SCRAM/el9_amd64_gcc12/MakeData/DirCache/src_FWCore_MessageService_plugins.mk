ifeq ($(strip $(FWCoreMessageServicePlugins)),)
FWCoreMessageServicePlugins := self/src/FWCore/MessageService/plugins
PLUGINS:=yes
FWCoreMessageServicePlugins_files := $(patsubst src/FWCore/MessageService/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/plugins/$(file). Please fix src/FWCore/MessageService/plugins/BuildFile.))))
FWCoreMessageServicePlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/plugins/BuildFile
FWCoreMessageServicePlugins_LOC_USE := self   FWCore/MessageService FWCore/ServiceRegistry DataFormats/Provenance
FWCoreMessageServicePlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,FWCoreMessageServicePlugins,FWCoreMessageServicePlugins,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/plugins))
FWCoreMessageServicePlugins_PACKAGE := self/src/FWCore/MessageService/plugins
ALL_PRODS += FWCoreMessageServicePlugins
FWCore/MessageService_forbigobj+=FWCoreMessageServicePlugins
FWCoreMessageServicePlugins_INIT_FUNC        += $$(eval $$(call Library,FWCoreMessageServicePlugins,src/FWCore/MessageService/plugins,src_FWCore_MessageService_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
FWCoreMessageServicePlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,FWCoreMessageServicePlugins,src/FWCore/MessageService/plugins))
endif
ALL_COMMONRULES += src_FWCore_MessageService_plugins
src_FWCore_MessageService_plugins_parent := FWCore/MessageService
src_FWCore_MessageService_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_FWCore_MessageService_plugins,src/FWCore/MessageService/plugins,PLUGINS))
