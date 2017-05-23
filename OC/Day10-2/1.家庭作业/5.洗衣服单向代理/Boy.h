//
//  Boy.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WashProtocol.h"

@interface Boy : NSObject

@property(nonatomic,weak)id<WashProtocol> delegate;

-(void)command;

@end
