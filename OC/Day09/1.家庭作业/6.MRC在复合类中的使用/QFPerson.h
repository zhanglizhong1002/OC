//
//  QFPerson.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/8.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QFDog.h"

@interface QFPerson : NSObject
{
    QFDog *_dog;
}

//-(void)setDog:(QFDog *)dog;
@property(nonatomic,retain)QFDog *dog;

@end
