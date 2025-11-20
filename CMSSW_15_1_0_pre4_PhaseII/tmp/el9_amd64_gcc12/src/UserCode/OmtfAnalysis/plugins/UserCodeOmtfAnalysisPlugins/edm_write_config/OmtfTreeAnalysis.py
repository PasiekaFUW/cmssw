import FWCore.ParameterSet.Config as cms

def OmtfTreeAnalysis(*args, **kwargs):
  mod = cms.EDAnalyzer('OmtfTreeAnalysis',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
