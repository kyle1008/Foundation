//
//  main.m
//  计算单个文件的代码行数
//
//  Created by Kyle.Z on 16/8/17.
//  Copyright © 2016年 kyle.z. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Line.h"

//计算单个文件的代码行数
//自定义函数->参数:文件路径，返回值:代码行数 (C函数不同于OC中的方法)
int codeLines(NSString *filePath) {
        //1.加载文件内容
        NSString *contens = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
        //2.1.用\n分割文件内容，分割后的各段成为数组的各个元素
        NSArray *arr = [contens componentsSeparatedByString:@"\n"];
        //2.1.2.计算数组的元素数，即文件内容的行数
        return (int)arr.count;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *filePath = @"/Users/Kyle/Documents/Foundation框架/计算单个文件的代码行数/main.m";
        //方法1.调用C函数
        int n1 = codeLines(filePath);
        NSLog(@"codeLines = %d", n1);
        
        //方法2.调用OC方法
        Line *lines = [[Line alloc] init];
        int n2 = [lines codeLines:filePath];
        NSLog(@"codeLines = %d", n2);
    }
    return 0;
}

