//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/entity/PendingMessage.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/entity/PendingMessage.h"

@interface AMPendingMessage () {
 @public
  jlong rid_;
  jlong date_;
}
@end

@implementation AMPendingMessage

- (instancetype)initWithLong:(jlong)rid
                    withLong:(jlong)date {
  if (self = [super init]) {
    self->rid_ = rid;
    self->date_ = date;
  }
  return self;
}

- (jlong)getDate {
  return date_;
}

- (jlong)getRid {
  return rid_;
}

- (jlong)getEngineId {
  return rid_;
}

- (void)copyAllFieldsTo:(AMPendingMessage *)other {
  [super copyAllFieldsTo:other];
  other->rid_ = rid_;
  other->date_ = date_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLong:withLong:", "PendingMessage", NULL, 0x1, NULL },
    { "getDate", NULL, "J", 0x1, NULL },
    { "getRid", NULL, "J", 0x1, NULL },
    { "getEngineId", NULL, "J", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "rid_", NULL, 0x2, "J", NULL,  },
    { "date_", NULL, 0x2, "J", NULL,  },
  };
  static const J2ObjcClassInfo _AMPendingMessage = { 1, "PendingMessage", "im.actor.model.entity", NULL, 0x1, 4, methods, 2, fields, 0, NULL};
  return &_AMPendingMessage;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMPendingMessage)
