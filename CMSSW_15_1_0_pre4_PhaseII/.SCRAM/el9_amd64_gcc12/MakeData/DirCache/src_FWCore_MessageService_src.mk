ifeq ($(strip $(FWCore/MessageService)),)
ALL_COMMONRULES += src_FWCore_MessageService_src
src_FWCore_MessageService_src_parent := FWCore/MessageService
src_FWCore_MessageService_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_FWCore_MessageService_src,src/FWCore/MessageService/src,LIBRARY))
FWCoreMessageService := self/FWCore/MessageService
FWCore/MessageService := FWCoreMessageService
FWCoreMessageService_files := $(patsubst src/FWCore/MessageService/src/%,%,$(wildcard $(foreach dir,src/FWCore/MessageService/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
FWCoreMessageService_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/BuildFile
FWCoreMessageService_LOC_USE := self   FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities tbb
FWCoreMessageService_EX_LIB   := FWCoreMessageService
FWCoreMessageService_EX_USE   := $(foreach d,$(FWCoreMessageService_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreMessageService_PACKAGE := self/src/FWCore/MessageService/src
ALL_PRODS += FWCoreMessageService
FWCoreMessageService_CLASS := LIBRARY
FWCore/MessageService_forbigobj+=FWCoreMessageService
FWCoreMessageService_INIT_FUNC        += $$(eval $$(call Library,FWCoreMessageService,src/FWCore/MessageService/src,src_FWCore_MessageService_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
