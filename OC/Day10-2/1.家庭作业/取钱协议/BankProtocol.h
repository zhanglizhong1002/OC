//
//  BankProtocol.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BankProtocol <NSObject>

-(void)saveMoney:(NSInteger)money;
-(NSInteger)money;

@end
