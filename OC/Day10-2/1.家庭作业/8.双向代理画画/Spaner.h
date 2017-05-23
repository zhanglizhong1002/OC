//
//  Spaner.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AstProtocol.h"
#import "SpanProtocol.h"
//1.纺织工作为代理者，需遵守、实现、调用协议
@interface Spaner : NSObject<SpanProtocol>

//2.作为被代理者，先声明委托对象
@property(nonatomic,weak)id<AstProtocol> delegate;
-(void)start;
@end
