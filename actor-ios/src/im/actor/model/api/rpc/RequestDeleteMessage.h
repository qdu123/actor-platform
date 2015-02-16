//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestDeleteMessage.java
//

#ifndef _ImActorModelApiRpcRequestDeleteMessage_H_
#define _ImActorModelApiRpcRequestDeleteMessage_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@class ImActorModelApiOutPeer;
@protocol JavaUtilList;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

#define ImActorModelApiRpcRequestDeleteMessage_HEADER 98

@interface ImActorModelApiRpcRequestDeleteMessage : ImActorModelNetworkParserRequest {
}

+ (ImActorModelApiRpcRequestDeleteMessage *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithImActorModelApiOutPeer:(ImActorModelApiOutPeer *)peer
                              withJavaUtilList:(id<JavaUtilList>)rids;

- (instancetype)init;

- (ImActorModelApiOutPeer *)getPeer;

- (id<JavaUtilList>)getRids;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestDeleteMessage)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcRequestDeleteMessage *ImActorModelApiRpcRequestDeleteMessage_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestDeleteMessage, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestDeleteMessage)

#endif // _ImActorModelApiRpcRequestDeleteMessage_H_
