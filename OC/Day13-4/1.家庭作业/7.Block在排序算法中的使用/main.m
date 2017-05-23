//
//  main.m
//  7.Block在排序算法中的使用
//
//  Created by qianfeng on 15/10/14.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NSInteger lengthSort(NSString *obj1,NSString *obj2)
{//用元素长度判断，来进行排序 ,冒泡排序，两两比较最大值放右边
    if([obj1 length] > [obj2 length])
    {
        return 1;
    }
    return 0;
}

NSInteger asciiSort(NSString *obj1,NSString *obj2)
{//用Ascii的大小判断，来进行排序 ,冒泡排序，两两比较最大值放右边
    if([obj1 compare:obj2] == 1)
    {
        return 1;
    }
    return 0;
}

NSInteger intToSort(NSString *obj1,NSString *obj2)
{//用数字字符串转整数来判断大小进行排序 ,冒泡排序，两两比较最大值放右边
    if([obj1 intValue]>[obj2 intValue])
    {
        return 1;
    }
    return 0;
}

//void (*p)(NSString *obj1,NSString *obj2),声明函数指针，带两个参数
//一般在企业中经常使用函数回调，把函数回调部分作为第三方库
void sortMutarray(NSMutableArray *mutArray,NSInteger (*p)(NSString *,NSString *))
{
    NSInteger len = [mutArray count];
    for (NSInteger i = 0; i<len-1; i++) {
        for(NSInteger j =0;j<len-1-i;j++)
        {
            
            if(p(mutArray[j] ,mutArray[j+1]))  //函数回调，回调lengthSort
            {
                [mutArray exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
        }
    }
    
    /*len = [mutArray count];
    for (NSInteger i = 0; i<len-1; i++) {
        for(NSInteger j =0;j<len-1-i;j++)
        {
            //用Ascii的大小判断，来进行排序 ,冒泡排序，两两比较最大值放右边
            if([mutArray[j] compare:mutArray[j+1]]==1)
            {
                [mutArray exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
        }
    }
    NSLog(@"以Ascii排序:%@",mutArray);
    
    len = [mutArray count];
    for (NSInteger i = 0; i<len-1; i++) {
        for(NSInteger j =0;j<len-1-i;j++)
        {
            //用数字字符串转整数来判断大小进行排序 ,冒泡排序，两两比较最大值放右边
            if([mutArray[j] intValue] > [mutArray[j+1] intValue])
            {
                [mutArray exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
        }
    }
    NSLog(@"以整数大小排序:%@",mutArray);*/

    
}

NSInteger sysLengthSort(id obj1,id obj2,void* obj3)
{
    NSString *str1 = (NSString *)obj1;
    NSString *str2 = (NSString *)obj2;
    //用元素长度判断，来进行排序 ,冒泡排序，两两比较最大值放右边
    if([str1 length] > [str2 length])
    {
        return 1;
    }
    return 0;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *array = @[@"3333333",@"1111",@"6",@"222",@"44444",@"55"];
        NSMutableArray *mutArr = [[NSMutableArray alloc] initWithArray:array];
        NSLog(@"排序前:%@",mutArr);
 
#if 0
        //自定义使用函数指针进行排序的方法
        sortMutarray(mutArr,lengthSort);
        NSLog(@"以长度排序:%@",mutArr);
        
        sortMutarray(mutArr, asciiSort);
        NSLog(@"以Ascii排序:%@",mutArr);
        
        sortMutarray(mutArr, intToSort);
        NSLog(@"以整数大小排序:%@",mutArr);
#endif

#if 0
        //系统实现排序，我们来完成的部分就是，以什么样的比较方式来排序
        //sysLengthSort:传递该函数名，自己实现以比较长度进行排序
        //sortUsingFunction:函数指针调用的排序方法
        [mutArr sortUsingFunction:sysLengthSort context:NULL];
        NSLog(@"以长度排序:%@",mutArr);
#endif
        
        //使用系统的block实现排序
        [mutArr sortUsingComparator:
         ^NSComparisonResult(id obj1,id obj2){
            //以求Ascii的方式来排序
             NSString *str1 = (NSString *)obj1;
             NSString *str2 = (NSString *)obj2;
             if([str1 compare:str2]==1)
             {
                 return 1;
             }
             return 0;
         }];
        NSLog(@"以Ascii排序:%@",mutArr);
        
        

    }
    return 0;
}
