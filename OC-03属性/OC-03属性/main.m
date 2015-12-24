//
//  main.m
//  OC-03属性
//
//  Created by dllo on 15/12/2.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Phone.h"

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        // 课堂练习
        
        

        
#pragma mark - 知识点 1 属性
        
        // 属性的三个作用
        
        /*
         *1. 声明了一个实例变量, 名字 _属性 例如 _name
         
         *2. 声明和实现 setter 方法
         
         *3. 声明和实现 getter 方法
         
         *4.详见 Person 类.
         
         */
    
        
        
#pragma mark - 知识点 2 属性的特性(共三个特性,相当于加了三个修饰词)
        
        /*
         
         *属性的三个特性:
         
         *1,可读性
         *2,原子性
         *3,语义

         * 详见 Person 类 
         **/
        
        
#pragma mark - 知识点 3 点语法  //!!!点语法只对属性的访问起作用.其他方法还是[ 类/对象 方法 ]消息语法格式
        // 点语法 相当于 set 方法
        
        Phone *phone1 = [[Phone alloc] init];
        
        Phone *phone2 = [[Phone alloc] init];
        
        
        phone1.name = @"APPLE";  //[ phone1 setName:@"apple"] == phone1.name = @"apple"
        
        phone1.colour = @"白色";
        
        phone1.size = @"4.7 寸";
        
        NSLog(@"name:%@, colour:%@, size:%@", phone1.name, phone1.colour, phone1.size);
        
        
        
        phone2.name = phone1.name; //取值 赋 右边取到值
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
