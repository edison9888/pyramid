//
//  UserCentre.h
//  Pyramid
//
//  Created by andregao on 13-1-12.
//  Copyright (c) 2013年 linkkk.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserCentre : NSObject

@property(nonatomic,retain) NSNumber *   userID;
@property(nonatomic,retain) NSString *   xsrfToken;

// userName and password
-(BOOL)storeUserName:(NSString*)name andPW:(NSString*)pw;
-(BOOL)getUserName:(NSString**)pName andPW:(NSString**)pPW;
-(void)deleteNameAndPW;

@end
