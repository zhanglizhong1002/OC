//
//  QFPerson.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QFPerson : NSObject
{
    NSString *_name;
    NSInteger _age;
}

-(id)init;
-(void)setName:(NSString *)name andAge:(NSInteger)age;
-(void)setName:(NSString *)name;
-(void)setAge:(NSInteger)age;
-(NSString *)name;
-(NSInteger)age;

@end
