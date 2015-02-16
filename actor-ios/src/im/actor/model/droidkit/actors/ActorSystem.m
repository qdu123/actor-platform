//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/droidkit/actors/ActorSystem.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorSelection.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/Environment.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/droidkit/actors/ThreadPriority.h"
#include "im/actor/model/droidkit/actors/debug/TraceInterface.h"
#include "im/actor/model/droidkit/actors/mailbox/ActorDispatcher.h"
#include "java/lang/RuntimeException.h"
#include "java/util/HashMap.h"

@interface DKActorSystem () {
 @public
  JavaUtilHashMap *dispatchers_;
  id<ImActorModelDroidkitActorsDebugTraceInterface> traceInterface_;
}
@end

J2OBJC_FIELD_SETTER(DKActorSystem, dispatchers_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(DKActorSystem, traceInterface_, id<ImActorModelDroidkitActorsDebugTraceInterface>)

BOOL DKActorSystem_initialized = NO;

@implementation DKActorSystem

DKActorSystem * DKActorSystem_mainSystem_;
NSString * DKActorSystem_DEFAULT_DISPATCHER_ = @"default";

+ (DKActorSystem *)system {
  return DKActorSystem_system();
}

- (instancetype)init {
  return [self initDKActorSystemWithBoolean:YES];
}

- (instancetype)initDKActorSystemWithBoolean:(jboolean)addDefaultDispatcher {
  if (self = [super init]) {
    dispatchers_ = [[JavaUtilHashMap alloc] init];
    if (addDefaultDispatcher) {
      [self addDispatcherWithNSString:DKActorSystem_DEFAULT_DISPATCHER_];
    }
  }
  return self;
}

- (instancetype)initWithBoolean:(jboolean)addDefaultDispatcher {
  return [self initDKActorSystemWithBoolean:addDefaultDispatcher];
}

- (void)addDispatcherWithNSString:(NSString *)dispatcherId
                          withInt:(jint)threadsCount {
  @synchronized(dispatchers_) {
    if ([((JavaUtilHashMap *) nil_chk(dispatchers_)) containsKeyWithId:dispatcherId]) {
      return;
    }
    DKActorDispatcher *dispatcher = DKEnvironment_createDispatcherWithNSString_withInt_withDKThreadPriorityEnum_withDKActorSystem_(dispatcherId, threadsCount, DKThreadPriorityEnum_get_LOW(), self);
    (void) [dispatchers_ putWithId:dispatcherId withId:dispatcher];
  }
}

- (void)addDispatcherWithNSString:(NSString *)dispatcherId {
  @synchronized(dispatchers_) {
    if ([((JavaUtilHashMap *) nil_chk(dispatchers_)) containsKeyWithId:dispatcherId]) {
      return;
    }
    DKActorDispatcher *dispatcher = DKEnvironment_createDefaultDispatcherWithNSString_withDKThreadPriorityEnum_withDKActorSystem_(dispatcherId, DKThreadPriorityEnum_get_LOW(), self);
    [self addDispatcherWithNSString:dispatcherId withDKActorDispatcher:dispatcher];
  }
}

- (void)addDispatcherWithNSString:(NSString *)dispatcherId
            withDKActorDispatcher:(DKActorDispatcher *)dispatcher {
  @synchronized(dispatchers_) {
    if ([((JavaUtilHashMap *) nil_chk(dispatchers_)) containsKeyWithId:dispatcherId]) {
      return;
    }
    (void) [dispatchers_ putWithId:dispatcherId withId:dispatcher];
  }
}

- (DKActorRef *)actorOfWithDKActorSelection:(DKActorSelection *)selection {
  return [self actorOfWithDKProps:[((DKActorSelection *) nil_chk(selection)) getProps] withNSString:[selection getPath]];
}

- (DKActorRef *)actorOfWithDKProps:(DKProps *)props
                      withNSString:(NSString *)path {
  NSString *dispatcherId = [((DKProps *) nil_chk(props)) getDispatcher] == nil ? DKActorSystem_DEFAULT_DISPATCHER_ : [props getDispatcher];
  DKActorDispatcher *mailboxesDispatcher;
  @synchronized(dispatchers_) {
    if (![((JavaUtilHashMap *) nil_chk(dispatchers_)) containsKeyWithId:dispatcherId]) {
      @throw [[JavaLangRuntimeException alloc] initWithNSString:JreStrcat("$$C", @"Unknown dispatcherId '", dispatcherId, '\'')];
    }
    mailboxesDispatcher = [dispatchers_ getWithId:dispatcherId];
  }
  return [((DKActorDispatcher *) nil_chk(mailboxesDispatcher)) referenceActorWithNSString:path withDKProps:props];
}

- (id<ImActorModelDroidkitActorsDebugTraceInterface>)getTraceInterface {
  return traceInterface_;
}

- (void)setTraceInterfaceWithImActorModelDroidkitActorsDebugTraceInterface:(id<ImActorModelDroidkitActorsDebugTraceInterface>)traceInterface {
  self->traceInterface_ = traceInterface;
}

- (void)copyAllFieldsTo:(DKActorSystem *)other {
  [super copyAllFieldsTo:other];
  other->dispatchers_ = dispatchers_;
  other->traceInterface_ = traceInterface_;
}

+ (void)initialize {
  if (self == [DKActorSystem class]) {
    DKActorSystem_mainSystem_ = [[DKActorSystem alloc] init];
    J2OBJC_SET_INITIALIZED(DKActorSystem)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "system", NULL, "Lim.actor.model.droidkit.actors.ActorSystem;", 0x9, NULL },
    { "init", "ActorSystem", NULL, 0x1, NULL },
    { "initWithBoolean:", "ActorSystem", NULL, 0x1, NULL },
    { "addDispatcherWithNSString:withInt:", "addDispatcher", "V", 0x1, NULL },
    { "addDispatcherWithNSString:", "addDispatcher", "V", 0x1, NULL },
    { "addDispatcherWithNSString:withDKActorDispatcher:", "addDispatcher", "V", 0x1, NULL },
    { "actorOfWithDKActorSelection:", "actorOf", "Lim.actor.model.droidkit.actors.ActorRef;", 0x1, NULL },
    { "actorOfWithDKProps:withNSString:", "actorOf", "Lim.actor.model.droidkit.actors.ActorRef;", 0x1, NULL },
    { "getTraceInterface", NULL, "Lim.actor.model.droidkit.actors.debug.TraceInterface;", 0x1, NULL },
    { "setTraceInterfaceWithImActorModelDroidkitActorsDebugTraceInterface:", "setTraceInterface", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "mainSystem_", NULL, 0x1a, "Lim.actor.model.droidkit.actors.ActorSystem;", &DKActorSystem_mainSystem_,  },
    { "DEFAULT_DISPATCHER_", NULL, 0x1a, "Ljava.lang.String;", &DKActorSystem_DEFAULT_DISPATCHER_,  },
    { "dispatchers_", NULL, 0x12, "Ljava.util.HashMap;", NULL,  },
    { "traceInterface_", NULL, 0x2, "Lim.actor.model.droidkit.actors.debug.TraceInterface;", NULL,  },
  };
  static const J2ObjcClassInfo _DKActorSystem = { 1, "ActorSystem", "im.actor.model.droidkit.actors", NULL, 0x1, 10, methods, 4, fields, 0, NULL};
  return &_DKActorSystem;
}

@end

DKActorSystem *DKActorSystem_system() {
  DKActorSystem_init();
  return DKActorSystem_mainSystem_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKActorSystem)
