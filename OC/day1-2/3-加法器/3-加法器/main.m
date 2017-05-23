//
//  main.m
//  3-加法器
//
//  Created by qianfeng on 15-9-21.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Add.h"
#import "Rectangle.h"
#import "Dog.h"

/*
@interface Add : NSObject
{
    int _num1;
    int _num2;
}
- (void)setNum1:(int)num1 andNum2:(int)num2;
- (int)getSum;
@end

 
@implementation Add
- (void)setNum1:(int)num1 andNum2:(int)num2
{
    _num1 = num1;
    _num2 = num2;
}
- (int)getSum
{
    return _num1 + _num2;
}
@end
*/
//.h和.m


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
#if 0
        // 创建一个加法器对象:
        Add *a = [Add alloc];
        int n1, n2;
        scanf("%d%d", &n1, &n2);
        [a setNum1:n1 andNum2:n2];
        NSLog(@"%d", [a getSum]);
#else
        
        Rectangle *r = [Rectangle alloc]; // 创建长方形对象;
        // 设置长和宽:
        [r setLength:10.5 andWidth:5.5];
        //显示面积:
        [r showArea];
        // 显示周长:
        [r showCircle];
#endif
        
        
        Dog *xiaobai = [Dog alloc];
        
        [xiaobai setName:"xiaobai" andAge:3 andWeigth:10.5];
        
        [xiaobai show];
        
        
    }
    return 0;
}













