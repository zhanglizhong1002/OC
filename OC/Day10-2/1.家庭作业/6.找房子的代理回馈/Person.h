//
//  Person.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "FindProtocol.h"

@interface Person : NSObject

@property(nonatomic,weak)id<FindProtocol> delegate;

-(void)start;

@end
