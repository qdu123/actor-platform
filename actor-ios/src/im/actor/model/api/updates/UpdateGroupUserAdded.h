//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateGroupUserAdded.java
//

#ifndef _ImActorModelApiUpdatesUpdateGroupUserAdded_H_
#define _ImActorModelApiUpdatesUpdateGroupUserAdded_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

#define ImActorModelApiUpdatesUpdateGroupUserAdded_HEADER 21

@interface ImActorModelApiUpdatesUpdateGroupUserAdded : ImActorModelNetworkParserUpdate {
}

+ (ImActorModelApiUpdatesUpdateGroupUserAdded *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)uid
                    withInt:(jint)inviterUid
                   withLong:(jlong)date;

- (instancetype)init;

- (jint)getGroupId;

- (jlong)getRid;

- (jint)getUid;

- (jint)getInviterUid;

- (jlong)getDate;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiUpdatesUpdateGroupUserAdded)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateGroupUserAdded *ImActorModelApiUpdatesUpdateGroupUserAdded_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiUpdatesUpdateGroupUserAdded, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUpdatesUpdateGroupUserAdded)

#endif // _ImActorModelApiUpdatesUpdateGroupUserAdded_H_
