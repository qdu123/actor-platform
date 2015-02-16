//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/Avatar.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Avatar.h"
#include "im/actor/model/api/AvatarImage.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiAvatar () {
 @public
  ImActorModelApiAvatarImage *smallImage_;
  ImActorModelApiAvatarImage *largeImage_;
  ImActorModelApiAvatarImage *fullImage_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiAvatar, smallImage_, ImActorModelApiAvatarImage *)
J2OBJC_FIELD_SETTER(ImActorModelApiAvatar, largeImage_, ImActorModelApiAvatarImage *)
J2OBJC_FIELD_SETTER(ImActorModelApiAvatar, fullImage_, ImActorModelApiAvatarImage *)

@implementation ImActorModelApiAvatar

- (instancetype)initWithImActorModelApiAvatarImage:(ImActorModelApiAvatarImage *)smallImage
                    withImActorModelApiAvatarImage:(ImActorModelApiAvatarImage *)largeImage
                    withImActorModelApiAvatarImage:(ImActorModelApiAvatarImage *)fullImage {
  if (self = [super init]) {
    self->smallImage_ = smallImage;
    self->largeImage_ = largeImage;
    self->fullImage_ = fullImage;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (ImActorModelApiAvatarImage *)getSmallImage {
  return self->smallImage_;
}

- (ImActorModelApiAvatarImage *)getLargeImage {
  return self->largeImage_;
}

- (ImActorModelApiAvatarImage *)getFullImage {
  return self->fullImage_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->smallImage_ = [((BSBserValues *) nil_chk(values)) optObjWithInt:1 withBSBserObject:[[ImActorModelApiAvatarImage alloc] init]];
  self->largeImage_ = [values optObjWithInt:2 withBSBserObject:[[ImActorModelApiAvatarImage alloc] init]];
  self->fullImage_ = [values optObjWithInt:3 withBSBserObject:[[ImActorModelApiAvatarImage alloc] init]];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->smallImage_ != nil) {
    [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->smallImage_];
  }
  if (self->largeImage_ != nil) {
    [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:2 withBSBserObject:self->largeImage_];
  }
  if (self->fullImage_ != nil) {
    [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:3 withBSBserObject:self->fullImage_];
  }
}

- (void)copyAllFieldsTo:(ImActorModelApiAvatar *)other {
  [super copyAllFieldsTo:other];
  other->smallImage_ = smallImage_;
  other->largeImage_ = largeImage_;
  other->fullImage_ = fullImage_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithImActorModelApiAvatarImage:withImActorModelApiAvatarImage:withImActorModelApiAvatarImage:", "Avatar", NULL, 0x1, NULL },
    { "init", "Avatar", NULL, 0x1, NULL },
    { "getSmallImage", NULL, "Lim.actor.model.api.AvatarImage;", 0x1, NULL },
    { "getLargeImage", NULL, "Lim.actor.model.api.AvatarImage;", 0x1, NULL },
    { "getFullImage", NULL, "Lim.actor.model.api.AvatarImage;", 0x1, NULL },
    { "parseWithBSBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithBSBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "smallImage_", NULL, 0x2, "Lim.actor.model.api.AvatarImage;", NULL,  },
    { "largeImage_", NULL, 0x2, "Lim.actor.model.api.AvatarImage;", NULL,  },
    { "fullImage_", NULL, 0x2, "Lim.actor.model.api.AvatarImage;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiAvatar = { 1, "Avatar", "im.actor.model.api", NULL, 0x1, 7, methods, 3, fields, 0, NULL};
  return &_ImActorModelApiAvatar;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiAvatar)
