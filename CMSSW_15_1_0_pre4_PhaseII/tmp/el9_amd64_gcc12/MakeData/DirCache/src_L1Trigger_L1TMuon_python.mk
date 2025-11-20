ifeq ($(strip $(PyL1TriggerL1TMuon)),)
PyL1TriggerL1TMuon := self/src/L1Trigger/L1TMuon/python
src_L1Trigger_L1TMuon_python_parent := src/L1Trigger/L1TMuon
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/L1Trigger/L1TMuon/python)
PyL1TriggerL1TMuon_files := $(patsubst src/L1Trigger/L1TMuon/python/%,%,$(wildcard $(foreach dir,src/L1Trigger/L1TMuon/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyL1TriggerL1TMuon_LOC_USE := self   
PyL1TriggerL1TMuon_PACKAGE := self/src/L1Trigger/L1TMuon/python
ALL_PRODS += PyL1TriggerL1TMuon
PyL1TriggerL1TMuon_INIT_FUNC        += $$(eval $$(call PythonProduct,PyL1TriggerL1TMuon,src/L1Trigger/L1TMuon/python,src_L1Trigger_L1TMuon_python))
else
$(eval $(call MultipleWarningMsg,PyL1TriggerL1TMuon,src/L1Trigger/L1TMuon/python))
endif
ALL_COMMONRULES += src_L1Trigger_L1TMuon_python
src_L1Trigger_L1TMuon_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_L1Trigger_L1TMuon_python,src/L1Trigger/L1TMuon/python,PYTHON))
