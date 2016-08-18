//
//  main.m
//  计算文件夹下所有代码文件的行数
//
//  Created by Kyle.Z on 16/8/18.
//  Copyright © 2016年 kyle.z. All rights reserved.
//

#import <Foundation/Foundation.h>
//定义C函数(不同于OC中的方法，写法不同)
int codeLines(NSString *filePath) {
    //获取文件管理器单例对象
    NSFileManager *fm = [NSFileManager defaultManager];
    //判断所给路径是否存在
    BOOL isDir = NO;

    BOOL pathIsExist = [fm fileExistsAtPath:filePath isDirectory:&isDir];
    if (!pathIsExist) {
        NSLog(@"filePath is not exsited.");
        return 0;
    }
    //文件夹
    if (isDir) {
        //NSLog(@"isDir = %d", isDir);
        NSArray *arr = [fm contentsOfDirectoryAtPath:filePath error:nil];
        NSLog(@"%@", arr);//打印文件夹的目录
        
        int count = 0;
        for(NSString *file in arr) {
            NSString *fullPath = [NSString stringWithFormat:@"%@/%@",filePath, file];
            count += codeLines(fullPath);
        }
        return count;
    //文件
    }else {
        //NSLog(@"isDir = %d", isDir);
        //获取文件扩展名并转换成小写形式(不能遗漏扩展名大写的情况)
        //小写：lowercaseString;大写：uppercaseString
        NSString *extension = [[filePath pathExtension] lowercaseString];
        //排除非代码文件
        if (![extension isEqualToString:@"h"] && ![extension isEqualToString:@"m"] && ![extension isEqualToString:@"c"]) {
            return 0;//文件扩展名不是h/m/c时返回0
        }
        //获取文件内容contens
        NSString *contens = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
        //用换行符切割contens，存于数组中
        NSArray *arr = [contens componentsSeparatedByString:@"\n"];
        //返回值即为数组的元素个数
        return (int)arr.count;
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *path = @"/Users/Kyle/Documents/Foundation框架";
        int lines = codeLines(path);
        NSLog(@"codeLines = %d", lines);
    }
    return 0;
}
