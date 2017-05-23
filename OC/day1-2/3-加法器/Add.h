//
//  Add.h
//  3-加法器
//
//  Created by qianfeng on 15-9-21.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Add : NSObject
{
    int _num1;
    int _num2;
}
- (void)setNum1:(int)num1 andNum2:(int)num2;
- (int)getSum;

@end

// 同一个类的.h 和 .m的互相切换的快捷键:
// control + command + ⬆️/⬇️


