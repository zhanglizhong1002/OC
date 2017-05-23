//
//  main.m
//  6.可变数组的常用方法
//
//  Created by qianfeng on 15/9/24.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        NSArray *array = @[@"11",@"22",@"33"];
        //可变数组继承不可辨数组，不可变数组的方法，在可变数组中皆可使用
        //arrayWithArray,通过另一个数组初始化可变数组
        NSMutableArray *mutArr = [NSMutableArray arrayWithArray:array];
        NSLog(@"mutArr=%@",mutArr);
        
        //arrayWithCapacity:建立一个空的可变数组
        NSMutableArray *mutArr1 = [NSMutableArray arrayWithCapacity:10];
        [mutArr1 addObject:@"aa"];
        NSLog(@"mutArr1=%@",mutArr1);
        
        //调用array的类方法建立一个空的可变数组
        NSMutableArray *mutArr2 = [NSMutableArray array];
        
        //addObject:给可变数组添加元素－－向数组元素最后去添加元素
        [mutArr2 addObject:@"bb"];
        [mutArr2 addObject:@"cc"];
        [mutArr2 addObject:@"dd"];
        //insertObject,在下标位置插入一个对象  index范围：0～len
        [mutArr2 insertObject:@"ee" atIndex:0];
        [mutArr2 insertObject:@"ff" atIndex:1];
        NSLog(@"mutArr2=%@",mutArr2);
        
        //removeObjectAtIndex:  删除指定下标位置的元素
        [mutArr2 removeObjectAtIndex:2];
        NSLog(@"remove 2 =%@",mutArr2);
        
        //removeObject,在数组中删除指定对象
        [mutArr2 removeObject:@"ff"];
        NSLog(@"remove ff=%@",mutArr2);
        
        //removeLastObject: 删除数组中最后一个元素
        [mutArr2 removeLastObject];
        NSLog(@"remove last = %@",mutArr2);
        
        //removeAllObjects,删除数组中所有元素
        [mutArr2 removeAllObjects];
        NSLog(@"remove all=%@",mutArr2);
        
        NSMutableArray *mutArr3 = [[NSMutableArray alloc] initWithObjects:@"qq",@"ww",@"ee",@"rr", nil];
        NSLog(@"mutArr3=%@",mutArr3);
        //removeObjectsInRange,在一个范围内删除数组元素，溢出则奔溃
        [mutArr3 removeObjectsInRange:NSMakeRange(1, 2)];
        NSLog(@"remove range = %@",mutArr3);
        
        //练习：1.创建一个数组,数组中包含若干不相同的字符串,要求将指定的字符串删除，指定字符串，要求从控制台输入。
    
        NSMutableArray *mutArr4 = [NSMutableArray arrayWithObjects:@"qianfeng",@"baidu",@"google",@"souhu", nil];
#if 0
        NSLog(@"%@",mutArr4);
        char a[20];
        printf("请输入一个匹配的字符串:");
        scanf("%s",a);
        NSString *str3 = [NSString stringWithUTF8String:a];
       [mutArr4 removeObject:str3];
        NSLog(@"remove %@",mutArr4);
#endif
        
        //2.创建一个数组,数组中包含若干不相同的字符串,要求将下标为2的倍数的元素全部删除
        //步骤，求长度，遍历，判断2的倍数，删除(建议从后往前删除，不会将数据混排)
#if 0
        NSInteger len = [mutArr4 count];
        for(NSInteger i=len-1;i>=0;i--)
        {
            if(i%2==0)
            {
                [mutArr4 removeObject:mutArr4[i]];
            }
        }
        /*for (NSInteger i=0; i<len; i++) {
            if(i%2==0)
            {
                [mutArr4 removeObject:mutArr4[i]];   // err 会造成数据混乱
            }
            //NSLog(@"-%ld--%@",i,mutArr4[i]);   //mutArr4[i]最后一个越界了
        }*/
        NSLog(@"删除2的倍数：%@",mutArr4);
#endif
        
        NSMutableArray *mutArr5 = [NSMutableArray arrayWithObjects:@"aaa",@"bbb",@"ccc",@"ddd",@"eee", nil];
        NSLog(@"mutArr5=%@",mutArr5);
        //replaceObjectAtIndex:在指定位置替换成另一个对象
        [mutArr5 replaceObjectAtIndex:2 withObject:@"333"];
        NSLog(@"replace = %@",mutArr5);
        NSArray *array5 = @[@"laoda",@"lao",@"laosan"];
        //replaceObjectsInRange,在原可变数组的指定的范围内，替换成另外的数组元素
        [mutArr5 replaceObjectsInRange:NSMakeRange(1, 2) withObjectsFromArray:array5];
        NSLog(@"range = %@",mutArr5);
        //exchangeObjectAtIndex:交换两个下标位置的元素
        [mutArr5 exchangeObjectAtIndex:0 withObjectAtIndex:2];
        NSLog(@"exchange=%@",mutArr5);
        
        //练习：逆序保存数组
        NSInteger len5 = [mutArr5 count];
        for(NSInteger i=0;i<len5/2;i++)
        {
            [mutArr5 exchangeObjectAtIndex:i withObjectAtIndex:len5-i-1];
        }
        NSLog(@"逆序后:%@",mutArr5);
    }
    return 0;
}
