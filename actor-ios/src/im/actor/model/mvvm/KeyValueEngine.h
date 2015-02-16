//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/mvvm/KeyValueEngine.java
//

#ifndef _AMKeyValueEngine_H_
#define _AMKeyValueEngine_H_

@class IOSLongArray;
@protocol AMKeyValueItem;
@protocol JavaUtilList;

#include "J2ObjC_header.h"

@protocol AMKeyValueEngine < NSObject, JavaObject >

- (void)addOrUpdateItemWithAMKeyValueItem:(id<AMKeyValueItem>)item;

- (void)addOrUpdateItemsWithJavaUtilList:(id<JavaUtilList>)values;

- (void)removeItemWithLong:(jlong)id_;

- (void)removeItemsWithLongArray:(IOSLongArray *)ids;

- (void)clear;

- (id<JavaUtilList>)getAll;

- (id)getValueWithLong:(jlong)id_;

@end

J2OBJC_EMPTY_STATIC_INIT(AMKeyValueEngine)

#define ImActorModelMvvmKeyValueEngine AMKeyValueEngine

J2OBJC_TYPE_LITERAL_HEADER(AMKeyValueEngine)

#endif // _AMKeyValueEngine_H_
