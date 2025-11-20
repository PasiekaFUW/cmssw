import FWCore.ParameterSet.Config as cms

def Phase2SATrackerMatch(*args, **kwargs):
  mod = cms.EDProducer('Phase2SATrackerMatch',
    samuons = cms.InputTag('samuons'),
    trackerMuons = cms.InputTag('trackerMuons'),
    verbose = cms.untracked.bool(False),
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
