//
//  Line.m
//  Foundation框架
//
//  Created by Kyle.Z on 16/8/18.
//  Copyright © 2016年 kyle.z. All rights reserved.
//

#import "line.h"

@implementation Line
-(int)codeLines:(NSString *)filePath  {
    //1.加载文件内容
    NSString *contens = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    //2.1.用\n分割文件内容，分割后的各段成为数组的各个元素
    NSArray *arr = [contens componentsSeparatedByString:@"\n"];
    //2.1.2.计算数组的元素数，即文件内容的行数
    return (int)arr.count;
}
@end
