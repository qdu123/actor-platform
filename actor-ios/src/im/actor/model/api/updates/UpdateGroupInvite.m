//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateGroupInvite.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/updates/UpdateGroupInvite.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateGroupInvite () {
 @public
  jint groupId_;
  jlong rid_;
  jint inviteUid_;
  jlong date_;
}
@end

@implementation ImActorModelApiUpdatesUpdateGroupInvite

+ (ImActorModelApiUpdatesUpdateGroupInvite *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateGroupInvite_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)inviteUid
                   withLong:(jlong)date {
  if (self = [super init]) {
    self->groupId_ = groupId;
    self->rid_ = rid;
    self->inviteUid_ = inviteUid;
    self->date_ = date;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getGroupId {
  return self->groupId_;
}

- (jlong)getRid {
  return self->rid_;
}

- (jint)getInviteUid {
  return self->inviteUid_;
}

- (jlong)getDate {
  return self->date_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupId_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->rid_ = [values getLongWithInt:9];
  self->inviteUid_ = [values getIntWithInt:5];
  self->date_ = [values getLongWithInt:8];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->groupId_];
  [writer writeLongWithInt:9 withLong:self->rid_];
  [writer writeIntWithInt:5 withInt:self->inviteUid_];
  [writer writeLongWithInt:8 withLong:self->date_];
}

- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdateGroupInvite_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiUpdatesUpdateGroupInvite *)other {
  [super copyAllFieldsTo:other];
  other->groupId_ = groupId_;
  other->rid_ = rid_;
  other->inviteUid_ = inviteUid_;
  other->date_ = date_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.updates.UpdateGroupInvite;", 0x9, "Ljava.io.IOException;" },
    { "initWithInt:withLong:withInt:withLong:", "UpdateGroupInvite", NULL, 0x1, NULL },
    { "init", "UpdateGroupInvite", NULL, 0x1, NULL },
    { "getGroupId", NULL, "I", 0x1, NULL },
    { "getRid", NULL, "J", 0x1, NULL },
    { "getInviteUid", NULL, "I", 0x1, NULL },
    { "getDate", NULL, "J", 0x1, NULL },
    { "parseWithBSBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithBSBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiUpdatesUpdateGroupInvite_HEADER },
    { "groupId_", NULL, 0x2, "I", NULL,  },
    { "rid_", NULL, 0x2, "J", NULL,  },
    { "inviteUid_", NULL, 0x2, "I", NULL,  },
    { "date_", NULL, 0x2, "J", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiUpdatesUpdateGroupInvite = { 1, "UpdateGroupInvite", "im.actor.model.api.updates", NULL, 0x1, 10, methods, 5, fields, 0, NULL};
  return &_ImActorModelApiUpdatesUpdateGroupInvite;
}

@end

ImActorModelApiUpdatesUpdateGroupInvite *ImActorModelApiUpdatesUpdateGroupInvite_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateGroupInvite_init();
  return ((ImActorModelApiUpdatesUpdateGroupInvite *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiUpdatesUpdateGroupInvite alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateGroupInvite)
