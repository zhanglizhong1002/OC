//
//  Card.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
{
    NSString *_name;
    NSString *_telePhone;
    NSInteger _age;
}

@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *telePhone;
@property(nonatomic,assign)NSInteger age;

@end
