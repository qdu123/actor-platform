//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestDetachEmail.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestDetachEmail.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestDetachEmail () {
 @public
  jint email_;
  jlong accessHash_;
}
@end

@implementation ImActorModelApiRpcRequestDetachEmail

+ (ImActorModelApiRpcRequestDetachEmail *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestDetachEmail_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)email
                   withLong:(jlong)accessHash {
  if (self = [super init]) {
    self->email_ = email;
    self->accessHash_ = accessHash;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getEmail {
  return self->email_;
}

- (jlong)getAccessHash {
  return self->accessHash_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->email_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->accessHash_ = [values getLongWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->email_];
  [writer writeLongWithInt:2 withLong:self->accessHash_];
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestDetachEmail_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestDetachEmail *)other {
  [super copyAllFieldsTo:other];
  other->email_ = email_;
  other->accessHash_ = accessHash_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.rpc.RequestDetachEmail;", 0x9, "Ljava.io.IOException;" },
    { "initWithInt:withLong:", "RequestDetachEmail", NULL, 0x1, NULL },
    { "init", "RequestDetachEmail", NULL, 0x1, NULL },
    { "getEmail", NULL, "I", 0x1, NULL },
    { "getAccessHash", NULL, "J", 0x1, NULL },
    { "parseWithBSBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithBSBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiRpcRequestDetachEmail_HEADER },
    { "email_", NULL, 0x2, "I", NULL,  },
    { "accessHash_", NULL, 0x2, "J", NULL,  },
  };
  static const char *superclass_type_args[] = {"Lim.actor.model.api.rpc.ResponseSeq;"};
  static const J2ObjcClassInfo _ImActorModelApiRpcRequestDetachEmail = { 1, "RequestDetachEmail", "im.actor.model.api.rpc", NULL, 0x1, 8, methods, 3, fields, 1, superclass_type_args};
  return &_ImActorModelApiRpcRequestDetachEmail;
}

@end

ImActorModelApiRpcRequestDetachEmail *ImActorModelApiRpcRequestDetachEmail_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestDetachEmail_init();
  return ((ImActorModelApiRpcRequestDetachEmail *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcRequestDetachEmail alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestDetachEmail)
