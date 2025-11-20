ifeq ($(strip $(UserCode/OmtfDataFormats)),)
ALL_COMMONRULES += src_UserCode_OmtfDataFormats_src
src_UserCode_OmtfDataFormats_src_parent := UserCode/OmtfDataFormats
src_UserCode_OmtfDataFormats_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_UserCode_OmtfDataFormats_src,src/UserCode/OmtfDataFormats/src,LIBRARY))
UserCodeOmtfDataFormats := self/UserCode/OmtfDataFormats
UserCode/OmtfDataFormats := UserCodeOmtfDataFormats
UserCodeOmtfDataFormats_files := $(patsubst src/UserCode/OmtfDataFormats/src/%,%,$(wildcard $(foreach dir,src/UserCode/OmtfDataFormats/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
UserCodeOmtfDataFormats_BuildFile    := $(WORKINGDIR)/cache/bf/src/UserCode/OmtfDataFormats/BuildFile
UserCodeOmtfDataFormats_LOC_USE := self   root rootrflx L1Trigger/L1TMuonOverlap
UserCodeOmtfDataFormats_LCGDICTS  := x 
UserCodeOmtfDataFormats_PRE_INIT_FUNC += $$(eval $$(call LCGDict,UserCodeOmtfDataFormats,src/UserCode/OmtfDataFormats/src/classes.h,src/UserCode/OmtfDataFormats/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) $(root_EX_FLAGS_GENREFLEX_FAILES_ON_WARNS)))
UserCodeOmtfDataFormats_EX_LIB   := UserCodeOmtfDataFormats
UserCodeOmtfDataFormats_EX_USE   := $(foreach d,$(UserCodeOmtfDataFormats_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
UserCodeOmtfDataFormats_PACKAGE := self/src/UserCode/OmtfDataFormats/src
ALL_PRODS += UserCodeOmtfDataFormats
UserCodeOmtfDataFormats_CLASS := LIBRARY
UserCode/OmtfDataFormats_forbigobj+=UserCodeOmtfDataFormats
UserCodeOmtfDataFormats_INIT_FUNC        += $$(eval $$(call Library,UserCodeOmtfDataFormats,src/UserCode/OmtfDataFormats/src,src_UserCode_OmtfDataFormats_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
