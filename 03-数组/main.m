//
//  main.m
//  03-数组
//
//  Created by Kyle.Z on 16/8/17.
//  Copyright © 2016年 kyle.z. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         OC数组只能存放OC对象（可以为不同类型的对象），不能存放基本数据类型(int,float等)
         //C语言数组中只能存放相同的类型
        int a = 5;
        int ages[10] = {1, 90, 231, 32};
        Person *p1[5];//数组存放5个Person对象
         */
        Person *p1 = [[Person alloc] init];
        Person *p2 = [[Person alloc] init];
        
        NSArray *arr1 = [NSArray array];//创建不可变空数组
        NSArray *arr2 = [NSArray arrayWithObject:@"Rose"];
        NSArray *arr3 = [NSArray arrayWithObjects:@"Jack", @"Rose", nil];//nil不可省略，数组结束的标志
        NSArray *arr4 = @[@"Apple", @"Orange", @"Banana", @"Tea", p1, p2, @"--Test--", @"1213"];//Common
        //NSLog(@"%ld", arr4.count);
        //取出数组里的某一个对象
        //NSLog(@"%@", arr4[0]);
        [arr4 objectAtIndex:1];
        //取出数组所有对象/遍历数组----1
        for (int i = 0; i < arr4.count; i++) {
            //NSLog(@"%@", arr4[i]);
        }
        
        //----2
        int i = 0;
        for (id obj in arr4) {
            i++;
            NSUInteger j = [arr4 indexOfObject:obj];
            //NSLog(@"arr4[%ld]=%@", j, obj);//obj代表数组的元素
        }
        //NSLog(@"i = %d",i);
        
        //---3
        [arr4 enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSLog(@"arr4[%ld]=%@", idx, obj);
//            if (idx == 0) {
//                *stop = YES;
//            }
        }];

    }
    return 0;
}
