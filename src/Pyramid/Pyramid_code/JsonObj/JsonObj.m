//
//  JsonObj.m
//  Pyramid
//
//  Created by andregao on 13-1-16.
//  Copyright (c) 2013年 linkkk.com. All rights reserved.
//

#import "JsonObj.h"

@implementation Json_City

@end

@implementation Json_District

@end

@implementation Json_meta

@end

@implementation Json_image

@end

@implementation Json_author

@end

@implementation Json_mention

@end

@implementation Json_current_profile

@end

@implementation Json_activity

@end

@implementation Json_user

@end

@implementation Json_recent_replie
+ (Class)mentions_class {
    return [Json_mention class];
}
@end

@implementation Json_linkee
+ (Class)mentions_class {
    return [Json_mention class];
}

+ (Class)recent_replies_class {
    return [Json_recent_replie class];
}
@end

@implementation Json_news

@end

///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
@implementation ExploreLinkeeResponse
+ (Class)objects_class {
    return [Json_linkee class];
}
@end

@implementation NewsResponse
+ (Class)objects_class {
    return [Json_news class];
}
@end
