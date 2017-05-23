//
//  Arter.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DoWorkProtocol.h"
//1.画家作为代理者，遵守、实现、调用协议

@interface Arter : NSObject<DoWorkProtocol>

//2.画家作为被代理者，先声明委托对象

@property(nonatomic,weak)id<DoWorkProtocol> delegate;

-(void)start;

@end
