import FWCore.ParameterSet.Config as cms

def OmtfAngleAnalyzer(*args, **kwargs):
  mod = cms.EDAnalyzer('OmtfAngleAnalyzer',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
