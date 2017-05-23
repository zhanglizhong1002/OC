//
//  Car.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Engine.h"

@interface Car : NSObject
{
    Engine * _engine;
}

-(id)initWithEngine:(Engine*)engine;

@property(nonatomic,retain)Engine *engine;

@end
