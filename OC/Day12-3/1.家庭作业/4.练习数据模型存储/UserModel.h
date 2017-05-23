//
//  UserModel.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/13.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
//遵守归档协议<NSCoding>
@interface UserModel : NSObject<NSCoding>

@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *sex;
@property(nonatomic,copy)NSString *age;

@end
