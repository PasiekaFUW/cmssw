import FWCore.ParameterSet.Config as cms

def OmtfDigiCompare(*args, **kwargs):
  mod = cms.EDAnalyzer('OmtfDigiCompare',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
