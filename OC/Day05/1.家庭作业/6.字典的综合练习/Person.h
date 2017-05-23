//
//  Person.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/25.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    NSInteger _age;
    char      _sex;
}

-(void)setName:(NSString *)name andAge:(NSInteger)age andSex:(char)sex;
-(NSString*)name;
-(NSInteger)age;
-(char)sex;

@end
