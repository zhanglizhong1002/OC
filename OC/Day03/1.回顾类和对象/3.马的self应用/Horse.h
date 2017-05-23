//
//  Horse.h
//  1.回顾类和对象
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Horse : NSObject
{
    char *_name;
}

-(id)init;
-(void)setName:(char*)name;
-(char*)name;
-(void)eat;
-(void)run;

@end
