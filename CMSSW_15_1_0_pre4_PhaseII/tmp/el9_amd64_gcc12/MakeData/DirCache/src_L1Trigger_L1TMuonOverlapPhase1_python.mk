ifeq ($(strip $(PyL1TriggerL1TMuonOverlapPhase1)),)
PyL1TriggerL1TMuonOverlapPhase1 := self/src/L1Trigger/L1TMuonOverlapPhase1/python
src_L1Trigger_L1TMuonOverlapPhase1_python_parent := src/L1Trigger/L1TMuonOverlapPhase1
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/L1Trigger/L1TMuonOverlapPhase1/python)
PyL1TriggerL1TMuonOverlapPhase1_files := $(patsubst src/L1Trigger/L1TMuonOverlapPhase1/python/%,%,$(wildcard $(foreach dir,src/L1Trigger/L1TMuonOverlapPhase1/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyL1TriggerL1TMuonOverlapPhase1_LOC_USE := self   
PyL1TriggerL1TMuonOverlapPhase1_PACKAGE := self/src/L1Trigger/L1TMuonOverlapPhase1/python
ALL_PRODS += PyL1TriggerL1TMuonOverlapPhase1
PyL1TriggerL1TMuonOverlapPhase1_INIT_FUNC        += $$(eval $$(call PythonProduct,PyL1TriggerL1TMuonOverlapPhase1,src/L1Trigger/L1TMuonOverlapPhase1/python,src_L1Trigger_L1TMuonOverlapPhase1_python))
else
$(eval $(call MultipleWarningMsg,PyL1TriggerL1TMuonOverlapPhase1,src/L1Trigger/L1TMuonOverlapPhase1/python))
endif
ALL_COMMONRULES += src_L1Trigger_L1TMuonOverlapPhase1_python
src_L1Trigger_L1TMuonOverlapPhase1_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_L1Trigger_L1TMuonOverlapPhase1_python,src/L1Trigger/L1TMuonOverlapPhase1/python,PYTHON))
