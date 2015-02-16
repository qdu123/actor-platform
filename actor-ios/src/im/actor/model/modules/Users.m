//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/Users.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/Configuration.h"
#include "im/actor/model/Storage.h"
#include "im/actor/model/api/base/SeqUpdate.h"
#include "im/actor/model/api/rpc/RequestEditName.h"
#include "im/actor/model/api/rpc/RequestEditUserLocalName.h"
#include "im/actor/model/api/rpc/ResponseSeq.h"
#include "im/actor/model/api/updates/UpdateUserLocalNameChanged.h"
#include "im/actor/model/api/updates/UpdateUserNameChanged.h"
#include "im/actor/model/concurrency/Command.h"
#include "im/actor/model/concurrency/CommandCallback.h"
#include "im/actor/model/entity/User.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Updates.h"
#include "im/actor/model/modules/Users.h"
#include "im/actor/model/mvvm/KeyValueEngine.h"
#include "im/actor/model/network/RpcException.h"
#include "im/actor/model/network/RpcInternalException.h"
#include "java/lang/Boolean.h"

@interface ImActorModelModulesUsers () {
 @public
  id<AMKeyValueEngine> users_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers, users_, id<AMKeyValueEngine>)

@interface ImActorModelModulesUsers_$1 () {
 @public
  ImActorModelModulesUsers *this$0_;
  NSString *val$newName_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$1, this$0_, ImActorModelModulesUsers *)
J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$1, val$newName_, NSString *)

@interface ImActorModelModulesUsers_$1_$1 () {
 @public
  ImActorModelModulesUsers_$1 *this$0_;
  id<AMCommandCallback> val$callback_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$1_$1, this$0_, ImActorModelModulesUsers_$1 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$1_$1, val$callback_, id<AMCommandCallback>)

@interface ImActorModelModulesUsers_$1_$1_$1 () {
 @public
  ImActorModelModulesUsers_$1_$1 *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$1_$1_$1, this$0_, ImActorModelModulesUsers_$1_$1 *)

@interface ImActorModelModulesUsers_$1_$1_$2 () {
 @public
  ImActorModelModulesUsers_$1_$1 *this$0_;
  AMRpcException *val$e_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$1_$1_$2, this$0_, ImActorModelModulesUsers_$1_$1 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$1_$1_$2, val$e_, AMRpcException *)

@interface ImActorModelModulesUsers_$2 () {
 @public
  ImActorModelModulesUsers *this$0_;
  jint val$uid_;
  NSString *val$name_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$2, this$0_, ImActorModelModulesUsers *)
J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$2, val$name_, NSString *)

@interface ImActorModelModulesUsers_$2_$1 () {
 @public
  id<AMCommandCallback> val$callback_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$2_$1, val$callback_, id<AMCommandCallback>)

@interface ImActorModelModulesUsers_$2_$2 () {
 @public
  ImActorModelModulesUsers_$2 *this$0_;
  id<AMCommandCallback> val$callback_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$2_$2, this$0_, ImActorModelModulesUsers_$2 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$2_$2, val$callback_, id<AMCommandCallback>)

@interface ImActorModelModulesUsers_$2_$2_$1 () {
 @public
  ImActorModelModulesUsers_$2_$2 *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$2_$2_$1, this$0_, ImActorModelModulesUsers_$2_$2 *)

@interface ImActorModelModulesUsers_$2_$2_$2 () {
 @public
  ImActorModelModulesUsers_$2_$2 *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$2_$2_$2, this$0_, ImActorModelModulesUsers_$2_$2 *)

@implementation ImActorModelModulesUsers

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  if (self = [super initWithImActorModelModulesModules:messenger]) {
    self->users_ = [((id<AMStorage>) nil_chk([((AMConfiguration *) nil_chk([((ImActorModelModulesModules *) nil_chk(messenger)) getConfiguration])) getStorage])) createUsersEngine];
  }
  return self;
}

- (id<AMKeyValueEngine>)getUsers {
  return users_;
}

- (id<AMCommand>)editMyNameWithNSString:(NSString *)newName {
  return [[ImActorModelModulesUsers_$1 alloc] initWithImActorModelModulesUsers:self withNSString:newName];
}

- (id<AMCommand>)editNameWithInt:(jint)uid
                    withNSString:(NSString *)name {
  return [[ImActorModelModulesUsers_$2 alloc] initWithImActorModelModulesUsers:self withInt:uid withNSString:name];
}

- (void)copyAllFieldsTo:(ImActorModelModulesUsers *)other {
  [super copyAllFieldsTo:other];
  other->users_ = users_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithImActorModelModulesModules:", "Users", NULL, 0x1, NULL },
    { "getUsers", NULL, "Lim.actor.model.mvvm.KeyValueEngine;", 0x1, NULL },
    { "editMyNameWithNSString:", "editMyName", "Lim.actor.model.concurrency.Command;", 0x1, NULL },
    { "editNameWithInt:withNSString:", "editName", "Lim.actor.model.concurrency.Command;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "users_", NULL, 0x2, "Lim.actor.model.mvvm.KeyValueEngine;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelModulesUsers = { 1, "Users", "im.actor.model.modules", NULL, 0x1, 4, methods, 1, fields, 0, NULL};
  return &_ImActorModelModulesUsers;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers)

@implementation ImActorModelModulesUsers_$1

- (void)startWithAMCommandCallback:(id<AMCommandCallback>)callback {
  [this$0_ requestWithImActorModelNetworkParserRequest:[[ImActorModelApiRpcRequestEditName alloc] initWithNSString:val$newName_] withAMRpcCallback:[[ImActorModelModulesUsers_$1_$1 alloc] initWithImActorModelModulesUsers_$1:self withAMCommandCallback:callback]];
}

- (instancetype)initWithImActorModelModulesUsers:(ImActorModelModulesUsers *)outer$
                                    withNSString:(NSString *)capture$0 {
  this$0_ = outer$;
  val$newName_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesUsers_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$newName_ = val$newName_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "startWithAMCommandCallback:", "start", "V", 0x1, NULL },
    { "initWithImActorModelModulesUsers:withNSString:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.model.modules.Users;", NULL,  },
    { "val$newName_", NULL, 0x1012, "Ljava.lang.String;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelModulesUsers_$1 = { 1, "$1", "im.actor.model.modules", "Users", 0x8000, 2, methods, 2, fields, 0, NULL};
  return &_ImActorModelModulesUsers_$1;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers_$1)

@implementation ImActorModelModulesUsers_$1_$1

- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseSeq *)response {
  ImActorModelApiBaseSeqUpdate *update = [[ImActorModelApiBaseSeqUpdate alloc] initWithInt:[((ImActorModelApiRpcResponseSeq *) nil_chk(response)) getSeq] withByteArray:[response getState] withInt:ImActorModelApiUpdatesUpdateUserNameChanged_HEADER withByteArray:[((ImActorModelApiUpdatesUpdateUserNameChanged *) [[ImActorModelApiUpdatesUpdateUserNameChanged alloc] initWithInt:[this$0_->this$0_ myUid] withNSString:this$0_->val$newName_]) toByteArray]];
  [((ImActorModelModulesUpdates *) nil_chk([this$0_->this$0_ updates])) onUpdateReceivedWithId:update];
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesUsers_$1_$1_$1 alloc] initWithImActorModelModulesUsers_$1_$1:self]];
}

- (void)onErrorWithAMRpcException:(AMRpcException *)e {
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesUsers_$1_$1_$2 alloc] initWithImActorModelModulesUsers_$1_$1:self withAMRpcException:e]];
}

- (instancetype)initWithImActorModelModulesUsers_$1:(ImActorModelModulesUsers_$1 *)outer$
                              withAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  this$0_ = outer$;
  val$callback_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesUsers_$1_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$callback_ = val$callback_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onResultWithImActorModelApiRpcResponseSeq:", "onResult", "V", 0x1, NULL },
    { "onErrorWithAMRpcException:", "onError", "V", 0x1, NULL },
    { "initWithImActorModelModulesUsers_$1:withAMCommandCallback:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.model.modules.Users$1;", NULL,  },
    { "val$callback_", NULL, 0x1012, "Lim.actor.model.concurrency.CommandCallback;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelModulesUsers_$1_$1 = { 1, "$1", "im.actor.model.modules", "Users$$1", 0x8000, 3, methods, 2, fields, 0, NULL};
  return &_ImActorModelModulesUsers_$1_$1;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers_$1_$1)

@implementation ImActorModelModulesUsers_$1_$1_$1

- (void)run {
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onResultWithId:JavaLangBoolean_valueOfWithBoolean_(YES)];
}

- (instancetype)initWithImActorModelModulesUsers_$1_$1:(ImActorModelModulesUsers_$1_$1 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesUsers_$1_$1_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL },
    { "initWithImActorModelModulesUsers_$1_$1:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.model.modules.Users$1$1;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelModulesUsers_$1_$1_$1 = { 1, "$1", "im.actor.model.modules", "Users$$1$$1", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_ImActorModelModulesUsers_$1_$1_$1;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers_$1_$1_$1)

@implementation ImActorModelModulesUsers_$1_$1_$2

- (void)run {
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onErrorWithJavaLangException:val$e_];
}

- (instancetype)initWithImActorModelModulesUsers_$1_$1:(ImActorModelModulesUsers_$1_$1 *)outer$
                                    withAMRpcException:(AMRpcException *)capture$0 {
  this$0_ = outer$;
  val$e_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesUsers_$1_$1_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$e_ = val$e_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL },
    { "initWithImActorModelModulesUsers_$1_$1:withAMRpcException:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.model.modules.Users$1$1;", NULL,  },
    { "val$e_", NULL, 0x1012, "Lim.actor.model.network.RpcException;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelModulesUsers_$1_$1_$2 = { 1, "$2", "im.actor.model.modules", "Users$$1$$1", 0x8000, 2, methods, 2, fields, 0, NULL};
  return &_ImActorModelModulesUsers_$1_$1_$2;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers_$1_$1_$2)

@implementation ImActorModelModulesUsers_$2

- (void)startWithAMCommandCallback:(id<AMCommandCallback>)callback {
  AMUser *user = [((id<AMKeyValueEngine>) nil_chk([this$0_ getUsers])) getValueWithLong:val$uid_];
  if (user == nil) {
    [this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesUsers_$2_$1 alloc] initWithAMCommandCallback:callback]];
    return;
  }
  [this$0_ requestWithImActorModelNetworkParserRequest:[[ImActorModelApiRpcRequestEditUserLocalName alloc] initWithInt:[((AMUser *) nil_chk(user)) getUid] withLong:[user getAccessHash] withNSString:val$name_] withAMRpcCallback:[[ImActorModelModulesUsers_$2_$2 alloc] initWithImActorModelModulesUsers_$2:self withAMCommandCallback:callback]];
}

- (instancetype)initWithImActorModelModulesUsers:(ImActorModelModulesUsers *)outer$
                                         withInt:(jint)capture$0
                                    withNSString:(NSString *)capture$1 {
  this$0_ = outer$;
  val$uid_ = capture$0;
  val$name_ = capture$1;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesUsers_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$uid_ = val$uid_;
  other->val$name_ = val$name_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "startWithAMCommandCallback:", "start", "V", 0x1, NULL },
    { "initWithImActorModelModulesUsers:withInt:withNSString:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.model.modules.Users;", NULL,  },
    { "val$uid_", NULL, 0x1012, "I", NULL,  },
    { "val$name_", NULL, 0x1012, "Ljava.lang.String;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelModulesUsers_$2 = { 1, "$2", "im.actor.model.modules", "Users", 0x8000, 2, methods, 3, fields, 0, NULL};
  return &_ImActorModelModulesUsers_$2;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers_$2)

@implementation ImActorModelModulesUsers_$2_$1

- (void)run {
  [((id<AMCommandCallback>) nil_chk(val$callback_)) onErrorWithJavaLangException:[[AMRpcInternalException alloc] init]];
}

- (instancetype)initWithAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  val$callback_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesUsers_$2_$1 *)other {
  [super copyAllFieldsTo:other];
  other->val$callback_ = val$callback_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL },
    { "initWithAMCommandCallback:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$callback_", NULL, 0x1012, "Lim.actor.model.concurrency.CommandCallback;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelModulesUsers_$2_$1 = { 1, "$1", "im.actor.model.modules", "Users$$2", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_ImActorModelModulesUsers_$2_$1;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers_$2_$1)

@implementation ImActorModelModulesUsers_$2_$2

- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseSeq *)response {
  ImActorModelApiBaseSeqUpdate *update = [[ImActorModelApiBaseSeqUpdate alloc] initWithInt:[((ImActorModelApiRpcResponseSeq *) nil_chk(response)) getSeq] withByteArray:[response getState] withInt:ImActorModelApiUpdatesUpdateUserLocalNameChanged_HEADER withByteArray:[((ImActorModelApiUpdatesUpdateUserLocalNameChanged *) [[ImActorModelApiUpdatesUpdateUserLocalNameChanged alloc] initWithInt:this$0_->val$uid_ withNSString:this$0_->val$name_]) toByteArray]];
  [((ImActorModelModulesUpdates *) nil_chk([this$0_->this$0_ updates])) onUpdateReceivedWithId:update];
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesUsers_$2_$2_$1 alloc] initWithImActorModelModulesUsers_$2_$2:self]];
}

- (void)onErrorWithAMRpcException:(AMRpcException *)e {
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesUsers_$2_$2_$2 alloc] initWithImActorModelModulesUsers_$2_$2:self]];
}

- (instancetype)initWithImActorModelModulesUsers_$2:(ImActorModelModulesUsers_$2 *)outer$
                              withAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  this$0_ = outer$;
  val$callback_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesUsers_$2_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$callback_ = val$callback_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onResultWithImActorModelApiRpcResponseSeq:", "onResult", "V", 0x1, NULL },
    { "onErrorWithAMRpcException:", "onError", "V", 0x1, NULL },
    { "initWithImActorModelModulesUsers_$2:withAMCommandCallback:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.model.modules.Users$2;", NULL,  },
    { "val$callback_", NULL, 0x1012, "Lim.actor.model.concurrency.CommandCallback;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelModulesUsers_$2_$2 = { 1, "$2", "im.actor.model.modules", "Users$$2", 0x8000, 3, methods, 2, fields, 0, NULL};
  return &_ImActorModelModulesUsers_$2_$2;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers_$2_$2)

@implementation ImActorModelModulesUsers_$2_$2_$1

- (void)run {
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onResultWithId:JavaLangBoolean_valueOfWithBoolean_(YES)];
}

- (instancetype)initWithImActorModelModulesUsers_$2_$2:(ImActorModelModulesUsers_$2_$2 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesUsers_$2_$2_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL },
    { "initWithImActorModelModulesUsers_$2_$2:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.model.modules.Users$2$2;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelModulesUsers_$2_$2_$1 = { 1, "$1", "im.actor.model.modules", "Users$$2$$2", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_ImActorModelModulesUsers_$2_$2_$1;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers_$2_$2_$1)

@implementation ImActorModelModulesUsers_$2_$2_$2

- (void)run {
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onErrorWithJavaLangException:[[AMRpcInternalException alloc] init]];
}

- (instancetype)initWithImActorModelModulesUsers_$2_$2:(ImActorModelModulesUsers_$2_$2 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesUsers_$2_$2_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL },
    { "initWithImActorModelModulesUsers_$2_$2:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.model.modules.Users$2$2;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelModulesUsers_$2_$2_$2 = { 1, "$2", "im.actor.model.modules", "Users$$2$$2", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_ImActorModelModulesUsers_$2_$2_$2;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers_$2_$2_$2)
