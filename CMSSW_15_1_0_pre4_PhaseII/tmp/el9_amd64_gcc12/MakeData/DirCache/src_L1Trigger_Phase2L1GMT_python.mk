ifeq ($(strip $(PyL1TriggerPhase2L1GMT)),)
PyL1TriggerPhase2L1GMT := self/src/L1Trigger/Phase2L1GMT/python
src_L1Trigger_Phase2L1GMT_python_parent := src/L1Trigger/Phase2L1GMT
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/L1Trigger/Phase2L1GMT/python)
PyL1TriggerPhase2L1GMT_files := $(patsubst src/L1Trigger/Phase2L1GMT/python/%,%,$(wildcard $(foreach dir,src/L1Trigger/Phase2L1GMT/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyL1TriggerPhase2L1GMT_LOC_USE := self   
PyL1TriggerPhase2L1GMT_PACKAGE := self/src/L1Trigger/Phase2L1GMT/python
ALL_PRODS += PyL1TriggerPhase2L1GMT
PyL1TriggerPhase2L1GMT_INIT_FUNC        += $$(eval $$(call PythonProduct,PyL1TriggerPhase2L1GMT,src/L1Trigger/Phase2L1GMT/python,src_L1Trigger_Phase2L1GMT_python))
else
$(eval $(call MultipleWarningMsg,PyL1TriggerPhase2L1GMT,src/L1Trigger/Phase2L1GMT/python))
endif
ALL_COMMONRULES += src_L1Trigger_Phase2L1GMT_python
src_L1Trigger_Phase2L1GMT_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_L1Trigger_Phase2L1GMT_python,src/L1Trigger/Phase2L1GMT/python,PYTHON))
