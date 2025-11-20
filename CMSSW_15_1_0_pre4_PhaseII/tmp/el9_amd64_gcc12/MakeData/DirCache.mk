ALL_PACKAGES += DataFormats/L1TMuonPhase2
subdirs_src_DataFormats_L1TMuonPhase2 := src_DataFormats_L1TMuonPhase2_src
ALL_PACKAGES += L1Trigger/L1TMuonOverlapPhase2
subdirs_src_L1Trigger_L1TMuonOverlapPhase2 := src_L1Trigger_L1TMuonOverlapPhase2_python src_L1Trigger_L1TMuonOverlapPhase2_plugins src_L1Trigger_L1TMuonOverlapPhase2_test src_L1Trigger_L1TMuonOverlapPhase2_src
ALL_PACKAGES += L1Trigger/Phase2L1GMT
subdirs_src_L1Trigger_Phase2L1GMT := src_L1Trigger_Phase2L1GMT_python src_L1Trigger_Phase2L1GMT_plugins src_L1Trigger_Phase2L1GMT_test src_L1Trigger_Phase2L1GMT_src
ALL_PACKAGES += L1Trigger/L1TMuon
subdirs_src_L1Trigger_L1TMuon := src_L1Trigger_L1TMuon_python src_L1Trigger_L1TMuon_plugins src_L1Trigger_L1TMuon_test src_L1Trigger_L1TMuon_src
src_FWCore_MessageLogger_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/FWCore/MessageLogger/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_FWCore_MessageLogger_scripts,src/FWCore/MessageLogger/scripts,$(SCRAMSTORENAME_BIN),*))
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
ALL_PACKAGES += UserCode/OmtfDataFormats
subdirs_src_UserCode_OmtfDataFormats := src_UserCode_OmtfDataFormats_src
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
ALL_SUBSYSTEMS+=UserCode
subdirs_src_UserCode = src_UserCode_OmtfDataFormats src_UserCode_OmtfAnalysis
subdirs_src += src_UserCode
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
ALL_SUBSYSTEMS+=DataFormats
subdirs_src_DataFormats = src_DataFormats_L1TMuonPhase2
subdirs_src += src_DataFormats
ifeq ($(strip $(TestFWCoreMessageServiceJobReport)),)
TestFWCoreMessageServiceJobReport := self/src/FWCore/MessageService/test
TestFWCoreMessageServiceJobReport_files := 1
TestFWCoreMessageServiceJobReport_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
TestFWCoreMessageServiceJobReport_LOC_USE := self   boost FWCore/Utilities
TestFWCoreMessageServiceJobReport_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += TestFWCoreMessageServiceJobReport
TestFWCoreMessageServiceJobReport_INIT_FUNC        += $$(eval $$(call Binary,TestFWCoreMessageServiceJobReport,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
TestFWCoreMessageServiceJobReport_CLASS := TEST
TestFWCoreMessageServiceJobReport_TEST_RUNNER_CMD :=  testJobReport.sh
else
$(eval $(call MultipleWarningMsg,TestFWCoreMessageServiceJobReport,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(fmt_test.cppunit)),)
fmt_test.cppunit := self/src/FWCore/MessageService/test
fmt_test.cppunit_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,fmt_test.cppunit.cpp,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
fmt_test.cppunit_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
fmt_test.cppunit_LOC_USE := self   boost FWCore/Utilities fmt cppunit
fmt_test.cppunit_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += fmt_test.cppunit
fmt_test.cppunit_INIT_FUNC        += $$(eval $$(call Binary,fmt_test.cppunit,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
fmt_test.cppunit_CLASS := TEST
fmt_test.cppunit_TEST_RUNNER_CMD :=  fmt_test.cppunit 
else
$(eval $(call MultipleWarningMsg,fmt_test.cppunit,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(makeJobReport)),)
makeJobReport := self/src/FWCore/MessageService/test
makeJobReport_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,makeJobReport.cpp,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
makeJobReport_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
makeJobReport_LOC_USE := self   boost FWCore/Utilities boost_program_options FWCore/Framework FWCore/MessageLogger
makeJobReport_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += makeJobReport
makeJobReport_INIT_FUNC        += $$(eval $$(call Binary,makeJobReport,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
makeJobReport_CLASS := TEST
makeJobReport_TEST_RUNNER_CMD :=  makeJobReport 
else
$(eval $(call MultipleWarningMsg,makeJobReport,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(standAloneWithMessageLogger)),)
standAloneWithMessageLogger := self/src/FWCore/MessageService/test
standAloneWithMessageLogger_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,standAloneTest.cpp,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
standAloneWithMessageLogger_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
standAloneWithMessageLogger_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger
standAloneWithMessageLogger_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += standAloneWithMessageLogger
standAloneWithMessageLogger_INIT_FUNC        += $$(eval $$(call Binary,standAloneWithMessageLogger,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
standAloneWithMessageLogger_CLASS := TEST
standAloneWithMessageLogger_TEST_RUNNER_CMD := echo
standAloneWithMessageLogger_NO_TESTRUN := yes
standAloneWithMessageLogger_TEST_SKIP_MSG := Disabled via BuildFile
else
$(eval $(call MultipleWarningMsg,standAloneWithMessageLogger,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(standAloneWithMessageLoggerRunner)),)
standAloneWithMessageLoggerRunner := self/src/FWCore/MessageService/test
standAloneWithMessageLoggerRunner_files := 1
standAloneWithMessageLoggerRunner_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
standAloneWithMessageLoggerRunner_LOC_USE := self   boost FWCore/Utilities
standAloneWithMessageLoggerRunner_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += standAloneWithMessageLoggerRunner
standAloneWithMessageLoggerRunner_INIT_FUNC        += $$(eval $$(call Binary,standAloneWithMessageLoggerRunner,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
standAloneWithMessageLoggerRunner_CLASS := TEST
standAloneWithMessageLoggerRunner_TEST_RUNNER_CMD :=  standAlone_1.sh
standAloneWithMessageLoggerRunner_PRE_TEST := standAloneWithMessageLogger
else
$(eval $(call MultipleWarningMsg,standAloneWithMessageLoggerRunner,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(testLoggerInCmsRun)),)
testLoggerInCmsRun := self/src/FWCore/MessageService/test
testLoggerInCmsRun_files := 1
testLoggerInCmsRun_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
testLoggerInCmsRun_LOC_USE := self   boost FWCore/Utilities
testLoggerInCmsRun_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += testLoggerInCmsRun
testLoggerInCmsRun_INIT_FUNC        += $$(eval $$(call Binary,testLoggerInCmsRun,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
testLoggerInCmsRun_CLASS := TEST
testLoggerInCmsRun_TEST_RUNNER_CMD :=  testLoggerInCmsRun.sh
else
$(eval $(call MultipleWarningMsg,testLoggerInCmsRun,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(trivial_main)),)
trivial_main := self/src/FWCore/MessageService/test
trivial_main_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,trivial_main.cpp,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
trivial_main_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
trivial_main_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger
trivial_main_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += trivial_main
trivial_main_INIT_FUNC        += $$(eval $$(call Binary,trivial_main,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
trivial_main_CLASS := TEST
trivial_main_TEST_RUNNER_CMD :=  trivial_main 
else
$(eval $(call MultipleWarningMsg,trivial_main,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_1_u1)),)
unitTestsGroup_1_u1 := self/src/FWCore/MessageService/test
unitTestsGroup_1_u1_files := 1
unitTestsGroup_1_u1_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_1_u1_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_1_u1_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_1_u1
unitTestsGroup_1_u1_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_1_u1,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_1_u1_CLASS := TEST
unitTestsGroup_1_u1_TEST_RUNNER_CMD :=  u1.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_1_u1,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_1_u2)),)
unitTestsGroup_1_u2 := self/src/FWCore/MessageService/test
unitTestsGroup_1_u2_files := 1
unitTestsGroup_1_u2_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_1_u2_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_1_u2_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_1_u2
unitTestsGroup_1_u2_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_1_u2,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_1_u2_CLASS := TEST
unitTestsGroup_1_u2_TEST_RUNNER_CMD :=  u2.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_1_u2,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_1_u21)),)
unitTestsGroup_1_u21 := self/src/FWCore/MessageService/test
unitTestsGroup_1_u21_files := 1
unitTestsGroup_1_u21_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_1_u21_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_1_u21_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_1_u21
unitTestsGroup_1_u21_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_1_u21,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_1_u21_CLASS := TEST
unitTestsGroup_1_u21_TEST_RUNNER_CMD :=  u21.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_1_u21,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_1_u6)),)
unitTestsGroup_1_u6 := self/src/FWCore/MessageService/test
unitTestsGroup_1_u6_files := 1
unitTestsGroup_1_u6_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_1_u6_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_1_u6_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_1_u6
unitTestsGroup_1_u6_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_1_u6,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_1_u6_CLASS := TEST
unitTestsGroup_1_u6_TEST_RUNNER_CMD :=  u6.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_1_u6,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_2_u12)),)
unitTestsGroup_2_u12 := self/src/FWCore/MessageService/test
unitTestsGroup_2_u12_files := 1
unitTestsGroup_2_u12_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_2_u12_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_2_u12_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_2_u12
unitTestsGroup_2_u12_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_2_u12,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_2_u12_CLASS := TEST
unitTestsGroup_2_u12_TEST_RUNNER_CMD :=  u12.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_2_u12,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_2_u13)),)
unitTestsGroup_2_u13 := self/src/FWCore/MessageService/test
unitTestsGroup_2_u13_files := 1
unitTestsGroup_2_u13_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_2_u13_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_2_u13_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_2_u13
unitTestsGroup_2_u13_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_2_u13,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_2_u13_CLASS := TEST
unitTestsGroup_2_u13_TEST_RUNNER_CMD :=  u13.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_2_u13,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_2_u14)),)
unitTestsGroup_2_u14 := self/src/FWCore/MessageService/test
unitTestsGroup_2_u14_files := 1
unitTestsGroup_2_u14_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_2_u14_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_2_u14_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_2_u14
unitTestsGroup_2_u14_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_2_u14,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_2_u14_CLASS := TEST
unitTestsGroup_2_u14_TEST_RUNNER_CMD :=  u14.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_2_u14,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_2_u15)),)
unitTestsGroup_2_u15 := self/src/FWCore/MessageService/test
unitTestsGroup_2_u15_files := 1
unitTestsGroup_2_u15_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_2_u15_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_2_u15_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_2_u15
unitTestsGroup_2_u15_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_2_u15,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_2_u15_CLASS := TEST
unitTestsGroup_2_u15_TEST_RUNNER_CMD :=  u15.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_2_u15,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_2_u9)),)
unitTestsGroup_2_u9 := self/src/FWCore/MessageService/test
unitTestsGroup_2_u9_files := 1
unitTestsGroup_2_u9_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_2_u9_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_2_u9_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_2_u9
unitTestsGroup_2_u9_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_2_u9,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_2_u9_CLASS := TEST
unitTestsGroup_2_u9_TEST_RUNNER_CMD :=  u9.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_2_u9,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_3_u10)),)
unitTestsGroup_3_u10 := self/src/FWCore/MessageService/test
unitTestsGroup_3_u10_files := 1
unitTestsGroup_3_u10_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_3_u10_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_3_u10_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_3_u10
unitTestsGroup_3_u10_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_3_u10,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_3_u10_CLASS := TEST
unitTestsGroup_3_u10_TEST_RUNNER_CMD :=  u10.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_3_u10,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_3_u17)),)
unitTestsGroup_3_u17 := self/src/FWCore/MessageService/test
unitTestsGroup_3_u17_files := 1
unitTestsGroup_3_u17_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_3_u17_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_3_u17_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_3_u17
unitTestsGroup_3_u17_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_3_u17,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_3_u17_CLASS := TEST
unitTestsGroup_3_u17_TEST_RUNNER_CMD :=  u17.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_3_u17,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_3_u34)),)
unitTestsGroup_3_u34 := self/src/FWCore/MessageService/test
unitTestsGroup_3_u34_files := 1
unitTestsGroup_3_u34_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_3_u34_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_3_u34_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_3_u34
unitTestsGroup_3_u34_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_3_u34,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_3_u34_CLASS := TEST
unitTestsGroup_3_u34_TEST_RUNNER_CMD :=  u34.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_3_u34,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_3_u35)),)
unitTestsGroup_3_u35 := self/src/FWCore/MessageService/test
unitTestsGroup_3_u35_files := 1
unitTestsGroup_3_u35_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_3_u35_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_3_u35_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_3_u35
unitTestsGroup_3_u35_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_3_u35,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_3_u35_CLASS := TEST
unitTestsGroup_3_u35_TEST_RUNNER_CMD :=  u35.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_3_u35,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_4_u18)),)
unitTestsGroup_4_u18 := self/src/FWCore/MessageService/test
unitTestsGroup_4_u18_files := 1
unitTestsGroup_4_u18_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_4_u18_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_4_u18_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_4_u18
unitTestsGroup_4_u18_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_4_u18,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_4_u18_CLASS := TEST
unitTestsGroup_4_u18_TEST_RUNNER_CMD :=  u18.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_4_u18,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_4_u19)),)
unitTestsGroup_4_u19 := self/src/FWCore/MessageService/test
unitTestsGroup_4_u19_files := 1
unitTestsGroup_4_u19_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_4_u19_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_4_u19_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_4_u19
unitTestsGroup_4_u19_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_4_u19,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_4_u19_CLASS := TEST
unitTestsGroup_4_u19_TEST_RUNNER_CMD :=  u19.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_4_u19,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_4_u20)),)
unitTestsGroup_4_u20 := self/src/FWCore/MessageService/test
unitTestsGroup_4_u20_files := 1
unitTestsGroup_4_u20_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_4_u20_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_4_u20_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_4_u20
unitTestsGroup_4_u20_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_4_u20,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_4_u20_CLASS := TEST
unitTestsGroup_4_u20_TEST_RUNNER_CMD :=  u20.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_4_u20,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_5_u22)),)
unitTestsGroup_5_u22 := self/src/FWCore/MessageService/test
unitTestsGroup_5_u22_files := 1
unitTestsGroup_5_u22_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_5_u22_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_5_u22_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_5_u22
unitTestsGroup_5_u22_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_5_u22,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_5_u22_CLASS := TEST
unitTestsGroup_5_u22_TEST_RUNNER_CMD :=  u22.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_5_u22,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_5_u24)),)
unitTestsGroup_5_u24 := self/src/FWCore/MessageService/test
unitTestsGroup_5_u24_files := 1
unitTestsGroup_5_u24_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_5_u24_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_5_u24_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_5_u24
unitTestsGroup_5_u24_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_5_u24,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_5_u24_CLASS := TEST
unitTestsGroup_5_u24_TEST_RUNNER_CMD :=  u24.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_5_u24,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_5_u25)),)
unitTestsGroup_5_u25 := self/src/FWCore/MessageService/test
unitTestsGroup_5_u25_files := 1
unitTestsGroup_5_u25_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_5_u25_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_5_u25_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_5_u25
unitTestsGroup_5_u25_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_5_u25,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_5_u25_CLASS := TEST
unitTestsGroup_5_u25_TEST_RUNNER_CMD :=  u25.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_5_u25,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_6_u23)),)
unitTestsGroup_6_u23 := self/src/FWCore/MessageService/test
unitTestsGroup_6_u23_files := 1
unitTestsGroup_6_u23_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_6_u23_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_6_u23_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_6_u23
unitTestsGroup_6_u23_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_6_u23,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_6_u23_CLASS := TEST
unitTestsGroup_6_u23_TEST_RUNNER_CMD :=  u23.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_6_u23,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_6_u27)),)
unitTestsGroup_6_u27 := self/src/FWCore/MessageService/test
unitTestsGroup_6_u27_files := 1
unitTestsGroup_6_u27_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_6_u27_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_6_u27_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_6_u27
unitTestsGroup_6_u27_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_6_u27,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_6_u27_CLASS := TEST
unitTestsGroup_6_u27_TEST_RUNNER_CMD :=  u27.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_6_u27,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_6_u30)),)
unitTestsGroup_6_u30 := self/src/FWCore/MessageService/test
unitTestsGroup_6_u30_files := 1
unitTestsGroup_6_u30_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_6_u30_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_6_u30_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_6_u30
unitTestsGroup_6_u30_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_6_u30,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_6_u30_CLASS := TEST
unitTestsGroup_6_u30_TEST_RUNNER_CMD :=  u30.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_6_u30,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_6_u31)),)
unitTestsGroup_6_u31 := self/src/FWCore/MessageService/test
unitTestsGroup_6_u31_files := 1
unitTestsGroup_6_u31_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_6_u31_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_6_u31_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_6_u31
unitTestsGroup_6_u31_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_6_u31,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_6_u31_CLASS := TEST
unitTestsGroup_6_u31_TEST_RUNNER_CMD :=  u31.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_6_u31,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_6_u33)),)
unitTestsGroup_6_u33 := self/src/FWCore/MessageService/test
unitTestsGroup_6_u33_files := 1
unitTestsGroup_6_u33_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_6_u33_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_6_u33_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_6_u33
unitTestsGroup_6_u33_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_6_u33,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_6_u33_CLASS := TEST
unitTestsGroup_6_u33_TEST_RUNNER_CMD :=  u33.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_6_u33,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_d_u13d)),)
unitTestsGroup_d_u13d := self/src/FWCore/MessageService/test
unitTestsGroup_d_u13d_files := 1
unitTestsGroup_d_u13d_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_d_u13d_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_d_u13d_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_d_u13d
unitTestsGroup_d_u13d_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_d_u13d,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_d_u13d_CLASS := TEST
unitTestsGroup_d_u13d_TEST_RUNNER_CMD :=  u13d.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_d_u13d,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_d_u16)),)
unitTestsGroup_d_u16 := self/src/FWCore/MessageService/test
unitTestsGroup_d_u16_files := 1
unitTestsGroup_d_u16_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_d_u16_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_d_u16_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_d_u16
unitTestsGroup_d_u16_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_d_u16,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_d_u16_CLASS := TEST
unitTestsGroup_d_u16_TEST_RUNNER_CMD :=  u16.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_d_u16,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_d_u19d)),)
unitTestsGroup_d_u19d := self/src/FWCore/MessageService/test
unitTestsGroup_d_u19d_files := 1
unitTestsGroup_d_u19d_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_d_u19d_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_d_u19d_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_d_u19d
unitTestsGroup_d_u19d_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_d_u19d,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_d_u19d_CLASS := TEST
unitTestsGroup_d_u19d_TEST_RUNNER_CMD :=  u19d.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_d_u19d,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_d_u1d)),)
unitTestsGroup_d_u1d := self/src/FWCore/MessageService/test
unitTestsGroup_d_u1d_files := 1
unitTestsGroup_d_u1d_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_d_u1d_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_d_u1d_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_d_u1d
unitTestsGroup_d_u1d_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_d_u1d,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_d_u1d_CLASS := TEST
unitTestsGroup_d_u1d_TEST_RUNNER_CMD :=  u1d.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_d_u1d,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsGroup_d_u33d)),)
unitTestsGroup_d_u33d := self/src/FWCore/MessageService/test
unitTestsGroup_d_u33d_files := 1
unitTestsGroup_d_u33d_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsGroup_d_u33d_LOC_USE := self   boost FWCore/Utilities
unitTestsGroup_d_u33d_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsGroup_d_u33d
unitTestsGroup_d_u33d_INIT_FUNC        += $$(eval $$(call Binary,unitTestsGroup_d_u33d,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsGroup_d_u33d_CLASS := TEST
unitTestsGroup_d_u33d_TEST_RUNNER_CMD :=  u33d.sh
else
$(eval $(call MultipleWarningMsg,unitTestsGroup_d_u33d,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsLimits_u11)),)
unitTestsLimits_u11 := self/src/FWCore/MessageService/test
unitTestsLimits_u11_files := 1
unitTestsLimits_u11_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsLimits_u11_LOC_USE := self   boost FWCore/Utilities
unitTestsLimits_u11_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsLimits_u11
unitTestsLimits_u11_INIT_FUNC        += $$(eval $$(call Binary,unitTestsLimits_u11,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsLimits_u11_CLASS := TEST
unitTestsLimits_u11_TEST_RUNNER_CMD :=  u11.sh
else
$(eval $(call MultipleWarningMsg,unitTestsLimits_u11,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsLimits_u36)),)
unitTestsLimits_u36 := self/src/FWCore/MessageService/test
unitTestsLimits_u36_files := 1
unitTestsLimits_u36_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsLimits_u36_LOC_USE := self   boost FWCore/Utilities
unitTestsLimits_u36_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsLimits_u36
unitTestsLimits_u36_INIT_FUNC        += $$(eval $$(call Binary,unitTestsLimits_u36,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsLimits_u36_CLASS := TEST
unitTestsLimits_u36_TEST_RUNNER_CMD :=  u36.sh
else
$(eval $(call MultipleWarningMsg,unitTestsLimits_u36,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsLimits_u7)),)
unitTestsLimits_u7 := self/src/FWCore/MessageService/test
unitTestsLimits_u7_files := 1
unitTestsLimits_u7_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsLimits_u7_LOC_USE := self   boost FWCore/Utilities
unitTestsLimits_u7_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsLimits_u7
unitTestsLimits_u7_INIT_FUNC        += $$(eval $$(call Binary,unitTestsLimits_u7,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsLimits_u7_CLASS := TEST
unitTestsLimits_u7_TEST_RUNNER_CMD :=  u7.sh
else
$(eval $(call MultipleWarningMsg,unitTestsLimits_u7,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsLimits_u8)),)
unitTestsLimits_u8 := self/src/FWCore/MessageService/test
unitTestsLimits_u8_files := 1
unitTestsLimits_u8_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsLimits_u8_LOC_USE := self   boost FWCore/Utilities
unitTestsLimits_u8_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsLimits_u8
unitTestsLimits_u8_INIT_FUNC        += $$(eval $$(call Binary,unitTestsLimits_u8,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsLimits_u8_CLASS := TEST
unitTestsLimits_u8_TEST_RUNNER_CMD :=  u8.sh
else
$(eval $(call MultipleWarningMsg,unitTestsLimits_u8,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsStatistics_u28)),)
unitTestsStatistics_u28 := self/src/FWCore/MessageService/test
unitTestsStatistics_u28_files := 1
unitTestsStatistics_u28_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsStatistics_u28_LOC_USE := self   boost FWCore/Utilities
unitTestsStatistics_u28_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsStatistics_u28
unitTestsStatistics_u28_INIT_FUNC        += $$(eval $$(call Binary,unitTestsStatistics_u28,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsStatistics_u28_CLASS := TEST
unitTestsStatistics_u28_TEST_RUNNER_CMD :=  u28.sh
else
$(eval $(call MultipleWarningMsg,unitTestsStatistics_u28,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsStatistics_u3)),)
unitTestsStatistics_u3 := self/src/FWCore/MessageService/test
unitTestsStatistics_u3_files := 1
unitTestsStatistics_u3_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsStatistics_u3_LOC_USE := self   boost FWCore/Utilities
unitTestsStatistics_u3_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsStatistics_u3
unitTestsStatistics_u3_INIT_FUNC        += $$(eval $$(call Binary,unitTestsStatistics_u3,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsStatistics_u3_CLASS := TEST
unitTestsStatistics_u3_TEST_RUNNER_CMD :=  u3.sh
else
$(eval $(call MultipleWarningMsg,unitTestsStatistics_u3,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsStatistics_u4)),)
unitTestsStatistics_u4 := self/src/FWCore/MessageService/test
unitTestsStatistics_u4_files := 1
unitTestsStatistics_u4_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsStatistics_u4_LOC_USE := self   boost FWCore/Utilities
unitTestsStatistics_u4_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsStatistics_u4
unitTestsStatistics_u4_INIT_FUNC        += $$(eval $$(call Binary,unitTestsStatistics_u4,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsStatistics_u4_CLASS := TEST
unitTestsStatistics_u4_TEST_RUNNER_CMD :=  u4.sh
else
$(eval $(call MultipleWarningMsg,unitTestsStatistics_u4,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(unitTestsStatistics_u5)),)
unitTestsStatistics_u5 := self/src/FWCore/MessageService/test
unitTestsStatistics_u5_files := 1
unitTestsStatistics_u5_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
unitTestsStatistics_u5_LOC_USE := self   boost FWCore/Utilities
unitTestsStatistics_u5_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += unitTestsStatistics_u5
unitTestsStatistics_u5_INIT_FUNC        += $$(eval $$(call Binary,unitTestsStatistics_u5,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
unitTestsStatistics_u5_CLASS := TEST
unitTestsStatistics_u5_TEST_RUNNER_CMD :=  u5.sh
else
$(eval $(call MultipleWarningMsg,unitTestsStatistics_u5,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(MLPrintProcessInformation)),)
MLPrintProcessInformation := self/src/FWCore/MessageService/test
MLPrintProcessInformation_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,PrintProcessInformation.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
MLPrintProcessInformation_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
MLPrintProcessInformation_LOC_USE := self   boost FWCore/Utilities DataFormats/Provenance FWCore/Framework FWCore/MessageLogger FWCore/ServiceRegistry
MLPrintProcessInformation_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,MLPrintProcessInformation,MLPrintProcessInformation,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
MLPrintProcessInformation_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += MLPrintProcessInformation
MLPrintProcessInformation_INIT_FUNC        += $$(eval $$(call Library,MLPrintProcessInformation,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
MLPrintProcessInformation_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,MLPrintProcessInformation,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(MLexampleModule_1)),)
MLexampleModule_1 := self/src/FWCore/MessageService/test
MLexampleModule_1_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,MLexampleModule_1.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
MLexampleModule_1_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
MLexampleModule_1_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
MLexampleModule_1_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,MLexampleModule_1,MLexampleModule_1,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
MLexampleModule_1_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += MLexampleModule_1
MLexampleModule_1_INIT_FUNC        += $$(eval $$(call Library,MLexampleModule_1,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
MLexampleModule_1_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,MLexampleModule_1,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(MemoryTestClient_A)),)
MemoryTestClient_A := self/src/FWCore/MessageService/test
MemoryTestClient_A_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,MemoryTestClient_A.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
MemoryTestClient_A_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
MemoryTestClient_A_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
MemoryTestClient_A_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,MemoryTestClient_A,MemoryTestClient_A,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
MemoryTestClient_A_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += MemoryTestClient_A
MemoryTestClient_A_INIT_FUNC        += $$(eval $$(call Library,MemoryTestClient_A,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
MemoryTestClient_A_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,MemoryTestClient_A,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(MessageLoggerClient)),)
MessageLoggerClient := self/src/FWCore/MessageService/test
MessageLoggerClient_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,MessageLoggerClient.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
MessageLoggerClient_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
MessageLoggerClient_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
MessageLoggerClient_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,MessageLoggerClient,MessageLoggerClient,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
MessageLoggerClient_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += MessageLoggerClient
MessageLoggerClient_INIT_FUNC        += $$(eval $$(call Library,MessageLoggerClient,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
MessageLoggerClient_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,MessageLoggerClient,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(PSetTestClient_A)),)
PSetTestClient_A := self/src/FWCore/MessageService/test
PSetTestClient_A_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,PSetTestClient_A.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
PSetTestClient_A_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
PSetTestClient_A_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
PSetTestClient_A_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PSetTestClient_A,PSetTestClient_A,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
PSetTestClient_A_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += PSetTestClient_A
PSetTestClient_A_INIT_FUNC        += $$(eval $$(call Library,PSetTestClient_A,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
PSetTestClient_A_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,PSetTestClient_A,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(ProblemTestClient_t1)),)
ProblemTestClient_t1 := self/src/FWCore/MessageService/test
ProblemTestClient_t1_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,ProblemTestClient_t1.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
ProblemTestClient_t1_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
ProblemTestClient_t1_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
ProblemTestClient_t1_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,ProblemTestClient_t1,ProblemTestClient_t1,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
ProblemTestClient_t1_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += ProblemTestClient_t1
ProblemTestClient_t1_INIT_FUNC        += $$(eval $$(call Library,ProblemTestClient_t1,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
ProblemTestClient_t1_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,ProblemTestClient_t1,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_A)),)
UnitTestClient_A := self/src/FWCore/MessageService/test
UnitTestClient_A_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_A.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_A_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_A_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_A_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_A,UnitTestClient_A,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_A_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_A
UnitTestClient_A_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_A,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_A_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_A,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_Ad)),)
UnitTestClient_Ad := self/src/FWCore/MessageService/test
UnitTestClient_Ad_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_Ad.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_Ad_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_Ad_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_Ad_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_Ad,UnitTestClient_Ad,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_Ad_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_Ad
UnitTestClient_Ad_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_Ad,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_Ad_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_Ad,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_B)),)
UnitTestClient_B := self/src/FWCore/MessageService/test
UnitTestClient_B_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_B.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_B_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_B_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_B_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_B,UnitTestClient_B,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_B_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_B
UnitTestClient_B_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_B,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_B_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_B,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_C)),)
UnitTestClient_C := self/src/FWCore/MessageService/test
UnitTestClient_C_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_C.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_C_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_C_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_C_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_C,UnitTestClient_C,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_C_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_C
UnitTestClient_C_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_C,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_C_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_C,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_D)),)
UnitTestClient_D := self/src/FWCore/MessageService/test
UnitTestClient_D_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_D.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_D_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_D_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_D_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_D,UnitTestClient_D,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_D_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_D
UnitTestClient_D_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_D,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_D_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_D,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_E)),)
UnitTestClient_E := self/src/FWCore/MessageService/test
UnitTestClient_E_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_E.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_E_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_E_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_E_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_E,UnitTestClient_E,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_E_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_E
UnitTestClient_E_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_E,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_E_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_E,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_F)),)
UnitTestClient_F := self/src/FWCore/MessageService/test
UnitTestClient_F_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_F.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_F_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_F_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_F_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_F,UnitTestClient_F,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_F_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_F
UnitTestClient_F_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_F,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_F_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_F,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_G)),)
UnitTestClient_G := self/src/FWCore/MessageService/test
UnitTestClient_G_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_G.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_G_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_G_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_G_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_G,UnitTestClient_G,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_G_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_G
UnitTestClient_G_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_G,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_G_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_G,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_H)),)
UnitTestClient_H := self/src/FWCore/MessageService/test
UnitTestClient_H_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_H.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_H_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_H_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_H_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_H,UnitTestClient_H,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_H_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_H
UnitTestClient_H_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_H,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_H_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_H,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_Hd)),)
UnitTestClient_Hd := self/src/FWCore/MessageService/test
UnitTestClient_Hd_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_Hd.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_Hd_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_Hd_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_Hd_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_Hd,UnitTestClient_Hd,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_Hd_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_Hd
UnitTestClient_Hd_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_Hd,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_Hd_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_Hd,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_I)),)
UnitTestClient_I := self/src/FWCore/MessageService/test
UnitTestClient_I_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_I.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_I_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_I_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_I_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_I,UnitTestClient_I,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_I_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_I
UnitTestClient_I_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_I,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_I_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_I,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_J)),)
UnitTestClient_J := self/src/FWCore/MessageService/test
UnitTestClient_J_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_J.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_J_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_J_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_J_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_J,UnitTestClient_J,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_J_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_J
UnitTestClient_J_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_J,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_J_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_J,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_K)),)
UnitTestClient_K := self/src/FWCore/MessageService/test
UnitTestClient_K_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_K.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_K_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_K_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_K_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_K,UnitTestClient_K,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_K_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_K
UnitTestClient_K_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_K,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_K_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_K,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_M)),)
UnitTestClient_M := self/src/FWCore/MessageService/test
UnitTestClient_M_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_M.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_M_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_M_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_M_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_M,UnitTestClient_M,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_M_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_M
UnitTestClient_M_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_M,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_M_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_M,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_N)),)
UnitTestClient_N := self/src/FWCore/MessageService/test
UnitTestClient_N_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_N.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_N_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_N_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_N_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_N,UnitTestClient_N,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_N_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_N
UnitTestClient_N_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_N,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_N_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_N,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_Nd)),)
UnitTestClient_Nd := self/src/FWCore/MessageService/test
UnitTestClient_Nd_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_Nd.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_Nd_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_Nd_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_Nd_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_Nd,UnitTestClient_Nd,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_Nd_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_Nd
UnitTestClient_Nd_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_Nd,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_Nd_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_Nd,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_O)),)
UnitTestClient_O := self/src/FWCore/MessageService/test
UnitTestClient_O_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_O.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_O_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_O_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_O_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_O,UnitTestClient_O,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_O_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_O
UnitTestClient_O_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_O,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_O_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_O,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_P)),)
UnitTestClient_P := self/src/FWCore/MessageService/test
UnitTestClient_P_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_P.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_P_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_P_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_P_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_P,UnitTestClient_P,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_P_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_P
UnitTestClient_P_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_P,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_P_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_P,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_Q)),)
UnitTestClient_Q := self/src/FWCore/MessageService/test
UnitTestClient_Q_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_Q.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_Q_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_Q_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_Q_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_Q,UnitTestClient_Q,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_Q_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_Q
UnitTestClient_Q_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_Q,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_Q_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_Q,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_R)),)
UnitTestClient_R := self/src/FWCore/MessageService/test
UnitTestClient_R_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_R.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_R_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_R_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_R_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_R,UnitTestClient_R,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_R_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_R
UnitTestClient_R_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_R,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_R_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_R,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_S)),)
UnitTestClient_S := self/src/FWCore/MessageService/test
UnitTestClient_S_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_S.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_S_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_S_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_S_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_S,UnitTestClient_S,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_S_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_S
UnitTestClient_S_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_S,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_S_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_S,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_SLumi)),)
UnitTestClient_SLumi := self/src/FWCore/MessageService/test
UnitTestClient_SLumi_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_SLumi.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_SLumi_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_SLumi_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_SLumi_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_SLumi,UnitTestClient_SLumi,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_SLumi_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_SLumi
UnitTestClient_SLumi_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_SLumi,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_SLumi_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_SLumi,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_T)),)
UnitTestClient_T := self/src/FWCore/MessageService/test
UnitTestClient_T_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_T.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_T_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_T_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_T_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_T,UnitTestClient_T,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_T_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_T
UnitTestClient_T_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_T,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_T_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_T,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_V)),)
UnitTestClient_V := self/src/FWCore/MessageService/test
UnitTestClient_V_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_V.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_V_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_V_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_V_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_V,UnitTestClient_V,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_V_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_V
UnitTestClient_V_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_V,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_V_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_V,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_Vd)),)
UnitTestClient_Vd := self/src/FWCore/MessageService/test
UnitTestClient_Vd_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_Vd.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_Vd_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_Vd_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_Vd_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_Vd,UnitTestClient_Vd,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_Vd_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_Vd
UnitTestClient_Vd_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_Vd,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_Vd_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_Vd,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_W)),)
UnitTestClient_W := self/src/FWCore/MessageService/test
UnitTestClient_W_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_W.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_W_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_W_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_W_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_W,UnitTestClient_W,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_W_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_W
UnitTestClient_W_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_W,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_W_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_W,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestClient_X)),)
UnitTestClient_X := self/src/FWCore/MessageService/test
UnitTestClient_X_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestClient_X.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestClient_X_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestClient_X_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework
UnitTestClient_X_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestClient_X,UnitTestClient_X,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestClient_X_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestClient_X
UnitTestClient_X_INIT_FUNC        += $$(eval $$(call Library,UnitTestClient_X,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestClient_X_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestClient_X,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestService_H)),)
UnitTestService_H := self/src/FWCore/MessageService/test
UnitTestService_H_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestService_H.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestService_H_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestService_H_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry
UnitTestService_H_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestService_H,UnitTestService_H,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestService_H_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestService_H
UnitTestService_H_INIT_FUNC        += $$(eval $$(call Library,UnitTestService_H,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestService_H_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestService_H,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(UnitTestService_Hd)),)
UnitTestService_Hd := self/src/FWCore/MessageService/test
UnitTestService_Hd_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,UnitTestService_Hd.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
UnitTestService_Hd_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
UnitTestService_Hd_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry
UnitTestService_Hd_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UnitTestService_Hd,UnitTestService_Hd,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
UnitTestService_Hd_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += UnitTestService_Hd
UnitTestService_Hd_INIT_FUNC        += $$(eval $$(call Library,UnitTestService_Hd,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UnitTestService_Hd_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,UnitTestService_Hd,src/FWCore/MessageService/test))
endif
ifeq ($(strip $(makeSignals)),)
makeSignals := self/src/FWCore/MessageService/test
makeSignals_files := $(patsubst src/FWCore/MessageService/test/%,%,$(foreach file,makeSignals.cc,$(eval xfile:=$(wildcard src/FWCore/MessageService/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/test/$(file). Please fix src/FWCore/MessageService/test/BuildFile.))))
makeSignals_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/test/BuildFile
makeSignals_LOC_USE := self   boost FWCore/Utilities FWCore/MessageLogger FWCore/Framework rootcore
makeSignals_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,makeSignals,makeSignals,$(SCRAMSTORENAME_LIB),src/FWCore/MessageService/test))
makeSignals_PACKAGE := self/src/FWCore/MessageService/test
ALL_PRODS += makeSignals
makeSignals_INIT_FUNC        += $$(eval $$(call Library,makeSignals,src/FWCore/MessageService/test,src_FWCore_MessageService_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
makeSignals_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,makeSignals,src/FWCore/MessageService/test))
endif
ALL_COMMONRULES += src_FWCore_MessageService_test
src_FWCore_MessageService_test_parent := FWCore/MessageService
src_FWCore_MessageService_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_FWCore_MessageService_test,src/FWCore/MessageService/test,TEST))
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
ALL_PACKAGES += FWCore/MessageService
subdirs_src_FWCore_MessageService := src_FWCore_MessageService_python src_FWCore_MessageService_bin src_FWCore_MessageService_plugins src_FWCore_MessageService_test src_FWCore_MessageService_src
ALL_SUBSYSTEMS+=FWCore
subdirs_src_FWCore = src_FWCore_MessageService src_FWCore_MessageLogger
subdirs_src += src_FWCore
ALL_PACKAGES += UserCode/OmtfAnalysis
subdirs_src_UserCode_OmtfAnalysis := src_UserCode_OmtfAnalysis_python src_UserCode_OmtfAnalysis_plugins src_UserCode_OmtfAnalysis_test src_UserCode_OmtfAnalysis_src
ALL_PACKAGES += FWCore/MessageLogger
subdirs_src_FWCore_MessageLogger := src_FWCore_MessageLogger_python src_FWCore_MessageLogger_scripts src_FWCore_MessageLogger_src
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
ALL_SUBSYSTEMS+=L1Trigger
subdirs_src_L1Trigger = src_L1Trigger_L1TMuonOverlapPhase1 src_L1Trigger_L1TMuonOverlapPhase2 src_L1Trigger_Phase2L1GMT src_L1Trigger_L1TMuon
subdirs_src += src_L1Trigger
ifeq ($(strip $(Standalone)),)
Standalone := self/src/FWCore/MessageService/bin
Standalone_files := $(patsubst src/FWCore/MessageService/bin/%,%,$(foreach file,Standalone.cpp,$(eval xfile:=$(wildcard src/FWCore/MessageService/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/FWCore/MessageService/bin/$(file). Please fix src/FWCore/MessageService/bin/BuildFile.))))
Standalone_BuildFile    := $(WORKINGDIR)/cache/bf/src/FWCore/MessageService/bin/BuildFile
Standalone_LOC_USE := self   boost boost_program_options FWCore/MessageLogger FWCore/ParameterSetReader FWCore/PluginManager FWCore/ServiceRegistry FWCore/Utilities
Standalone_PACKAGE := self/src/FWCore/MessageService/bin
ALL_PRODS += Standalone
Standalone_INIT_FUNC        += $$(eval $$(call Binary,Standalone,src/FWCore/MessageService/bin,src_FWCore_MessageService_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
Standalone_CLASS := BINARY
else
$(eval $(call MultipleWarningMsg,Standalone,src/FWCore/MessageService/bin))
endif
ALL_COMMONRULES += src_FWCore_MessageService_bin
src_FWCore_MessageService_bin_parent := FWCore/MessageService
src_FWCore_MessageService_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_FWCore_MessageService_bin,src/FWCore/MessageService/bin,BINARY))
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
ALL_PACKAGES += L1Trigger/L1TMuonOverlapPhase1
subdirs_src_L1Trigger_L1TMuonOverlapPhase1 := src_L1Trigger_L1TMuonOverlapPhase1_python src_L1Trigger_L1TMuonOverlapPhase1_plugins src_L1Trigger_L1TMuonOverlapPhase1_test src_L1Trigger_L1TMuonOverlapPhase1_src
