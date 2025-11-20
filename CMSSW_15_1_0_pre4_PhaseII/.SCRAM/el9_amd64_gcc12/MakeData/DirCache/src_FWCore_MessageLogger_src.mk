ifeq ($(strip $(FWCore/MessageLogger)),)
ALL_COMMONRULES += src_FWCore_MessageLogger_src
src_FWCore_MessageLogger_src_parent := FWCore/MessageLogger
src_FWCore_MessageLogger_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_FWCore_MessageLogger_src,src/FWCore/MessageLogger/src,LIBRARY))
FWCoreMessageLogger := self/FWCore/MessageLogger
FWCore/MessageLogger := FWCoreMessageLogger
FWCoreMessageLogger_files := $(patsubst src/FWCore/MessageLogger/src/%,%,$(wildcard $(foreach dir,src/FWCore/MessageLogger/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
FWCoreMessageLogger_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageLogger/BuildFile
FWCoreMessageLogger_LOC_USE := self   FWCore/Utilities DataFormats/Provenance boost fmt tinyxml2 tbb
FWCoreMessageLogger_EX_LIB   := FWCoreMessageLogger
FWCoreMessageLogger_EX_USE   := $(foreach d,$(FWCoreMessageLogger_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreMessageLogger_PACKAGE := self/src/FWCore/MessageLogger/src
ALL_PRODS += FWCoreMessageLogger
FWCoreMessageLogger_CLASS := LIBRARY
FWCore/MessageLogger_forbigobj+=FWCoreMessageLogger
FWCoreMessageLogger_INIT_FUNC        += $$(eval $$(call Library,FWCoreMessageLogger,src/FWCore/MessageLogger/src,src_FWCore_MessageLogger_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
