//
//  Person.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/24.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    NSInteger _age;
}

-(void)setName:(NSString *)name andAge:(NSInteger)age;

@end
