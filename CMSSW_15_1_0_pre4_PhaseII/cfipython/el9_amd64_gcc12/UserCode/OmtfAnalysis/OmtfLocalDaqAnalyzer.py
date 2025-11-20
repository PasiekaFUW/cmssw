import FWCore.ParameterSet.Config as cms

def OmtfLocalDaqAnalyzer(*args, **kwargs):
  mod = cms.EDAnalyzer('OmtfLocalDaqAnalyzer',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
