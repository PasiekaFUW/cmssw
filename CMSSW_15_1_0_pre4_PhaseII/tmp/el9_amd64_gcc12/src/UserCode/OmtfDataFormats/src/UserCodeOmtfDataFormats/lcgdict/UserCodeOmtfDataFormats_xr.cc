// Do NOT change. Changes will be lost next time file is generated

#define R__DICTIONARY_FILENAME tmpdIel9_amd64_gcc12dIsrcdIUserCodedIOmtfDataFormatsdIsrcdIUserCodeOmtfDataFormatsdIlcgdictdIUserCodeOmtfDataFormats_xr
#define R__NO_DEPRECATION

/*******************************************************************/
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#define G__DICTIONARY
#include "ROOT/RConfig.hxx"
#include "TClass.h"
#include "TDictAttributeMap.h"
#include "TInterpreter.h"
#include "TROOT.h"
#include "TBuffer.h"
#include "TMemberInspector.h"
#include "TInterpreter.h"
#include "TVirtualMutex.h"
#include "TError.h"

#ifndef G__ROOT
#define G__ROOT
#endif

#include "RtypesImp.h"
#include "TIsAProxy.h"
#include "TFileMergeInfo.h"
#include <algorithm>
#include "TCollectionProxyInfo.h"
/*******************************************************************/

#include "TDataMember.h"

// Header files passed as explicit arguments
#include "src/UserCode/OmtfDataFormats/src/classes.h"

// Header files passed via #pragma extra_include

// The generated code does not explicitly qualify STL entities
namespace std {} using namespace std;

namespace ROOT {
   static void *new_L1Obj(void *p = nullptr);
   static void *newArray_L1Obj(Long_t size, void *p);
   static void delete_L1Obj(void *p);
   static void deleteArray_L1Obj(void *p);
   static void destruct_L1Obj(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::L1Obj*)
   {
      ::L1Obj *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::L1Obj >(nullptr);
      static ::ROOT::TGenericClassInfo 
         instance("L1Obj", ::L1Obj::Class_Version(), "UserCode/OmtfDataFormats/interface/L1Obj.h", 7,
                  typeid(::L1Obj), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::L1Obj::Dictionary, isa_proxy, 12,
                  sizeof(::L1Obj) );
      instance.SetNew(&new_L1Obj);
      instance.SetNewArray(&newArray_L1Obj);
      instance.SetDelete(&delete_L1Obj);
      instance.SetDeleteArray(&deleteArray_L1Obj);
      instance.SetDestructor(&destruct_L1Obj);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::L1Obj*)
   {
      return GenerateInitInstanceLocal(static_cast<::L1Obj*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::L1Obj*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_EventData(void *p = nullptr);
   static void *newArray_EventData(Long_t size, void *p);
   static void delete_EventData(void *p);
   static void deleteArray_EventData(void *p);
   static void destruct_EventData(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::EventData*)
   {
      ::EventData *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::EventData >(nullptr);
      static ::ROOT::TGenericClassInfo 
         instance("EventData", ::EventData::Class_Version(), "UserCode/OmtfDataFormats/interface/EventData.h", 11,
                  typeid(::EventData), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::EventData::Dictionary, isa_proxy, 12,
                  sizeof(::EventData) );
      instance.SetNew(&new_EventData);
      instance.SetNewArray(&newArray_EventData);
      instance.SetDelete(&delete_EventData);
      instance.SetDeleteArray(&deleteArray_EventData);
      instance.SetDestructor(&destruct_EventData);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::EventData*)
   {
      return GenerateInitInstanceLocal(static_cast<::EventData*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::EventData*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_EventObj(void *p = nullptr);
   static void *newArray_EventObj(Long_t size, void *p);
   static void delete_EventObj(void *p);
   static void deleteArray_EventObj(void *p);
   static void destruct_EventObj(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::EventObj*)
   {
      ::EventObj *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::EventObj >(nullptr);
      static ::ROOT::TGenericClassInfo 
         instance("EventObj", ::EventObj::Class_Version(), "UserCode/OmtfDataFormats/interface/EventObj.h", 8,
                  typeid(::EventObj), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::EventObj::Dictionary, isa_proxy, 12,
                  sizeof(::EventObj) );
      instance.SetNew(&new_EventObj);
      instance.SetNewArray(&newArray_EventObj);
      instance.SetDelete(&delete_EventObj);
      instance.SetDeleteArray(&deleteArray_EventObj);
      instance.SetDestructor(&destruct_EventObj);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::EventObj*)
   {
      return GenerateInitInstanceLocal(static_cast<::EventObj*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::EventObj*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_TrackObj(void *p = nullptr);
   static void *newArray_TrackObj(Long_t size, void *p);
   static void delete_TrackObj(void *p);
   static void deleteArray_TrackObj(void *p);
   static void destruct_TrackObj(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::TrackObj*)
   {
      ::TrackObj *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::TrackObj >(nullptr);
      static ::ROOT::TGenericClassInfo 
         instance("TrackObj", ::TrackObj::Class_Version(), "UserCode/OmtfDataFormats/interface/TrackObj.h", 6,
                  typeid(::TrackObj), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::TrackObj::Dictionary, isa_proxy, 12,
                  sizeof(::TrackObj) );
      instance.SetNew(&new_TrackObj);
      instance.SetNewArray(&newArray_TrackObj);
      instance.SetDelete(&delete_TrackObj);
      instance.SetDeleteArray(&deleteArray_TrackObj);
      instance.SetDestructor(&destruct_TrackObj);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::TrackObj*)
   {
      return GenerateInitInstanceLocal(static_cast<::TrackObj*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::TrackObj*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_MuonObj(void *p = nullptr);
   static void *newArray_MuonObj(Long_t size, void *p);
   static void delete_MuonObj(void *p);
   static void deleteArray_MuonObj(void *p);
   static void destruct_MuonObj(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::MuonObj*)
   {
      ::MuonObj *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::MuonObj >(nullptr);
      static ::ROOT::TGenericClassInfo 
         instance("MuonObj", ::MuonObj::Class_Version(), "UserCode/OmtfDataFormats/interface/MuonObj.h", 6,
                  typeid(::MuonObj), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::MuonObj::Dictionary, isa_proxy, 12,
                  sizeof(::MuonObj) );
      instance.SetNew(&new_MuonObj);
      instance.SetNewArray(&newArray_MuonObj);
      instance.SetDelete(&delete_MuonObj);
      instance.SetDeleteArray(&deleteArray_MuonObj);
      instance.SetDestructor(&destruct_MuonObj);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::MuonObj*)
   {
      return GenerateInitInstanceLocal(static_cast<::MuonObj*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::MuonObj*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_MuonObjColl(void *p = nullptr);
   static void *newArray_MuonObjColl(Long_t size, void *p);
   static void delete_MuonObjColl(void *p);
   static void deleteArray_MuonObjColl(void *p);
   static void destruct_MuonObjColl(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::MuonObjColl*)
   {
      ::MuonObjColl *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::MuonObjColl >(nullptr);
      static ::ROOT::TGenericClassInfo 
         instance("MuonObjColl", ::MuonObjColl::Class_Version(), "UserCode/OmtfDataFormats/interface/MuonObjColl.h", 10,
                  typeid(::MuonObjColl), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::MuonObjColl::Dictionary, isa_proxy, 12,
                  sizeof(::MuonObjColl) );
      instance.SetNew(&new_MuonObjColl);
      instance.SetNewArray(&newArray_MuonObjColl);
      instance.SetDelete(&delete_MuonObjColl);
      instance.SetDeleteArray(&deleteArray_MuonObjColl);
      instance.SetDestructor(&destruct_MuonObjColl);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::MuonObjColl*)
   {
      return GenerateInitInstanceLocal(static_cast<::MuonObjColl*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::MuonObjColl*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_L1ObjColl(void *p = nullptr);
   static void *newArray_L1ObjColl(Long_t size, void *p);
   static void delete_L1ObjColl(void *p);
   static void deleteArray_L1ObjColl(void *p);
   static void destruct_L1ObjColl(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::L1ObjColl*)
   {
      ::L1ObjColl *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::L1ObjColl >(nullptr);
      static ::ROOT::TGenericClassInfo 
         instance("L1ObjColl", ::L1ObjColl::Class_Version(), "UserCode/OmtfDataFormats/interface/L1ObjColl.h", 9,
                  typeid(::L1ObjColl), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::L1ObjColl::Dictionary, isa_proxy, 12,
                  sizeof(::L1ObjColl) );
      instance.SetNew(&new_L1ObjColl);
      instance.SetNewArray(&newArray_L1ObjColl);
      instance.SetDelete(&delete_L1ObjColl);
      instance.SetDeleteArray(&deleteArray_L1ObjColl);
      instance.SetDestructor(&destruct_L1ObjColl);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::L1ObjColl*)
   {
      return GenerateInitInstanceLocal(static_cast<::L1ObjColl*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::L1ObjColl*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_TriggerMenuResultObj(void *p = nullptr);
   static void *newArray_TriggerMenuResultObj(Long_t size, void *p);
   static void delete_TriggerMenuResultObj(void *p);
   static void deleteArray_TriggerMenuResultObj(void *p);
   static void destruct_TriggerMenuResultObj(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::TriggerMenuResultObj*)
   {
      ::TriggerMenuResultObj *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::TriggerMenuResultObj >(nullptr);
      static ::ROOT::TGenericClassInfo 
         instance("TriggerMenuResultObj", ::TriggerMenuResultObj::Class_Version(), "UserCode/OmtfDataFormats/interface/TriggerMenuResultObj.h", 8,
                  typeid(::TriggerMenuResultObj), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::TriggerMenuResultObj::Dictionary, isa_proxy, 12,
                  sizeof(::TriggerMenuResultObj) );
      instance.SetNew(&new_TriggerMenuResultObj);
      instance.SetNewArray(&newArray_TriggerMenuResultObj);
      instance.SetDelete(&delete_TriggerMenuResultObj);
      instance.SetDeleteArray(&deleteArray_TriggerMenuResultObj);
      instance.SetDestructor(&destruct_TriggerMenuResultObj);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::TriggerMenuResultObj*)
   {
      return GenerateInitInstanceLocal(static_cast<::TriggerMenuResultObj*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::TriggerMenuResultObj*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_SynchroCountsObj(void *p = nullptr);
   static void *newArray_SynchroCountsObj(Long_t size, void *p);
   static void delete_SynchroCountsObj(void *p);
   static void deleteArray_SynchroCountsObj(void *p);
   static void destruct_SynchroCountsObj(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::SynchroCountsObj*)
   {
      ::SynchroCountsObj *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::SynchroCountsObj >(nullptr);
      static ::ROOT::TGenericClassInfo 
         instance("SynchroCountsObj", ::SynchroCountsObj::Class_Version(), "UserCode/OmtfDataFormats/interface/SynchroCountsObj.h", 6,
                  typeid(::SynchroCountsObj), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::SynchroCountsObj::Dictionary, isa_proxy, 12,
                  sizeof(::SynchroCountsObj) );
      instance.SetNew(&new_SynchroCountsObj);
      instance.SetNewArray(&newArray_SynchroCountsObj);
      instance.SetDelete(&delete_SynchroCountsObj);
      instance.SetDeleteArray(&deleteArray_SynchroCountsObj);
      instance.SetDestructor(&destruct_SynchroCountsObj);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::SynchroCountsObj*)
   {
      return GenerateInitInstanceLocal(static_cast<::SynchroCountsObj*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::SynchroCountsObj*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_SynchroCountsObjVect(void *p = nullptr);
   static void *newArray_SynchroCountsObjVect(Long_t size, void *p);
   static void delete_SynchroCountsObjVect(void *p);
   static void deleteArray_SynchroCountsObjVect(void *p);
   static void destruct_SynchroCountsObjVect(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::SynchroCountsObjVect*)
   {
      ::SynchroCountsObjVect *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::SynchroCountsObjVect >(nullptr);
      static ::ROOT::TGenericClassInfo 
         instance("SynchroCountsObjVect", ::SynchroCountsObjVect::Class_Version(), "UserCode/OmtfDataFormats/interface/SynchroCountsObjVect.h", 9,
                  typeid(::SynchroCountsObjVect), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::SynchroCountsObjVect::Dictionary, isa_proxy, 12,
                  sizeof(::SynchroCountsObjVect) );
      instance.SetNew(&new_SynchroCountsObjVect);
      instance.SetNewArray(&newArray_SynchroCountsObjVect);
      instance.SetDelete(&delete_SynchroCountsObjVect);
      instance.SetDeleteArray(&deleteArray_SynchroCountsObjVect);
      instance.SetDestructor(&destruct_SynchroCountsObjVect);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::SynchroCountsObjVect*)
   {
      return GenerateInitInstanceLocal(static_cast<::SynchroCountsObjVect*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::SynchroCountsObjVect*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_GenObj(void *p = nullptr);
   static void *newArray_GenObj(Long_t size, void *p);
   static void delete_GenObj(void *p);
   static void deleteArray_GenObj(void *p);
   static void destruct_GenObj(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::GenObj*)
   {
      ::GenObj *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::GenObj >(nullptr);
      static ::ROOT::TGenericClassInfo 
         instance("GenObj", ::GenObj::Class_Version(), "UserCode/OmtfDataFormats/interface/GenObj.h", 7,
                  typeid(::GenObj), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::GenObj::Dictionary, isa_proxy, 12,
                  sizeof(::GenObj) );
      instance.SetNew(&new_GenObj);
      instance.SetNewArray(&newArray_GenObj);
      instance.SetDelete(&delete_GenObj);
      instance.SetDeleteArray(&deleteArray_GenObj);
      instance.SetDestructor(&destruct_GenObj);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::GenObj*)
   {
      return GenerateInitInstanceLocal(static_cast<::GenObj*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::GenObj*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_GenObjColl(void *p = nullptr);
   static void *newArray_GenObjColl(Long_t size, void *p);
   static void delete_GenObjColl(void *p);
   static void deleteArray_GenObjColl(void *p);
   static void destruct_GenObjColl(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::GenObjColl*)
   {
      ::GenObjColl *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::GenObjColl >(nullptr);
      static ::ROOT::TGenericClassInfo 
         instance("GenObjColl", ::GenObjColl::Class_Version(), "UserCode/OmtfDataFormats/interface/GenObjColl.h", 10,
                  typeid(::GenObjColl), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::GenObjColl::Dictionary, isa_proxy, 12,
                  sizeof(::GenObjColl) );
      instance.SetNew(&new_GenObjColl);
      instance.SetNewArray(&newArray_GenObjColl);
      instance.SetDelete(&delete_GenObjColl);
      instance.SetDeleteArray(&deleteArray_GenObjColl);
      instance.SetDestructor(&destruct_GenObjColl);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::GenObjColl*)
   {
      return GenerateInitInstanceLocal(static_cast<::GenObjColl*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::GenObjColl*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void delete_DetSpecObj(void *p);
   static void deleteArray_DetSpecObj(void *p);
   static void destruct_DetSpecObj(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::DetSpecObj*)
   {
      ::DetSpecObj *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::DetSpecObj >(nullptr);
      static ::ROOT::TGenericClassInfo 
         instance("DetSpecObj", ::DetSpecObj::Class_Version(), "UserCode/OmtfDataFormats/interface/DetSpecObj.h", 7,
                  typeid(::DetSpecObj), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::DetSpecObj::Dictionary, isa_proxy, 12,
                  sizeof(::DetSpecObj) );
      instance.SetDelete(&delete_DetSpecObj);
      instance.SetDeleteArray(&deleteArray_DetSpecObj);
      instance.SetDestructor(&destruct_DetSpecObj);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::DetSpecObj*)
   {
      return GenerateInitInstanceLocal(static_cast<::DetSpecObj*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::DetSpecObj*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_BxStatObj(void *p = nullptr);
   static void *newArray_BxStatObj(Long_t size, void *p);
   static void delete_BxStatObj(void *p);
   static void deleteArray_BxStatObj(void *p);
   static void destruct_BxStatObj(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::BxStatObj*)
   {
      ::BxStatObj *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::BxStatObj >(nullptr);
      static ::ROOT::TGenericClassInfo 
         instance("BxStatObj", ::BxStatObj::Class_Version(), "UserCode/OmtfDataFormats/interface/BxStatObj.h", 9,
                  typeid(::BxStatObj), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::BxStatObj::Dictionary, isa_proxy, 12,
                  sizeof(::BxStatObj) );
      instance.SetNew(&new_BxStatObj);
      instance.SetNewArray(&newArray_BxStatObj);
      instance.SetDelete(&delete_BxStatObj);
      instance.SetDeleteArray(&deleteArray_BxStatObj);
      instance.SetDestructor(&destruct_BxStatObj);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::BxStatObj*)
   {
      return GenerateInitInstanceLocal(static_cast<::BxStatObj*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::BxStatObj*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_DetBxStatObj(void *p = nullptr);
   static void *newArray_DetBxStatObj(Long_t size, void *p);
   static void delete_DetBxStatObj(void *p);
   static void deleteArray_DetBxStatObj(void *p);
   static void destruct_DetBxStatObj(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::DetBxStatObj*)
   {
      ::DetBxStatObj *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::DetBxStatObj >(nullptr);
      static ::ROOT::TGenericClassInfo 
         instance("DetBxStatObj", ::DetBxStatObj::Class_Version(), "UserCode/OmtfDataFormats/interface/DetBxStatObj.h", 12,
                  typeid(::DetBxStatObj), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::DetBxStatObj::Dictionary, isa_proxy, 12,
                  sizeof(::DetBxStatObj) );
      instance.SetNew(&new_DetBxStatObj);
      instance.SetNewArray(&newArray_DetBxStatObj);
      instance.SetDelete(&delete_DetBxStatObj);
      instance.SetDeleteArray(&deleteArray_DetBxStatObj);
      instance.SetDestructor(&destruct_DetBxStatObj);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::DetBxStatObj*)
   {
      return GenerateInitInstanceLocal(static_cast<::DetBxStatObj*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::DetBxStatObj*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

//______________________________________________________________________________
atomic_TClass_ptr L1Obj::fgIsA(nullptr);  // static to hold class pointer

//______________________________________________________________________________
const char *L1Obj::Class_Name()
{
   return "L1Obj";
}

//______________________________________________________________________________
const char *L1Obj::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::L1Obj*)nullptr)->GetImplFileName();
}

//______________________________________________________________________________
int L1Obj::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::L1Obj*)nullptr)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *L1Obj::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::L1Obj*)nullptr)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *L1Obj::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::L1Obj*)nullptr)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr EventData::fgIsA(nullptr);  // static to hold class pointer

//______________________________________________________________________________
const char *EventData::Class_Name()
{
   return "EventData";
}

//______________________________________________________________________________
const char *EventData::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::EventData*)nullptr)->GetImplFileName();
}

//______________________________________________________________________________
int EventData::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::EventData*)nullptr)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *EventData::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::EventData*)nullptr)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *EventData::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::EventData*)nullptr)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr EventObj::fgIsA(nullptr);  // static to hold class pointer

//______________________________________________________________________________
const char *EventObj::Class_Name()
{
   return "EventObj";
}

//______________________________________________________________________________
const char *EventObj::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::EventObj*)nullptr)->GetImplFileName();
}

//______________________________________________________________________________
int EventObj::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::EventObj*)nullptr)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *EventObj::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::EventObj*)nullptr)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *EventObj::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::EventObj*)nullptr)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr TrackObj::fgIsA(nullptr);  // static to hold class pointer

//______________________________________________________________________________
const char *TrackObj::Class_Name()
{
   return "TrackObj";
}

//______________________________________________________________________________
const char *TrackObj::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::TrackObj*)nullptr)->GetImplFileName();
}

//______________________________________________________________________________
int TrackObj::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::TrackObj*)nullptr)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *TrackObj::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::TrackObj*)nullptr)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *TrackObj::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::TrackObj*)nullptr)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr MuonObj::fgIsA(nullptr);  // static to hold class pointer

//______________________________________________________________________________
const char *MuonObj::Class_Name()
{
   return "MuonObj";
}

//______________________________________________________________________________
const char *MuonObj::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::MuonObj*)nullptr)->GetImplFileName();
}

//______________________________________________________________________________
int MuonObj::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::MuonObj*)nullptr)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *MuonObj::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::MuonObj*)nullptr)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *MuonObj::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::MuonObj*)nullptr)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr MuonObjColl::fgIsA(nullptr);  // static to hold class pointer

//______________________________________________________________________________
const char *MuonObjColl::Class_Name()
{
   return "MuonObjColl";
}

//______________________________________________________________________________
const char *MuonObjColl::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::MuonObjColl*)nullptr)->GetImplFileName();
}

//______________________________________________________________________________
int MuonObjColl::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::MuonObjColl*)nullptr)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *MuonObjColl::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::MuonObjColl*)nullptr)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *MuonObjColl::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::MuonObjColl*)nullptr)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr L1ObjColl::fgIsA(nullptr);  // static to hold class pointer

//______________________________________________________________________________
const char *L1ObjColl::Class_Name()
{
   return "L1ObjColl";
}

//______________________________________________________________________________
const char *L1ObjColl::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::L1ObjColl*)nullptr)->GetImplFileName();
}

//______________________________________________________________________________
int L1ObjColl::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::L1ObjColl*)nullptr)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *L1ObjColl::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::L1ObjColl*)nullptr)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *L1ObjColl::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::L1ObjColl*)nullptr)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr TriggerMenuResultObj::fgIsA(nullptr);  // static to hold class pointer

//______________________________________________________________________________
const char *TriggerMenuResultObj::Class_Name()
{
   return "TriggerMenuResultObj";
}

//______________________________________________________________________________
const char *TriggerMenuResultObj::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::TriggerMenuResultObj*)nullptr)->GetImplFileName();
}

//______________________________________________________________________________
int TriggerMenuResultObj::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::TriggerMenuResultObj*)nullptr)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *TriggerMenuResultObj::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::TriggerMenuResultObj*)nullptr)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *TriggerMenuResultObj::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::TriggerMenuResultObj*)nullptr)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr SynchroCountsObj::fgIsA(nullptr);  // static to hold class pointer

//______________________________________________________________________________
const char *SynchroCountsObj::Class_Name()
{
   return "SynchroCountsObj";
}

//______________________________________________________________________________
const char *SynchroCountsObj::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::SynchroCountsObj*)nullptr)->GetImplFileName();
}

//______________________________________________________________________________
int SynchroCountsObj::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::SynchroCountsObj*)nullptr)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *SynchroCountsObj::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::SynchroCountsObj*)nullptr)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *SynchroCountsObj::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::SynchroCountsObj*)nullptr)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr SynchroCountsObjVect::fgIsA(nullptr);  // static to hold class pointer

//______________________________________________________________________________
const char *SynchroCountsObjVect::Class_Name()
{
   return "SynchroCountsObjVect";
}

//______________________________________________________________________________
const char *SynchroCountsObjVect::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::SynchroCountsObjVect*)nullptr)->GetImplFileName();
}

//______________________________________________________________________________
int SynchroCountsObjVect::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::SynchroCountsObjVect*)nullptr)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *SynchroCountsObjVect::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::SynchroCountsObjVect*)nullptr)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *SynchroCountsObjVect::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::SynchroCountsObjVect*)nullptr)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr GenObj::fgIsA(nullptr);  // static to hold class pointer

//______________________________________________________________________________
const char *GenObj::Class_Name()
{
   return "GenObj";
}

//______________________________________________________________________________
const char *GenObj::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::GenObj*)nullptr)->GetImplFileName();
}

//______________________________________________________________________________
int GenObj::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::GenObj*)nullptr)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *GenObj::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::GenObj*)nullptr)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *GenObj::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::GenObj*)nullptr)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr GenObjColl::fgIsA(nullptr);  // static to hold class pointer

//______________________________________________________________________________
const char *GenObjColl::Class_Name()
{
   return "GenObjColl";
}

//______________________________________________________________________________
const char *GenObjColl::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::GenObjColl*)nullptr)->GetImplFileName();
}

//______________________________________________________________________________
int GenObjColl::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::GenObjColl*)nullptr)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *GenObjColl::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::GenObjColl*)nullptr)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *GenObjColl::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::GenObjColl*)nullptr)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr DetSpecObj::fgIsA(nullptr);  // static to hold class pointer

//______________________________________________________________________________
const char *DetSpecObj::Class_Name()
{
   return "DetSpecObj";
}

//______________________________________________________________________________
const char *DetSpecObj::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::DetSpecObj*)nullptr)->GetImplFileName();
}

//______________________________________________________________________________
int DetSpecObj::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::DetSpecObj*)nullptr)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *DetSpecObj::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::DetSpecObj*)nullptr)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *DetSpecObj::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::DetSpecObj*)nullptr)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr BxStatObj::fgIsA(nullptr);  // static to hold class pointer

//______________________________________________________________________________
const char *BxStatObj::Class_Name()
{
   return "BxStatObj";
}

//______________________________________________________________________________
const char *BxStatObj::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::BxStatObj*)nullptr)->GetImplFileName();
}

//______________________________________________________________________________
int BxStatObj::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::BxStatObj*)nullptr)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *BxStatObj::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::BxStatObj*)nullptr)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *BxStatObj::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::BxStatObj*)nullptr)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr DetBxStatObj::fgIsA(nullptr);  // static to hold class pointer

//______________________________________________________________________________
const char *DetBxStatObj::Class_Name()
{
   return "DetBxStatObj";
}

//______________________________________________________________________________
const char *DetBxStatObj::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::DetBxStatObj*)nullptr)->GetImplFileName();
}

//______________________________________________________________________________
int DetBxStatObj::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::DetBxStatObj*)nullptr)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *DetBxStatObj::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::DetBxStatObj*)nullptr)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *DetBxStatObj::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::DetBxStatObj*)nullptr)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
void L1Obj::Streamer(TBuffer &R__b)
{
   // Stream an object of class L1Obj.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(L1Obj::Class(),this);
   } else {
      R__b.WriteClassBuffer(L1Obj::Class(),this);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_L1Obj(void *p) {
      return  p ? new(p) ::L1Obj : new ::L1Obj;
   }
   static void *newArray_L1Obj(Long_t nElements, void *p) {
      return p ? new(p) ::L1Obj[nElements] : new ::L1Obj[nElements];
   }
   // Wrapper around operator delete
   static void delete_L1Obj(void *p) {
      delete (static_cast<::L1Obj*>(p));
   }
   static void deleteArray_L1Obj(void *p) {
      delete [] (static_cast<::L1Obj*>(p));
   }
   static void destruct_L1Obj(void *p) {
      typedef ::L1Obj current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::L1Obj

//______________________________________________________________________________
void EventData::Streamer(TBuffer &R__b)
{
   // Stream an object of class EventData.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(EventData::Class(),this);
   } else {
      R__b.WriteClassBuffer(EventData::Class(),this);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_EventData(void *p) {
      return  p ? new(p) ::EventData : new ::EventData;
   }
   static void *newArray_EventData(Long_t nElements, void *p) {
      return p ? new(p) ::EventData[nElements] : new ::EventData[nElements];
   }
   // Wrapper around operator delete
   static void delete_EventData(void *p) {
      delete (static_cast<::EventData*>(p));
   }
   static void deleteArray_EventData(void *p) {
      delete [] (static_cast<::EventData*>(p));
   }
   static void destruct_EventData(void *p) {
      typedef ::EventData current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::EventData

//______________________________________________________________________________
void EventObj::Streamer(TBuffer &R__b)
{
   // Stream an object of class EventObj.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(EventObj::Class(),this);
   } else {
      R__b.WriteClassBuffer(EventObj::Class(),this);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_EventObj(void *p) {
      return  p ? new(p) ::EventObj : new ::EventObj;
   }
   static void *newArray_EventObj(Long_t nElements, void *p) {
      return p ? new(p) ::EventObj[nElements] : new ::EventObj[nElements];
   }
   // Wrapper around operator delete
   static void delete_EventObj(void *p) {
      delete (static_cast<::EventObj*>(p));
   }
   static void deleteArray_EventObj(void *p) {
      delete [] (static_cast<::EventObj*>(p));
   }
   static void destruct_EventObj(void *p) {
      typedef ::EventObj current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::EventObj

//______________________________________________________________________________
void TrackObj::Streamer(TBuffer &R__b)
{
   // Stream an object of class TrackObj.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(TrackObj::Class(),this);
   } else {
      R__b.WriteClassBuffer(TrackObj::Class(),this);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_TrackObj(void *p) {
      return  p ? new(p) ::TrackObj : new ::TrackObj;
   }
   static void *newArray_TrackObj(Long_t nElements, void *p) {
      return p ? new(p) ::TrackObj[nElements] : new ::TrackObj[nElements];
   }
   // Wrapper around operator delete
   static void delete_TrackObj(void *p) {
      delete (static_cast<::TrackObj*>(p));
   }
   static void deleteArray_TrackObj(void *p) {
      delete [] (static_cast<::TrackObj*>(p));
   }
   static void destruct_TrackObj(void *p) {
      typedef ::TrackObj current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::TrackObj

//______________________________________________________________________________
void MuonObj::Streamer(TBuffer &R__b)
{
   // Stream an object of class MuonObj.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(MuonObj::Class(),this);
   } else {
      R__b.WriteClassBuffer(MuonObj::Class(),this);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_MuonObj(void *p) {
      return  p ? new(p) ::MuonObj : new ::MuonObj;
   }
   static void *newArray_MuonObj(Long_t nElements, void *p) {
      return p ? new(p) ::MuonObj[nElements] : new ::MuonObj[nElements];
   }
   // Wrapper around operator delete
   static void delete_MuonObj(void *p) {
      delete (static_cast<::MuonObj*>(p));
   }
   static void deleteArray_MuonObj(void *p) {
      delete [] (static_cast<::MuonObj*>(p));
   }
   static void destruct_MuonObj(void *p) {
      typedef ::MuonObj current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::MuonObj

//______________________________________________________________________________
void MuonObjColl::Streamer(TBuffer &R__b)
{
   // Stream an object of class MuonObjColl.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(MuonObjColl::Class(),this);
   } else {
      R__b.WriteClassBuffer(MuonObjColl::Class(),this);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_MuonObjColl(void *p) {
      return  p ? new(p) ::MuonObjColl : new ::MuonObjColl;
   }
   static void *newArray_MuonObjColl(Long_t nElements, void *p) {
      return p ? new(p) ::MuonObjColl[nElements] : new ::MuonObjColl[nElements];
   }
   // Wrapper around operator delete
   static void delete_MuonObjColl(void *p) {
      delete (static_cast<::MuonObjColl*>(p));
   }
   static void deleteArray_MuonObjColl(void *p) {
      delete [] (static_cast<::MuonObjColl*>(p));
   }
   static void destruct_MuonObjColl(void *p) {
      typedef ::MuonObjColl current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::MuonObjColl

//______________________________________________________________________________
void L1ObjColl::Streamer(TBuffer &R__b)
{
   // Stream an object of class L1ObjColl.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(L1ObjColl::Class(),this);
   } else {
      R__b.WriteClassBuffer(L1ObjColl::Class(),this);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_L1ObjColl(void *p) {
      return  p ? new(p) ::L1ObjColl : new ::L1ObjColl;
   }
   static void *newArray_L1ObjColl(Long_t nElements, void *p) {
      return p ? new(p) ::L1ObjColl[nElements] : new ::L1ObjColl[nElements];
   }
   // Wrapper around operator delete
   static void delete_L1ObjColl(void *p) {
      delete (static_cast<::L1ObjColl*>(p));
   }
   static void deleteArray_L1ObjColl(void *p) {
      delete [] (static_cast<::L1ObjColl*>(p));
   }
   static void destruct_L1ObjColl(void *p) {
      typedef ::L1ObjColl current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::L1ObjColl

//______________________________________________________________________________
void TriggerMenuResultObj::Streamer(TBuffer &R__b)
{
   // Stream an object of class TriggerMenuResultObj.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(TriggerMenuResultObj::Class(),this);
   } else {
      R__b.WriteClassBuffer(TriggerMenuResultObj::Class(),this);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_TriggerMenuResultObj(void *p) {
      return  p ? new(p) ::TriggerMenuResultObj : new ::TriggerMenuResultObj;
   }
   static void *newArray_TriggerMenuResultObj(Long_t nElements, void *p) {
      return p ? new(p) ::TriggerMenuResultObj[nElements] : new ::TriggerMenuResultObj[nElements];
   }
   // Wrapper around operator delete
   static void delete_TriggerMenuResultObj(void *p) {
      delete (static_cast<::TriggerMenuResultObj*>(p));
   }
   static void deleteArray_TriggerMenuResultObj(void *p) {
      delete [] (static_cast<::TriggerMenuResultObj*>(p));
   }
   static void destruct_TriggerMenuResultObj(void *p) {
      typedef ::TriggerMenuResultObj current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::TriggerMenuResultObj

//______________________________________________________________________________
void SynchroCountsObj::Streamer(TBuffer &R__b)
{
   // Stream an object of class SynchroCountsObj.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(SynchroCountsObj::Class(),this);
   } else {
      R__b.WriteClassBuffer(SynchroCountsObj::Class(),this);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_SynchroCountsObj(void *p) {
      return  p ? new(p) ::SynchroCountsObj : new ::SynchroCountsObj;
   }
   static void *newArray_SynchroCountsObj(Long_t nElements, void *p) {
      return p ? new(p) ::SynchroCountsObj[nElements] : new ::SynchroCountsObj[nElements];
   }
   // Wrapper around operator delete
   static void delete_SynchroCountsObj(void *p) {
      delete (static_cast<::SynchroCountsObj*>(p));
   }
   static void deleteArray_SynchroCountsObj(void *p) {
      delete [] (static_cast<::SynchroCountsObj*>(p));
   }
   static void destruct_SynchroCountsObj(void *p) {
      typedef ::SynchroCountsObj current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::SynchroCountsObj

//______________________________________________________________________________
void SynchroCountsObjVect::Streamer(TBuffer &R__b)
{
   // Stream an object of class SynchroCountsObjVect.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(SynchroCountsObjVect::Class(),this);
   } else {
      R__b.WriteClassBuffer(SynchroCountsObjVect::Class(),this);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_SynchroCountsObjVect(void *p) {
      return  p ? new(p) ::SynchroCountsObjVect : new ::SynchroCountsObjVect;
   }
   static void *newArray_SynchroCountsObjVect(Long_t nElements, void *p) {
      return p ? new(p) ::SynchroCountsObjVect[nElements] : new ::SynchroCountsObjVect[nElements];
   }
   // Wrapper around operator delete
   static void delete_SynchroCountsObjVect(void *p) {
      delete (static_cast<::SynchroCountsObjVect*>(p));
   }
   static void deleteArray_SynchroCountsObjVect(void *p) {
      delete [] (static_cast<::SynchroCountsObjVect*>(p));
   }
   static void destruct_SynchroCountsObjVect(void *p) {
      typedef ::SynchroCountsObjVect current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::SynchroCountsObjVect

//______________________________________________________________________________
void GenObj::Streamer(TBuffer &R__b)
{
   // Stream an object of class GenObj.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(GenObj::Class(),this);
   } else {
      R__b.WriteClassBuffer(GenObj::Class(),this);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_GenObj(void *p) {
      return  p ? new(p) ::GenObj : new ::GenObj;
   }
   static void *newArray_GenObj(Long_t nElements, void *p) {
      return p ? new(p) ::GenObj[nElements] : new ::GenObj[nElements];
   }
   // Wrapper around operator delete
   static void delete_GenObj(void *p) {
      delete (static_cast<::GenObj*>(p));
   }
   static void deleteArray_GenObj(void *p) {
      delete [] (static_cast<::GenObj*>(p));
   }
   static void destruct_GenObj(void *p) {
      typedef ::GenObj current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::GenObj

//______________________________________________________________________________
void GenObjColl::Streamer(TBuffer &R__b)
{
   // Stream an object of class GenObjColl.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(GenObjColl::Class(),this);
   } else {
      R__b.WriteClassBuffer(GenObjColl::Class(),this);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_GenObjColl(void *p) {
      return  p ? new(p) ::GenObjColl : new ::GenObjColl;
   }
   static void *newArray_GenObjColl(Long_t nElements, void *p) {
      return p ? new(p) ::GenObjColl[nElements] : new ::GenObjColl[nElements];
   }
   // Wrapper around operator delete
   static void delete_GenObjColl(void *p) {
      delete (static_cast<::GenObjColl*>(p));
   }
   static void deleteArray_GenObjColl(void *p) {
      delete [] (static_cast<::GenObjColl*>(p));
   }
   static void destruct_GenObjColl(void *p) {
      typedef ::GenObjColl current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::GenObjColl

//______________________________________________________________________________
void DetSpecObj::Streamer(TBuffer &R__b)
{
   // Stream an object of class DetSpecObj.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(DetSpecObj::Class(),this);
   } else {
      R__b.WriteClassBuffer(DetSpecObj::Class(),this);
   }
}

namespace ROOT {
   // Wrapper around operator delete
   static void delete_DetSpecObj(void *p) {
      delete (static_cast<::DetSpecObj*>(p));
   }
   static void deleteArray_DetSpecObj(void *p) {
      delete [] (static_cast<::DetSpecObj*>(p));
   }
   static void destruct_DetSpecObj(void *p) {
      typedef ::DetSpecObj current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::DetSpecObj

//______________________________________________________________________________
void BxStatObj::Streamer(TBuffer &R__b)
{
   // Stream an object of class BxStatObj.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(BxStatObj::Class(),this);
   } else {
      R__b.WriteClassBuffer(BxStatObj::Class(),this);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_BxStatObj(void *p) {
      return  p ? new(p) ::BxStatObj : new ::BxStatObj;
   }
   static void *newArray_BxStatObj(Long_t nElements, void *p) {
      return p ? new(p) ::BxStatObj[nElements] : new ::BxStatObj[nElements];
   }
   // Wrapper around operator delete
   static void delete_BxStatObj(void *p) {
      delete (static_cast<::BxStatObj*>(p));
   }
   static void deleteArray_BxStatObj(void *p) {
      delete [] (static_cast<::BxStatObj*>(p));
   }
   static void destruct_BxStatObj(void *p) {
      typedef ::BxStatObj current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::BxStatObj

//______________________________________________________________________________
void DetBxStatObj::Streamer(TBuffer &R__b)
{
   // Stream an object of class DetBxStatObj.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(DetBxStatObj::Class(),this);
   } else {
      R__b.WriteClassBuffer(DetBxStatObj::Class(),this);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_DetBxStatObj(void *p) {
      return  p ? new(p) ::DetBxStatObj : new ::DetBxStatObj;
   }
   static void *newArray_DetBxStatObj(Long_t nElements, void *p) {
      return p ? new(p) ::DetBxStatObj[nElements] : new ::DetBxStatObj[nElements];
   }
   // Wrapper around operator delete
   static void delete_DetBxStatObj(void *p) {
      delete (static_cast<::DetBxStatObj*>(p));
   }
   static void deleteArray_DetBxStatObj(void *p) {
      delete [] (static_cast<::DetBxStatObj*>(p));
   }
   static void destruct_DetBxStatObj(void *p) {
      typedef ::DetBxStatObj current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::DetBxStatObj

namespace {
  void TriggerDictionaryInitialization_UserCodeOmtfDataFormats_xr_Impl() {
    static const char* headers[] = {
"0",
nullptr
    };
    static const char* includePaths[] = {
"src",
"/cvmfs/cms.cern.ch/el9_amd64_gcc12/cms/cmssw/CMSSW_15_1_0_pre4/src",
"/cvmfs/cms.cern.ch/el9_amd64_gcc12/external/pcre/8.43-2d141998cfe5424b8f7aff48035cc2da/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc12/external/bz2lib/1.0.6-d065ccd79984efc6d4660f410e4c81de/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc12/external/gsl/2.6-f7574c606b0ce57ff601d3ca9534cd01/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc12/external/libuuid/2.34-27ce4c3579b5b1de2808ea9c4cd8ed29/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc12/external/utm/utm_0.13.0-6fad04b521a01741b6a686088e1c08a7/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc12/external/xerces-c/3.1.3-c7b88eaa36d0408120f3c29826a04bf6/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc12/external/xz/5.2.5-87b9f5597eaeb8b5e9cedb5d183d5089/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc12/external/zlib/1.2.13-d217cdbdd8d586e845e05946de2796be/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc12/external/eigen/3bb6a48d8c171cf20b5f8e48bfb4e424fbd4f79e-5d91c922e771c0dc4f6bc00f61f3e2c5/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc12/external/eigen/3bb6a48d8c171cf20b5f8e48bfb4e424fbd4f79e-5d91c922e771c0dc4f6bc00f61f3e2c5/include/eigen3",
"/cvmfs/cms.cern.ch/el9_amd64_gcc12/external/fmt/10.2.1-e35fd1db5eb3abc8ac0452e8ee427196/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc12/external/md5/1.0.0-5b594b264e04ae51e893b1d69a797ec6/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc12/external/OpenBLAS/0.3.27-70a9dd2c9f309171934f13e3003b0540/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc12/external/tinyxml2/6.2.0-a0ad3950415fa3138d99b7da42eb4c9f/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc12/lcg/root/6.32.13-42c70d2d1e9c3e3060272fb12c5546fb/include/",
"/scratch/gjedrzej/CMSSW_15_1_0_pre4_PhaseII/",
nullptr
    };
    static const char* fwdDeclCode = R"DICTFWDDCLS(
#line 1 "UserCodeOmtfDataFormats_xr dictionary forward declarations' payload"
#pragma clang diagnostic ignored "-Wkeyword-compat"
#pragma clang diagnostic ignored "-Wignored-attributes"
#pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
extern int __Cling_AutoLoading_Map;
class __attribute__((annotate("$clingAutoload$UserCode/OmtfDataFormats/interface/EventData.h")))  L1Obj;
struct __attribute__((annotate("$clingAutoload$UserCode/OmtfDataFormats/interface/EventData.h")))  EventData;
struct __attribute__((annotate("$clingAutoload$UserCode/OmtfDataFormats/interface/EventObj.h")))  EventObj;
class __attribute__((annotate("$clingAutoload$UserCode/OmtfDataFormats/interface/TrackObj.h")))  TrackObj;
class __attribute__((annotate("$clingAutoload$UserCode/OmtfDataFormats/interface/MuonObj.h")))  MuonObj;
class __attribute__((annotate("$clingAutoload$UserCode/OmtfDataFormats/interface/MuonObjColl.h")))  MuonObjColl;
class __attribute__((annotate("$clingAutoload$UserCode/OmtfDataFormats/interface/L1ObjColl.h")))  L1ObjColl;
struct __attribute__((annotate("$clingAutoload$UserCode/OmtfDataFormats/interface/TriggerMenuResultObj.h")))  TriggerMenuResultObj;
struct __attribute__((annotate("$clingAutoload$UserCode/OmtfDataFormats/interface/SynchroCountsObj.h")))  SynchroCountsObj;
struct __attribute__((annotate("$clingAutoload$UserCode/OmtfDataFormats/interface/SynchroCountsObjVect.h")))  SynchroCountsObjVect;
class __attribute__((annotate("$clingAutoload$UserCode/OmtfDataFormats/interface/GenObj.h")))  GenObj;
class __attribute__((annotate("$clingAutoload$UserCode/OmtfDataFormats/interface/GenObjColl.h")))  GenObjColl;
class __attribute__((annotate("$clingAutoload$UserCode/OmtfDataFormats/interface/DetBxStatObj.h")))  DetSpecObj;
class __attribute__((annotate("$clingAutoload$UserCode/OmtfDataFormats/interface/DetBxStatObj.h")))  BxStatObj;
class __attribute__((annotate("$clingAutoload$UserCode/OmtfDataFormats/interface/DetBxStatObj.h")))  DetBxStatObj;
)DICTFWDDCLS";
    static const char* payloadCode = R"DICTPAYLOAD(
#line 1 "UserCodeOmtfDataFormats_xr dictionary payload"

#ifndef CMS_DICT_IMPL
  #define CMS_DICT_IMPL 1
#endif
#ifndef _REENTRANT
  #define _REENTRANT 1
#endif
#ifndef GNUSOURCE
  #define GNUSOURCE 1
#endif
#ifndef __STRICT_ANSI__
  #define __STRICT_ANSI__ 1
#endif
#ifndef CMS_MICRO_ARCH
  #define CMS_MICRO_ARCH "x86-64-v3"
#endif
#ifndef GNU_GCC
  #define GNU_GCC 1
#endif
#ifndef _GNU_SOURCE
  #define _GNU_SOURCE 1
#endif
#ifndef TBB_USE_GLIBCXX_VERSION
  #define TBB_USE_GLIBCXX_VERSION 120301
#endif
#ifndef TBB_SUPPRESS_DEPRECATED_MESSAGES
  #define TBB_SUPPRESS_DEPRECATED_MESSAGES 1
#endif
#ifndef TBB_PREVIEW_RESUMABLE_TASKS
  #define TBB_PREVIEW_RESUMABLE_TASKS 1
#endif
#ifndef TBB_PREVIEW_TASK_GROUP_EXTENSIONS
  #define TBB_PREVIEW_TASK_GROUP_EXTENSIONS 1
#endif
#ifndef BOOST_SPIRIT_THREADSAFE
  #define BOOST_SPIRIT_THREADSAFE 1
#endif
#ifndef PHOENIX_THREADSAFE
  #define PHOENIX_THREADSAFE 1
#endif
#ifndef BOOST_MATH_DISABLE_STD_FPCLASSIFY
  #define BOOST_MATH_DISABLE_STD_FPCLASSIFY 1
#endif
#ifndef BOOST_UUID_RANDOM_PROVIDER_FORCE_POSIX
  #define BOOST_UUID_RANDOM_PROVIDER_FORCE_POSIX 1
#endif
#ifndef BOOST_MPL_IGNORE_PARENTHESES_WARNING
  #define BOOST_MPL_IGNORE_PARENTHESES_WARNING 1
#endif
#ifndef CMSSW_GIT_HASH
  #define CMSSW_GIT_HASH "CMSSW_15_1_0_pre4"
#endif
#ifndef PROJECT_NAME
  #define PROJECT_NAME "CMSSW"
#endif
#ifndef PROJECT_VERSION
  #define PROJECT_VERSION "CMSSW_15_1_0_pre4"
#endif
#ifndef CMSSW_REFLEX_DICT
  #define CMSSW_REFLEX_DICT 1
#endif

#define _BACKWARD_BACKWARD_WARNING_H
// Inline headers
#include "DataFormats/Common/interface/Wrapper.h"
#include "UserCode/OmtfDataFormats/interface/EventData.h"
#include "UserCode/OmtfDataFormats/interface/EventObj.h"
#include "UserCode/OmtfDataFormats/interface/TrackObj.h"
#include "UserCode/OmtfDataFormats/interface/MuonObj.h"
#include "UserCode/OmtfDataFormats/interface/MuonObjColl.h"
#include "UserCode/OmtfDataFormats/interface/L1Obj.h"
#include "UserCode/OmtfDataFormats/interface/L1ObjColl.h"
#include "UserCode/OmtfDataFormats/interface/TriggerMenuResultObj.h"
#include "UserCode/OmtfDataFormats/interface/SynchroCountsObj.h"
#include "UserCode/OmtfDataFormats/interface/SynchroCountsObjVect.h"
#include "UserCode/OmtfDataFormats/interface/GenObj.h"
#include "UserCode/OmtfDataFormats/interface/GenObjColl.h"

#include "UserCode/OmtfDataFormats/interface/DetBxStatObj.h"
#include "UserCode/OmtfDataFormats/interface/DetSpecObj.h"
#include "UserCode/OmtfDataFormats/interface/BxStatObj.h"

namespace {
  struct dictionary {
    EventData aEvData;
    EventObj aEvt;
    TrackObj aTrack; 
    MuonObj  aMuon;
    MuonObjColl  aMuons;
    L1Obj aL1;
    L1ObjColl aL1Coll;

    TriggerMenuResultObj aMenuRes;
    SynchroCountsObj aSynch;
    SynchroCountsObjVect aSynchVec;
    GenObj aGen;
    GenObjColl aGenColl;
    DetBxStatObj aDetBxStatObj;
    DetSpecObj aDetSpecObj;
    BxStatObj aBxStatObj;
  };
}

#undef  _BACKWARD_BACKWARD_WARNING_H
)DICTPAYLOAD";
    static const char* classesHeaders[] = {
"BxStatObj", payloadCode, "@",
"DetBxStatObj", payloadCode, "@",
"DetSpecObj", payloadCode, "@",
"EventData", payloadCode, "@",
"EventObj", payloadCode, "@",
"GenObj", payloadCode, "@",
"GenObjColl", payloadCode, "@",
"L1Obj", payloadCode, "@",
"L1ObjColl", payloadCode, "@",
"MuonObj", payloadCode, "@",
"MuonObjColl", payloadCode, "@",
"SynchroCountsObj", payloadCode, "@",
"SynchroCountsObjVect", payloadCode, "@",
"TrackObj", payloadCode, "@",
"TriggerMenuResultObj", payloadCode, "@",
nullptr
};
    static bool isInitialized = false;
    if (!isInitialized) {
      TROOT::RegisterModule("UserCodeOmtfDataFormats_xr",
        headers, includePaths, payloadCode, fwdDeclCode,
        TriggerDictionaryInitialization_UserCodeOmtfDataFormats_xr_Impl, {}, classesHeaders, /*hasCxxModule*/false);
      isInitialized = true;
    }
  }
  static struct DictInit {
    DictInit() {
      TriggerDictionaryInitialization_UserCodeOmtfDataFormats_xr_Impl();
    }
  } __TheDictionaryInitializer;
}
void TriggerDictionaryInitialization_UserCodeOmtfDataFormats_xr() {
  TriggerDictionaryInitialization_UserCodeOmtfDataFormats_xr_Impl();
}
