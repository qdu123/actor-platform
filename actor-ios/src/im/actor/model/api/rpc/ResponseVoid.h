//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/ResponseVoid.java
//

#ifndef _ImActorModelApiRpcResponseVoid_H_
#define _ImActorModelApiRpcResponseVoid_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Response.h"

#define ImActorModelApiRpcResponseVoid_HEADER 50

@interface ImActorModelApiRpcResponseVoid : ImActorModelNetworkParserResponse {
}

+ (ImActorModelApiRpcResponseVoid *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)init;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcResponseVoid)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcResponseVoid *ImActorModelApiRpcResponseVoid_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcResponseVoid, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcResponseVoid)

#endif // _ImActorModelApiRpcResponseVoid_H_
