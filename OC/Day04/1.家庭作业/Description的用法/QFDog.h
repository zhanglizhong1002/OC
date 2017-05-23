//
//  QFDog.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/24.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QFDog : NSObject
{
    NSString *_name;
    NSInteger _age;
}

-(id)init;  //构造方法
-(void)setName:(NSString *)name andAge:(NSInteger)age;  //set方法
-(NSString*)name;  //get方法
-(NSInteger)age;

@end
