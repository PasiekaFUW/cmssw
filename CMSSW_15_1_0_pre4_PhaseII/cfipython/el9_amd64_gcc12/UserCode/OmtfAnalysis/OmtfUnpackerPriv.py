import FWCore.ParameterSet.Config as cms

def OmtfUnpackerPriv(*args, **kwargs):
  mod = cms.EDProducer('OmtfUnpackerPriv',
    InputLabel = cms.InputTag('rawDataCollector'),
    useRpcConnectionFile = cms.bool(False),
    rpcConnectionFile = cms.string('EventFilter/L1TRawToDigi/data/OmtfRpcLinksMap.txt'),
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
