ifeq ($(strip $(PyL1TriggerL1TMuonOverlapPhase2)),)
PyL1TriggerL1TMuonOverlapPhase2 := self/src/L1Trigger/L1TMuonOverlapPhase2/python
src_L1Trigger_L1TMuonOverlapPhase2_python_parent := src/L1Trigger/L1TMuonOverlapPhase2
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/L1Trigger/L1TMuonOverlapPhase2/python)
PyL1TriggerL1TMuonOverlapPhase2_files := $(patsubst src/L1Trigger/L1TMuonOverlapPhase2/python/%,%,$(wildcard $(foreach dir,src/L1Trigger/L1TMuonOverlapPhase2/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyL1TriggerL1TMuonOverlapPhase2_LOC_USE := self   
PyL1TriggerL1TMuonOverlapPhase2_PACKAGE := self/src/L1Trigger/L1TMuonOverlapPhase2/python
ALL_PRODS += PyL1TriggerL1TMuonOverlapPhase2
PyL1TriggerL1TMuonOverlapPhase2_INIT_FUNC        += $$(eval $$(call PythonProduct,PyL1TriggerL1TMuonOverlapPhase2,src/L1Trigger/L1TMuonOverlapPhase2/python,src_L1Trigger_L1TMuonOverlapPhase2_python))
else
$(eval $(call MultipleWarningMsg,PyL1TriggerL1TMuonOverlapPhase2,src/L1Trigger/L1TMuonOverlapPhase2/python))
endif
ALL_COMMONRULES += src_L1Trigger_L1TMuonOverlapPhase2_python
src_L1Trigger_L1TMuonOverlapPhase2_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_L1Trigger_L1TMuonOverlapPhase2_python,src/L1Trigger/L1TMuonOverlapPhase2/python,PYTHON))
