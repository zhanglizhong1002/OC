//
//  Product.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/12.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DoWorkProtocol.h"

@interface Product : NSObject<DoWorkProtocol>

@property(nonatomic,weak)id<DoWorkProtocol> delegate;

-(void)start;

@end
