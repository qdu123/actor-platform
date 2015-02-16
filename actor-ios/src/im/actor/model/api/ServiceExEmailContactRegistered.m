//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/ServiceExEmailContactRegistered.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/ServiceExEmailContactRegistered.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiServiceExEmailContactRegistered () {
 @public
  jint uid_;
}
@end

@implementation ImActorModelApiServiceExEmailContactRegistered

- (instancetype)initWithInt:(jint)uid {
  if (self = [super init]) {
    self->uid_ = uid;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getUid {
  return self->uid_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->uid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
}

- (void)copyAllFieldsTo:(ImActorModelApiServiceExEmailContactRegistered *)other {
  [super copyAllFieldsTo:other];
  other->uid_ = uid_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "ServiceExEmailContactRegistered", NULL, 0x1, NULL },
    { "init", "ServiceExEmailContactRegistered", NULL, 0x1, NULL },
    { "getUid", NULL, "I", 0x1, NULL },
    { "parseWithBSBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithBSBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "uid_", NULL, 0x2, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiServiceExEmailContactRegistered = { 1, "ServiceExEmailContactRegistered", "im.actor.model.api", NULL, 0x1, 5, methods, 1, fields, 0, NULL};
  return &_ImActorModelApiServiceExEmailContactRegistered;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiServiceExEmailContactRegistered)
