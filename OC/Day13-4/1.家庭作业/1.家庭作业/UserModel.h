//
//  UserModel.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/14.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserModel : NSObject<NSCoding>

@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *age;
@property(nonatomic,copy)NSString *type;

@end
