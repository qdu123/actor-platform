//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestCompleteUpload.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/UploadConfig.h"
#include "im/actor/model/api/rpc/RequestCompleteUpload.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestCompleteUpload () {
 @public
  ImActorModelApiUploadConfig *config_;
  jint blocksCount_;
  jlong crc32_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestCompleteUpload, config_, ImActorModelApiUploadConfig *)

@implementation ImActorModelApiRpcRequestCompleteUpload

+ (ImActorModelApiRpcRequestCompleteUpload *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestCompleteUpload_fromBytesWithByteArray_(data);
}

- (instancetype)initWithImActorModelApiUploadConfig:(ImActorModelApiUploadConfig *)config
                                            withInt:(jint)blocksCount
                                           withLong:(jlong)crc32 {
  if (self = [super init]) {
    self->config_ = config;
    self->blocksCount_ = blocksCount;
    self->crc32_ = crc32;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (ImActorModelApiUploadConfig *)getConfig {
  return self->config_;
}

- (jint)getBlocksCount {
  return self->blocksCount_;
}

- (jlong)getCrc32 {
  return self->crc32_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->config_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:[[ImActorModelApiUploadConfig alloc] init]];
  self->blocksCount_ = [values getIntWithInt:2];
  self->crc32_ = [values getLongWithInt:3];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->config_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->config_];
  [writer writeIntWithInt:2 withInt:self->blocksCount_];
  [writer writeLongWithInt:3 withLong:self->crc32_];
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestCompleteUpload_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestCompleteUpload *)other {
  [super copyAllFieldsTo:other];
  other->config_ = config_;
  other->blocksCount_ = blocksCount_;
  other->crc32_ = crc32_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.rpc.RequestCompleteUpload;", 0x9, "Ljava.io.IOException;" },
    { "initWithImActorModelApiUploadConfig:withInt:withLong:", "RequestCompleteUpload", NULL, 0x1, NULL },
    { "init", "RequestCompleteUpload", NULL, 0x1, NULL },
    { "getConfig", NULL, "Lim.actor.model.api.UploadConfig;", 0x1, NULL },
    { "getBlocksCount", NULL, "I", 0x1, NULL },
    { "getCrc32", NULL, "J", 0x1, NULL },
    { "parseWithBSBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithBSBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiRpcRequestCompleteUpload_HEADER },
    { "config_", NULL, 0x2, "Lim.actor.model.api.UploadConfig;", NULL,  },
    { "blocksCount_", NULL, 0x2, "I", NULL,  },
    { "crc32_", NULL, 0x2, "J", NULL,  },
  };
  static const char *superclass_type_args[] = {"Lim.actor.model.api.rpc.ResponseCompleteUpload;"};
  static const J2ObjcClassInfo _ImActorModelApiRpcRequestCompleteUpload = { 1, "RequestCompleteUpload", "im.actor.model.api.rpc", NULL, 0x1, 9, methods, 4, fields, 1, superclass_type_args};
  return &_ImActorModelApiRpcRequestCompleteUpload;
}

@end

ImActorModelApiRpcRequestCompleteUpload *ImActorModelApiRpcRequestCompleteUpload_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestCompleteUpload_init();
  return ((ImActorModelApiRpcRequestCompleteUpload *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcRequestCompleteUpload alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestCompleteUpload)
