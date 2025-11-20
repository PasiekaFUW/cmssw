ifeq ($(strip $(PyFWCoreMessageService)),)
PyFWCoreMessageService := self/src/FWCore/MessageService/python
src_FWCore_MessageService_python_parent := src/FWCore/MessageService
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/FWCore/MessageService/python)
PyFWCoreMessageService_files := $(patsubst src/FWCore/MessageService/python/%,%,$(wildcard $(foreach dir,src/FWCore/MessageService/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyFWCoreMessageService_LOC_USE := self   
PyFWCoreMessageService_PACKAGE := self/src/FWCore/MessageService/python
ALL_PRODS += PyFWCoreMessageService
PyFWCoreMessageService_INIT_FUNC        += $$(eval $$(call PythonProduct,PyFWCoreMessageService,src/FWCore/MessageService/python,src_FWCore_MessageService_python))
else
$(eval $(call MultipleWarningMsg,PyFWCoreMessageService,src/FWCore/MessageService/python))
endif
ALL_COMMONRULES += src_FWCore_MessageService_python
src_FWCore_MessageService_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_FWCore_MessageService_python,src/FWCore/MessageService/python,PYTHON))
