//
//  Site.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Site : NSObject
{
    NSString *_title;
    NSString *_addr;
}

-(id)init;
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *addr;

@end
