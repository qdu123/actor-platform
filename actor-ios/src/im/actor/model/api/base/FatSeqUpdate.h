//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/base/FatSeqUpdate.java
//

#ifndef _ImActorModelApiBaseFatSeqUpdate_H_
#define _ImActorModelApiBaseFatSeqUpdate_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/RpcScope.h"

#define ImActorModelApiBaseFatSeqUpdate_HEADER 73

@interface ImActorModelApiBaseFatSeqUpdate : ImActorModelNetworkParserRpcScope {
}

+ (ImActorModelApiBaseFatSeqUpdate *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithInt:(jint)seq
              withByteArray:(IOSByteArray *)state
                    withInt:(jint)updateHeader
              withByteArray:(IOSByteArray *)update
           withJavaUtilList:(id<JavaUtilList>)users
           withJavaUtilList:(id<JavaUtilList>)groups
           withJavaUtilList:(id<JavaUtilList>)contacts;

- (instancetype)init;

- (jint)getSeq;

- (IOSByteArray *)getState;

- (jint)getUpdateHeader;

- (IOSByteArray *)getUpdate;

- (id<JavaUtilList>)getUsers;

- (id<JavaUtilList>)getGroups;

- (id<JavaUtilList>)getContacts;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiBaseFatSeqUpdate)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiBaseFatSeqUpdate *ImActorModelApiBaseFatSeqUpdate_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiBaseFatSeqUpdate, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiBaseFatSeqUpdate)

#endif // _ImActorModelApiBaseFatSeqUpdate_H_
