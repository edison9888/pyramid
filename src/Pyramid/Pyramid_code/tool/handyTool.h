//
//  handyTool.h
//  Pyramid
//
//  Created by andregao on 13-1-12.
//  Copyright (c) 2013年 linkkk.com. All rights reserved.
//

#ifndef Pyramid_handyTool_h
#define Pyramid_handyTool_h

#import "MBProgressHUD.h"

// 
#define LKString(key)      NSLocalizedString(@#key,nil)

//
NSURL* linkkkUrl(NSString* urlPath);

// repObj
#define json2obj(jsonData,ObjClass)                                                                         \
    ObjClass* repObj = nil;                                                                                 \
    {                                                                                                       \
        NSError* err;                                                                                       \
        NSDictionary* dataDic = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&err];     \
        if (err) {                                                                                          \
            LKLog([err localizedDescription]);                                                              \
        }                                                                                                   \
        else {                                                                                              \
            @try {                                                                                          \
                repObj = [[ObjClass alloc] initWithDictionary:dataDic];                                \
            }                                                                                               \
            @catch (NSException *exception) {                                                               \
                LKLog(@"!!!!! json: dictionary to object error !!!!!");                                     \
            }                                                                                               \
        }                                                                                                   \
    }

//
UIImage* scaleImage(UIImage* image,CGSize newSize);

//
void showHUDTip(MBProgressHUD* hud,NSString* text);

//
#define UICOLOR(r,g,b) [UIColor colorWithRed:(r/255.0) green:(g/255.0) blue:(b/255.0) alpha:1.0]

#endif
