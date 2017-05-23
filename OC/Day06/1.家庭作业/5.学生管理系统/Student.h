//
//  Student.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    NSString *_name;
    NSString *_num;
    NSInteger  _score;
    NSString *_telePhone;
}

@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *num;
@property(nonatomic,assign)NSInteger score;
@property(nonatomic,copy)NSString *telePhone;

@end
