//
//  Person.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/14.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(nonatomic,copy)NSString *name;

-(void)say:(void (^)(NSString *name))block;

@end
