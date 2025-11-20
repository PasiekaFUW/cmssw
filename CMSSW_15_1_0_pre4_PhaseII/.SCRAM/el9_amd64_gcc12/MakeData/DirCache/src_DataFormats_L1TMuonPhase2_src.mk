ifeq ($(strip $(DataFormats/L1TMuonPhase2)),)
ALL_COMMONRULES += src_DataFormats_L1TMuonPhase2_src
src_DataFormats_L1TMuonPhase2_src_parent := DataFormats/L1TMuonPhase2
src_DataFormats_L1TMuonPhase2_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_L1TMuonPhase2_src,src/DataFormats/L1TMuonPhase2/src,LIBRARY))
DataFormatsL1TMuonPhase2 := self/DataFormats/L1TMuonPhase2
DataFormats/L1TMuonPhase2 := DataFormatsL1TMuonPhase2
DataFormatsL1TMuonPhase2_files := $(patsubst src/DataFormats/L1TMuonPhase2/src/%,%,$(wildcard $(foreach dir,src/DataFormats/L1TMuonPhase2/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsL1TMuonPhase2_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/L1TMuonPhase2/BuildFile
DataFormatsL1TMuonPhase2_LOC_USE := self   DataFormats/CLHEP DataFormats/Common DataFormats/L1Trigger DataFormats/L1TMuon DataFormats/L1TrackTrigger hls rootrflx
DataFormatsL1TMuonPhase2_LCGDICTS  := x 
DataFormatsL1TMuonPhase2_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsL1TMuonPhase2,src/DataFormats/L1TMuonPhase2/src/classes.h,src/DataFormats/L1TMuonPhase2/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) $(root_EX_FLAGS_GENREFLEX_FAILES_ON_WARNS)))
DataFormatsL1TMuonPhase2_EX_LIB   := DataFormatsL1TMuonPhase2
DataFormatsL1TMuonPhase2_EX_USE   := $(foreach d,$(DataFormatsL1TMuonPhase2_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsL1TMuonPhase2_PACKAGE := self/src/DataFormats/L1TMuonPhase2/src
ALL_PRODS += DataFormatsL1TMuonPhase2
DataFormatsL1TMuonPhase2_CLASS := LIBRARY
DataFormats/L1TMuonPhase2_forbigobj+=DataFormatsL1TMuonPhase2
DataFormatsL1TMuonPhase2_INIT_FUNC        += $$(eval $$(call Library,DataFormatsL1TMuonPhase2,src/DataFormats/L1TMuonPhase2/src,src_DataFormats_L1TMuonPhase2_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
