//
//  Animal.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject
{
    NSString *_name;
    NSInteger _age;
    char      _sex;
}

@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)NSInteger age;
@property(nonatomic,assign)char    sex;

-(void)bark;

@end
