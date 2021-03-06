//
//  ExperienceStreamController.m
//  Pyramid
//
//  Created by andregao on 13-1-24.
//  Copyright (c) 2013年 linkkk.com. All rights reserved.
//

#import "ExperienceStreamController.h"
#import "JsonObj.h"
#import "ExperienceController.h"

#define CELL_IMG 600

@interface ExperienceStreamController ()

@end

@implementation ExperienceStreamController

-(NSString*)requestUrlPath:(BOOL)bRefresh
{
    NSNumber * start = @2147483647;     // todo news id超过该数值时
    if (_data.count > 0 && !bRefresh) {
        Json_experience* last = (Json_experience*)[_data lastObject];
        start = last.id;
    }
    NSString* urlPath = [NSString stringWithFormat:@"/api/alpha/participated/?id__lt=%@&limit=20&&order_by=-id&user=%@",start.stringValue,_userID.stringValue];
    
    return urlPath;
}

-(void)loadSuccess:(ASIHTTPRequest *)request bRefresh:(BOOL)bRefresh
{
    json2obj(request.responseData, ExperienceStreamResponse)
    [_data addObjectsFromArray:repObj.objects];
    if (repObj.objects.count < 20) {
        _bLoadFinish = YES;
    }
}

#pragma mark - ExpStreamCtlDelegate
- (NSNumber*)getID:(id)item
{
    Json_experience * exp = item;
    return exp.id;
}

- (Json_profile*)getExpProfile:(id)item
{
    Json_experience * exp = item;
    return exp.activity_profile;
}

@end
