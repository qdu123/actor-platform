//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/base/WeakUpdate.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/base/WeakUpdate.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiBaseWeakUpdate () {
 @public
  jlong date_;
  jint updateHeader_;
  IOSByteArray *update_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiBaseWeakUpdate, update_, IOSByteArray *)

@implementation ImActorModelApiBaseWeakUpdate

+ (ImActorModelApiBaseWeakUpdate *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiBaseWeakUpdate_fromBytesWithByteArray_(data);
}

- (instancetype)initWithLong:(jlong)date
                     withInt:(jint)updateHeader
               withByteArray:(IOSByteArray *)update {
  if (self = [super init]) {
    self->date_ = date;
    self->updateHeader_ = updateHeader;
    self->update_ = update;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jlong)getDate {
  return self->date_;
}

- (jint)getUpdateHeader {
  return self->updateHeader_;
}

- (IOSByteArray *)getUpdate {
  return self->update_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->date_ = [((BSBserValues *) nil_chk(values)) getLongWithInt:1];
  self->updateHeader_ = [values getIntWithInt:2];
  self->update_ = [values getBytesWithInt:3];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:self->date_];
  [writer writeIntWithInt:2 withInt:self->updateHeader_];
  if (self->update_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeBytesWithInt:3 withByteArray:self->update_];
}

- (jint)getHeaderKey {
  return ImActorModelApiBaseWeakUpdate_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiBaseWeakUpdate *)other {
  [super copyAllFieldsTo:other];
  other->date_ = date_;
  other->updateHeader_ = updateHeader_;
  other->update_ = update_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.base.WeakUpdate;", 0x9, "Ljava.io.IOException;" },
    { "initWithLong:withInt:withByteArray:", "WeakUpdate", NULL, 0x1, NULL },
    { "init", "WeakUpdate", NULL, 0x1, NULL },
    { "getDate", NULL, "J", 0x1, NULL },
    { "getUpdateHeader", NULL, "I", 0x1, NULL },
    { "getUpdate", NULL, "[B", 0x1, NULL },
    { "parseWithBSBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithBSBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiBaseWeakUpdate_HEADER },
    { "date_", NULL, 0x2, "J", NULL,  },
    { "updateHeader_", NULL, 0x2, "I", NULL,  },
    { "update_", NULL, 0x2, "[B", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiBaseWeakUpdate = { 1, "WeakUpdate", "im.actor.model.api.base", NULL, 0x1, 9, methods, 4, fields, 0, NULL};
  return &_ImActorModelApiBaseWeakUpdate;
}

@end

ImActorModelApiBaseWeakUpdate *ImActorModelApiBaseWeakUpdate_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiBaseWeakUpdate_init();
  return ((ImActorModelApiBaseWeakUpdate *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiBaseWeakUpdate alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiBaseWeakUpdate)
