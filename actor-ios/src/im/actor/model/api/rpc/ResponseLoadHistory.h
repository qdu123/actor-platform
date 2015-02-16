//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/ResponseLoadHistory.java
//

#ifndef _ImActorModelApiRpcResponseLoadHistory_H_
#define _ImActorModelApiRpcResponseLoadHistory_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Response.h"

#define ImActorModelApiRpcResponseLoadHistory_HEADER 119

@interface ImActorModelApiRpcResponseLoadHistory : ImActorModelNetworkParserResponse {
}

+ (ImActorModelApiRpcResponseLoadHistory *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)history
                    withJavaUtilList:(id<JavaUtilList>)users;

- (instancetype)init;

- (id<JavaUtilList>)getHistory;

- (id<JavaUtilList>)getUsers;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcResponseLoadHistory)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcResponseLoadHistory *ImActorModelApiRpcResponseLoadHistory_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcResponseLoadHistory, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcResponseLoadHistory)

#endif // _ImActorModelApiRpcResponseLoadHistory_H_
