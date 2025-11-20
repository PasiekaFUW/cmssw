ifeq ($(strip $(PyFWCoreMessageLogger)),)
PyFWCoreMessageLogger := self/src/FWCore/MessageLogger/python
src_FWCore_MessageLogger_python_parent := src/FWCore/MessageLogger
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/FWCore/MessageLogger/python)
PyFWCoreMessageLogger_files := $(patsubst src/FWCore/MessageLogger/python/%,%,$(wildcard $(foreach dir,src/FWCore/MessageLogger/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyFWCoreMessageLogger_LOC_USE := self   
PyFWCoreMessageLogger_PACKAGE := self/src/FWCore/MessageLogger/python
ALL_PRODS += PyFWCoreMessageLogger
PyFWCoreMessageLogger_INIT_FUNC        += $$(eval $$(call PythonProduct,PyFWCoreMessageLogger,src/FWCore/MessageLogger/python,src_FWCore_MessageLogger_python))
else
$(eval $(call MultipleWarningMsg,PyFWCoreMessageLogger,src/FWCore/MessageLogger/python))
endif
ALL_COMMONRULES += src_FWCore_MessageLogger_python
src_FWCore_MessageLogger_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_FWCore_MessageLogger_python,src/FWCore/MessageLogger/python,PYTHON))
