//
//  QFDog.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/14.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

//把void (^)(NSString *name) 类型重命名为blockType
typedef void (^blockType)(NSString *name);

@interface QFDog : NSObject

@property(nonatomic,copy)NSString *name;

-(void)bark;

-(void)bark1:(blockType)block;

@end
