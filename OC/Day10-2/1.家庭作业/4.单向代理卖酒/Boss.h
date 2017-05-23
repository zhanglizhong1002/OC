//
//  Boss.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BeerProtocol.h"

@interface Boss : NSObject

//被代理者声明一个委托的代理对象：delegate，让它遵守BeerProtocol
//在代理中使用weak弱引用
//1. 委托声明代理对象
@property(nonatomic,weak)id<BeerProtocol> delegate;

-(void)start;

@end
