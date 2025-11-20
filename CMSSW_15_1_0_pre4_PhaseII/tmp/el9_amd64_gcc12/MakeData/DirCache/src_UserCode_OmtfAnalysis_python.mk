ifeq ($(strip $(PyUserCodeOmtfAnalysis)),)
PyUserCodeOmtfAnalysis := self/src/UserCode/OmtfAnalysis/python
src_UserCode_OmtfAnalysis_python_parent := src/UserCode/OmtfAnalysis
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/UserCode/OmtfAnalysis/python)
PyUserCodeOmtfAnalysis_files := $(patsubst src/UserCode/OmtfAnalysis/python/%,%,$(wildcard $(foreach dir,src/UserCode/OmtfAnalysis/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyUserCodeOmtfAnalysis_LOC_USE := self   
PyUserCodeOmtfAnalysis_PACKAGE := self/src/UserCode/OmtfAnalysis/python
ALL_PRODS += PyUserCodeOmtfAnalysis
PyUserCodeOmtfAnalysis_INIT_FUNC        += $$(eval $$(call PythonProduct,PyUserCodeOmtfAnalysis,src/UserCode/OmtfAnalysis/python,src_UserCode_OmtfAnalysis_python))
else
$(eval $(call MultipleWarningMsg,PyUserCodeOmtfAnalysis,src/UserCode/OmtfAnalysis/python))
endif
ALL_COMMONRULES += src_UserCode_OmtfAnalysis_python
src_UserCode_OmtfAnalysis_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_UserCode_OmtfAnalysis_python,src/UserCode/OmtfAnalysis/python,PYTHON))
