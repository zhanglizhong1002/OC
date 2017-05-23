//
//  SiteSys.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Site.h"

@interface SiteSys : NSObject
{
    NSMutableDictionary *_mutDic;
}

-(id)init;
@property(nonatomic,retain)NSMutableDictionary *mutDic;
-(void)addSite:(Site *)site;
-(void)deleteforKey:(NSString *)title;
-(Site *)searchForKey:(NSString *)title;

@end
