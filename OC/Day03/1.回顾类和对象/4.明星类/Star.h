//
//  Star.h
//  1.回顾类和对象
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Star : NSObject
{
    char *_name;
    NSInteger _age;
}

-(id)init;
-(void)setName:(char*)name andAge:(NSInteger)age;
-(char*)name;
-(NSInteger)age;
-(void)compareAge:(Star*)star;

+(void)test1;

@end
