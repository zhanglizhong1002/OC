//
//  Person.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BankProtocol.h"

@interface Person : NSObject<BankProtocol>
{
    NSString *_name;
    NSInteger _money;
}

@property(nonatomic,copy)NSString *name;

@end
