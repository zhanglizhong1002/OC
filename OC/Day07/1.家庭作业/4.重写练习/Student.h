//
//  Student.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    NSString *_name;
    NSInteger _age;
}
@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)NSInteger age;

-(void)course;
-(void)write;

@end
