//
//  BookModel.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/12.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

//遵守归档／解档协议：<NSCoding>
@interface BookModel : NSObject<NSCoding>

@property(nonatomic,copy)NSString *counts;
@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *title;

@end
