//
//  Boy.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/14.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Boy : NSObject

-(void)start:(NSInteger (^)())block;

@property(nonatomic,assign)NSInteger count;

@end
