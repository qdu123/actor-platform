//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/Typing.java
//

#ifndef _ImActorModelModulesTyping_H_
#define _ImActorModelModulesTyping_H_

@class AMPeer;
@class DKActorRef;
@class ImActorModelModulesModules;
@class ImActorModelModulesTypingOwnTypingActor;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/actors/ActorCreator.h"
#include "im/actor/model/modules/BaseModule.h"

@interface ImActorModelModulesTyping : ImActorModelModulesBaseModule {
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

- (void)onTypingWithAMPeer:(AMPeer *)peer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesTyping)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesTyping)

@interface ImActorModelModulesTyping_$1 : NSObject < DKActorCreator > {
}

- (ImActorModelModulesTypingOwnTypingActor *)create;

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesTyping_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesTyping_$1)

#endif // _ImActorModelModulesTyping_H_
