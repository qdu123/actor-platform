//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/presence/PresenceActor.java
//

#ifndef _ImActorModelModulesPresencePresenceActor_H_
#define _ImActorModelModulesPresencePresenceActor_H_

@class AMPeer;
@class DKActorRef;
@class DKEnvelope;
@class DKMailboxesQueue;
@class ImActorModelModulesModules;
@class JavaUtilHashSet;
@protocol AMMessengerCallback;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/actors/ActorCreator.h"
#include "im/actor/model/droidkit/actors/MailboxCreator.h"
#include "im/actor/model/droidkit/actors/mailbox/Mailbox.h"
#include "im/actor/model/modules/utils/ModuleActor.h"

#define ImActorModelModulesPresencePresenceActor_ONLINE_TIMEOUT 300000

@interface ImActorModelModulesPresencePresenceActor : ImActorModelModulesUtilsModuleActor {
}

+ (DKActorRef *)getWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

- (void)onReceiveWithId:(id)message;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT DKActorRef *ImActorModelModulesPresencePresenceActor_getWithImActorModelModulesModules_(ImActorModelModulesModules *messenger);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesPresencePresenceActor, ONLINE_TIMEOUT, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor)

@interface ImActorModelModulesPresencePresenceActor_UserOnline : NSObject {
}

- (instancetype)initWithInt:(jint)uid;

- (jint)getUid;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor_UserOnline)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor_UserOnline)

@interface ImActorModelModulesPresencePresenceActor_UserOffline : NSObject {
}

- (instancetype)initWithInt:(jint)uid;

- (jint)getUid;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor_UserOffline)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor_UserOffline)

@interface ImActorModelModulesPresencePresenceActor_UserLastSeen : NSObject {
}

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)date;

- (jint)getUid;

- (jlong)getDate;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor_UserLastSeen)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor_UserLastSeen)

@interface ImActorModelModulesPresencePresenceActor_GroupOnline : NSObject {
}

- (instancetype)initWithInt:(jint)gid
                    withInt:(jint)count;

- (jint)getGid;

- (jint)getCount;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor_GroupOnline)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor_GroupOnline)

@interface ImActorModelModulesPresencePresenceActor_Subscribe : NSObject {
}

- (instancetype)initWithAMPeer:(AMPeer *)peer;

- (AMPeer *)getPeer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor_Subscribe)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor_Subscribe)

@interface ImActorModelModulesPresencePresenceActor_SessionCreated : NSObject {
}

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor_SessionCreated)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor_SessionCreated)

@interface ImActorModelModulesPresencePresenceActor_$1 : NSObject < DKActorCreator > {
}

- (ImActorModelModulesPresencePresenceActor *)create;

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor_$1)

@interface ImActorModelModulesPresencePresenceActor_$2 : NSObject < DKMailboxCreator > {
}

- (DKMailbox *)createMailboxWithDKMailboxesQueue:(DKMailboxesQueue *)queue;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor_$2)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor_$2)

@interface ImActorModelModulesPresencePresenceActor_$2_$1 : DKMailbox {
}

- (jboolean)isEqualEnvelopeWithDKEnvelope:(DKEnvelope *)a
                           withDKEnvelope:(DKEnvelope *)b;

- (instancetype)initWithDKMailboxesQueue:(DKMailboxesQueue *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor_$2_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor_$2_$1)

#endif // _ImActorModelModulesPresencePresenceActor_H_
