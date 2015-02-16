//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/droidkit/actors/Props.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/droidkit/actors/ActorCreator.h"
#include "im/actor/model/droidkit/actors/MailboxCreator.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/droidkit/actors/mailbox/Mailbox.h"
#include "im/actor/model/droidkit/actors/mailbox/MailboxesQueue.h"
#include "java/lang/Exception.h"

@interface DKProps () {
 @public
  IOSClass *aClass_;
  IOSObjectArray *args_;
  jint type_;
  id<DKActorCreator> creator_;
  id<DKMailboxCreator> mailboxCreator_;
  NSString *dispatcher_;
}
- (instancetype)initWithIOSClass:(IOSClass *)aClass
               withNSObjectArray:(IOSObjectArray *)args
                         withInt:(jint)type
                    withNSString:(NSString *)dispatcher
              withDKActorCreator:(id<DKActorCreator>)creator
            withDKMailboxCreator:(id<DKMailboxCreator>)mailboxCreator;
@end

J2OBJC_FIELD_SETTER(DKProps, aClass_, IOSClass *)
J2OBJC_FIELD_SETTER(DKProps, args_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(DKProps, creator_, id<DKActorCreator>)
J2OBJC_FIELD_SETTER(DKProps, mailboxCreator_, id<DKMailboxCreator>)
J2OBJC_FIELD_SETTER(DKProps, dispatcher_, NSString *)

@implementation DKProps

- (instancetype)initWithIOSClass:(IOSClass *)aClass
               withNSObjectArray:(IOSObjectArray *)args
                         withInt:(jint)type
                    withNSString:(NSString *)dispatcher
              withDKActorCreator:(id<DKActorCreator>)creator
            withDKMailboxCreator:(id<DKMailboxCreator>)mailboxCreator {
  if (self = [super init]) {
    self->aClass_ = aClass;
    self->args_ = args;
    self->type_ = type;
    self->creator_ = creator;
    self->mailboxCreator_ = mailboxCreator;
    self->dispatcher_ = dispatcher;
  }
  return self;
}

- (id)create {
  return [((id<DKActorCreator>) nil_chk(creator_)) create];
}

- (DKMailbox *)createMailboxWithDKMailboxesQueue:(DKMailboxesQueue *)queue {
  if (mailboxCreator_ != nil) {
    return [mailboxCreator_ createMailboxWithDKMailboxesQueue:queue];
  }
  else {
    return [[DKMailbox alloc] initWithDKMailboxesQueue:queue];
  }
}

- (NSString *)getDispatcher {
  return dispatcher_;
}

- (DKProps *)changeDispatcherWithNSString:(NSString *)dispatcher {
  return [[DKProps alloc] initWithIOSClass:aClass_ withNSObjectArray:args_ withInt:type_ withNSString:dispatcher withDKActorCreator:creator_ withDKMailboxCreator:mailboxCreator_];
}

+ (DKProps *)createWithIOSClass:(IOSClass *)clazz
             withDKActorCreator:(id<DKActorCreator>)creator {
  return DKProps_createWithIOSClass_withDKActorCreator_(clazz, creator);
}

+ (DKProps *)createWithIOSClass:(IOSClass *)clazz
             withDKActorCreator:(id<DKActorCreator>)creator
           withDKMailboxCreator:(id<DKMailboxCreator>)mailboxCreator {
  return DKProps_createWithIOSClass_withDKActorCreator_withDKMailboxCreator_(clazz, creator, mailboxCreator);
}

- (void)copyAllFieldsTo:(DKProps *)other {
  [super copyAllFieldsTo:other];
  other->aClass_ = aClass_;
  other->args_ = args_;
  other->type_ = type_;
  other->creator_ = creator_;
  other->mailboxCreator_ = mailboxCreator_;
  other->dispatcher_ = dispatcher_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithIOSClass:withNSObjectArray:withInt:withNSString:withDKActorCreator:withDKMailboxCreator:", "Props", NULL, 0x2, NULL },
    { "create", NULL, "TT;", 0x1, "Ljava.lang.Exception;" },
    { "createMailboxWithDKMailboxesQueue:", "createMailbox", "Lim.actor.model.droidkit.actors.mailbox.Mailbox;", 0x1, NULL },
    { "getDispatcher", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "changeDispatcherWithNSString:", "changeDispatcher", "Lim.actor.model.droidkit.actors.Props;", 0x1, NULL },
    { "createWithIOSClass:withDKActorCreator:", "create", "Lim.actor.model.droidkit.actors.Props;", 0x9, NULL },
    { "createWithIOSClass:withDKActorCreator:withDKMailboxCreator:", "create", "Lim.actor.model.droidkit.actors.Props;", 0x9, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TYPE_DEFAULT_", NULL, 0x1a, "I", NULL, .constantValue.asInt = DKProps_TYPE_DEFAULT },
    { "TYPE_CREATOR_", NULL, 0x1a, "I", NULL, .constantValue.asInt = DKProps_TYPE_CREATOR },
    { "aClass_", NULL, 0x12, "Ljava.lang.Class;", NULL,  },
    { "args_", NULL, 0x12, "[Ljava.lang.Object;", NULL,  },
    { "type_", NULL, 0x12, "I", NULL,  },
    { "creator_", NULL, 0x12, "Lim.actor.model.droidkit.actors.ActorCreator;", NULL,  },
    { "mailboxCreator_", NULL, 0x12, "Lim.actor.model.droidkit.actors.MailboxCreator;", NULL,  },
    { "dispatcher_", NULL, 0x12, "Ljava.lang.String;", NULL,  },
  };
  static const J2ObjcClassInfo _DKProps = { 1, "Props", "im.actor.model.droidkit.actors", NULL, 0x11, 7, methods, 8, fields, 0, NULL};
  return &_DKProps;
}

@end

DKProps *DKProps_createWithIOSClass_withDKActorCreator_(IOSClass *clazz, id<DKActorCreator> creator) {
  DKProps_init();
  return [[DKProps alloc] initWithIOSClass:clazz withNSObjectArray:nil withInt:DKProps_TYPE_CREATOR withNSString:nil withDKActorCreator:creator withDKMailboxCreator:nil];
}

DKProps *DKProps_createWithIOSClass_withDKActorCreator_withDKMailboxCreator_(IOSClass *clazz, id<DKActorCreator> creator, id<DKMailboxCreator> mailboxCreator) {
  DKProps_init();
  return [[DKProps alloc] initWithIOSClass:clazz withNSObjectArray:nil withInt:DKProps_TYPE_CREATOR withNSString:nil withDKActorCreator:creator withDKMailboxCreator:mailboxCreator];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKProps)
