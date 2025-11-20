import FWCore.ParameterSet.Config as cms

def OmtfTreeMaker(*args, **kwargs):
  mod = cms.EDAnalyzer('OmtfTreeMaker',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
