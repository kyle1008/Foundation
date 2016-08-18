//
//  main.m
//  07-NSNumber
//
//  Created by Kyle.Z on 16/8/18.
//  Copyright © 2016年 kyle.z. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       NSDictionary *dic = @{@"name": @"jack", @"age": @18, @"height": @178};

        NSNumber *age = dic[@"age"];
        NSLog(@"%@", age);
        
        NSNumber *height = dic[@"height"];
        //OC的数字对象->C语言的数字
        int h = [height intValue];
        NSLog(@"%d", h);
        
        //C语言的数字->OC-NSNumber对象
        NSNumber *n = [NSNumber numberWithDouble:18.7];
        
        //C语言的数字->OC-NSString对象
        NSString *str = [NSString stringWithFormat:@"%d", 90];
        NSLog(@"%@", str);
        /*
        //基本数字类型->OC对象
        @"A"  //NSString对象
        @'A' @100 @YES //NSNumber对象
         */
        
        int a = 100;
        //@(a) == @100
        NSLog(@"%@", @(a));//C数字->OC-NSNumber
        
        
        //基本类型->OC对象
        CGPoint pt = CGPointMake(10, 10);
        NSValue *value = [NSValue valueWithPoint:pt];//结构体包装成NSValue对象
        NSLog(@"value = %@", value);
       [value pointerValue];//NSValue对象转化成对应的结构体
        
    }
    return 0;
}
