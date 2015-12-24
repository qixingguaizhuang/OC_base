//
//  main.m
//  OC08_内存2
//
//  Created by dllo on 15/12/10.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"



int main(int argc, const char * argv[]) {
   
    @autoreleasepool {
       
    
    // 新建一个 person 类
    
    
#pragma mark 知识点 1 copy
        
        
        // 要建一个对象,进行 copy 拷贝, 此类必须遵循 NSCoping 协议
        
        // copy 计数上加 1
        

        
        
    
        Person *per1 = [[Person alloc] init];
        
        per1.name = @"Tom";
        
        [per1 copy];
        
        Person *per2 = [per1 copy];
        
        
        NSLog(@"\nper2Name:%@",per2.name);
        
        [per2 release];
        [per1 release];
        
        
#pragma mark - 知识点 2 oc 的运行时和编译时
        
        
        // 编译时,按照指针类型(对象类型),处理.
        
        // 运行时,按照 ISA 指向的类对象进行处理.
        
        
        
        
    
    
    
    
    
    
    
    
    
    
    
    }
    return 0;
}
