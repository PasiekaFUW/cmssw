src_FWCore_MessageLogger_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/FWCore/MessageLogger/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_FWCore_MessageLogger_scripts,src/FWCore/MessageLogger/scripts,$(SCRAMSTORENAME_BIN),*))
