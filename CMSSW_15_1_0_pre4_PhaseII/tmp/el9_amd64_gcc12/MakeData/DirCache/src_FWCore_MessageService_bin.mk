ifeq ($(strip $(Standalone)),)
Standalone := self/src/FWCore/MessageService/bin
Standalone_files := $(patsubst src/FWCore/MessageService/bin/%,%,$(foreach file,Standalone.cpp,$(eval xfile:=$(wildcard src/FWCore/MessageService/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/bin/$(file). Please fix src/FWCore/MessageService/bin/BuildFile.))))
Standalone_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/bin/BuildFile
Standalone_LOC_USE := self   boost boost_program_options FWCore/MessageLogger FWCore/ParameterSetReader FWCore/PluginManager FWCore/ServiceRegistry FWCore/Utilities
Standalone_PACKAGE := self/src/FWCore/MessageService/bin
ALL_PRODS += Standalone
Standalone_INIT_FUNC        += $$(eval $$(call Binary,Standalone,src/FWCore/MessageService/bin,src_FWCore_MessageService_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
Standalone_CLASS := BINARY
else
$(eval $(call MultipleWarningMsg,Standalone,src/FWCore/MessageService/bin))
endif
ALL_COMMONRULES += src_FWCore_MessageService_bin
src_FWCore_MessageService_bin_parent := FWCore/MessageService
src_FWCore_MessageService_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_FWCore_MessageService_bin,src/FWCore/MessageService/bin,BINARY))
