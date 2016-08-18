//
//  main.m
//  01-结构体
//
//  Created by Kyle.Z on 16/8/17.
//  Copyright © 2016年 kyle.z. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
        1.NSRange:
        -------------------------------------------------------------------
         typedef struct _NSRange {
         NSUInteger location;
         NSUInteger length;
         } NSRange;
         
        NSUInteger:
         typedef unsigned long NSUInteger;
         */
        //以日期为例，结构体的使用
        /*
        struct Date {
            int year;
            int month;
            int day;
        };
        struct Date day1 = {2016, 8, 1};
        struct Date day2 = {.month = 10, .year = 2016, .day = 1};
        */
        
        /*
        typedef struct date {
            int year;
            int month;
            int day;
        } Date;
        Date day1 = {2016, 8, 1}
        Date day2 = {.year = 2016, .day = 1, .month = 8};
        */
        
        /*
        //@"I love you !"
        //rangge定位love的位置和长度
        NSRange range1 = {2, 4};
        NSRange range2 = {.location = 2, .length = 4};
        NSRange range3 = NSMakeRange(2, 4);//常用方式
        */
        NSString *str1 = @"I love you !";
        NSRange range4 = [str1 rangeOfString:@"love"];
        NSLog(@"loc = %d, length = %d", range4.location, range4.length);
        NSRange range5 = [str1 rangeOfString:@"java"];
        NSLog(@"loc = %d, length = %d", range5.location, range5.length);
        NSLog(@"%d", NSNotFound);//NSNotFound == -1
        
        
        /*
        2.CGPoint:
        -------------------------------------------------------------------
        struct CGPoint {
            CGFloat x;
            CGFloat y;
        };
        
        typedef struct CGPoint CGPoint;
         
         typedef CGFLOAT_TYPE CGFloat;
        */
        
        CGPoint point1 = NSMakePoint(0, 0);
        CGPoint point2 = CGPointMake(1, 1);//常用
        /*
        2.CGSize:
        -------------------------------------------------------------------
         struct CGSize {
         CGFloat width;
         CGFloat height;
         };
         typedef struct CGSize CGSize;
         */
        
        CGSize size1 = NSMakeSize(10, 20);
        CGSize size2 = CGSizeMake(100, 200);
        /*
        3.CGRect:
        -------------------------------------------------------------------
         struct CGRect {
         CGPoint origin;
         CGSize size;
         };
         typedef struct CGRect CGRect;
         */
        /*
         typedef CGPoint NSPoint;
         typedef CGSize NSSize;
         typedef CGRect NSRect;
         */
        CGRect rect1 = CGRectMake(0, 0, 100, 200);
        CGRect rect2 = {{10, 10}, {50, 100}};
        CGRect rect3 = {point1, size1};
        //原点(0, 0)
        //CGPointZero == CGPointMake(0, 0);
        CGRect rect4 = {CGPointZero, size1};
        //CGRectZero == CGRectMake(0, 0, 0, 0);
        NSLog(@"origin: (%f, %f), size: width = %f, height = %f", rect1.origin.x, rect1.origin.y, rect1.size.width, rect1.size.height);
        //结构体->字符串
        NSString *structToString = NSStringFromRect(rect1);
        NSString *sizeToString = NSStringFromSize(rect2.size);
        NSString *PointToString = NSStringFromPoint(rect3.origin);
        NSLog(@"rect = %@", structToString);
        NSLog(@"size = %@", sizeToString);
        NSLog(@"origin = %@", PointToString);
        //比较是否相同
        BOOL b1 = CGPointEqualToPoint(point1, point2);
        BOOL b2 = CGSizeEqualToSize(size1, size2);
        //判断包含关系
        BOOL b3 = CGRectContainsRect(rect2, rect1);
        BOOL b4 = CGRectContainsPoint(rect1, point1);
        NSLog(@"%d, %d, %d, %d", b1, b2, b3, b4);
    
        
    }
    return 0;
}
