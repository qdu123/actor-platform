//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateChatDelete.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/updates/UpdateChatDelete.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateChatDelete () {
 @public
  ImActorModelApiPeer *peer_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateChatDelete, peer_, ImActorModelApiPeer *)

@implementation ImActorModelApiUpdatesUpdateChatDelete

+ (ImActorModelApiUpdatesUpdateChatDelete *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateChatDelete_fromBytesWithByteArray_(data);
}

- (instancetype)initWithImActorModelApiPeer:(ImActorModelApiPeer *)peer {
  if (self = [super init]) {
    self->peer_ = peer;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (ImActorModelApiPeer *)getPeer {
  return self->peer_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->peer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:[[ImActorModelApiPeer alloc] init]];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->peer_];
}

- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdateChatDelete_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiUpdatesUpdateChatDelete *)other {
  [super copyAllFieldsTo:other];
  other->peer_ = peer_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.updates.UpdateChatDelete;", 0x9, "Ljava.io.IOException;" },
    { "initWithImActorModelApiPeer:", "UpdateChatDelete", NULL, 0x1, NULL },
    { "init", "UpdateChatDelete", NULL, 0x1, NULL },
    { "getPeer", NULL, "Lim.actor.model.api.Peer;", 0x1, NULL },
    { "parseWithBSBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithBSBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiUpdatesUpdateChatDelete_HEADER },
    { "peer_", NULL, 0x2, "Lim.actor.model.api.Peer;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiUpdatesUpdateChatDelete = { 1, "UpdateChatDelete", "im.actor.model.api.updates", NULL, 0x1, 7, methods, 2, fields, 0, NULL};
  return &_ImActorModelApiUpdatesUpdateChatDelete;
}

@end

ImActorModelApiUpdatesUpdateChatDelete *ImActorModelApiUpdatesUpdateChatDelete_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateChatDelete_init();
  return ((ImActorModelApiUpdatesUpdateChatDelete *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiUpdatesUpdateChatDelete alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateChatDelete)
