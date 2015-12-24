//
//  main.m
//  OC02_方法
//
//  Created by dllo on 15/12/1.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

#import "Student.h"

#import "CollegeStudent.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
#pragma mark - 知识点 1 OC 的方法语法;
        
        
/**
 * OC 方法分 '+'类方法 '-' 对象方法
 
 * '+' 类方法中不能有实例变量;
 
 * !!!!使用方法时,必须明确方法是类方法还是对象方法;
 
 **/
        
// - (NSString *)substringFromIndex:(NSUInteger)anIndex
        
        /**
         
         * 上面的方法,其中
         
         * - 说明是对象方法,只能对象调用此方法
         
         * 返回值类型为 NSString * (字符串)
         
         *
         
         * 'substringFromIndex' 参数的形容词
         
         *  ':' 说明后面有参数,
         
         *  '(NSUInteger)' 参数类型
         
         *  '(anIndex)' 参数名
         
         *方法名 : substringFromIndex: 注意带" : ", 去掉其他的剩下形容词和冒号
         
         */
        
  //- (void)insertString:(NSString *)aString atIndex:(NSUInteger)anIndex
        
        
#pragma mark - 知识点 2  setter , getter 方法
        
        
        /**
         
         * 实例变量默认的可见度为 @protected 外部不能直接访问(赋值\取值)
         
         *
         
         * 如果不能直接访问,通过方法间接的对实例变量进行访问,因为受保护所以简介访问;
         
         *
         
         * 涉及到两个方法,即赋值方法(setter) , 取值方法(getter);
         
         
         **/
        
        
        
        /** 创建对象*/
        
        Person *per1 = [[Person alloc] init];// 定义,开空间,初始化
        
        // Person *per2 = per1;错误的
        
        //通过 setter , getter 方法访问实例变量,赋值和获取
        
        [per1 setName:@"zhang"]; // 赋值
        
        // - (void)setName:(Nssing *)name{ _name = name } 实现  -- set 方法
        
        [per1 setAge:20]; // 什么格式取决于之前的类型,所以不加 @"" 等
        
        [per1 setSex:@"male"];
        
        NSLog(@"name:%@",[per1 name]);
        
        //- (NSString *)name{  return _name;  } //实例变量,是 _name  -- getter 方法
        
        NSLog(@"age:%ld",[per1 age]);
        
        NSLog(@"sex:%@", [per1 sex]); // 获取 取值
        
        
        
        
        
        
        
        
#pragma mark - 知识点 3 继承
        
        
//注意: 子类继承父类所有的实力变量和方法.实例变量可见度为 @private 私有的,同样继承下来;
        
        
// Student 类继承于 Person 类
        
        
        Student *stu1 = [[Student alloc] init];
        
        
        [stu1 setName:@"Tom"];
        
        [stu1 setAge:18];
        
        [stu1 setSex:@"male"];
        
        // 前三个体现出了继承
        
        [stu1 setSchool:@"清华大学"];
        
        [stu1 setNumber: 1];
        
        [stu1 study];

    
        
        
        
        //创建 collegestudent 的对象
    
        CollegeStudent *coll1 = [[CollegeStudent alloc] init];
        
        [coll1 study];//调用
        
        
        
        
                
        [coll1 setMajor:@"英语"];
        
        [coll1 setAcademy:@"佛学院"];
        
        NSLog(@"major:%@",[coll1 major]);
        
        NSLog(@"academy:%@", [coll1 academy]);
        
        
        
#pragma mark - 知识点 4 初始化方法(详见 Person 类中)
        
        
        
        //创建一个 Pesson 类的对象,并且给实例变量赋值
        
        
        
        Person *per3 = [[Person alloc] init];
        
        //[per3 setName:@"zhangsan"];
        
        [per3 setAge:18];
        
        [per3 setSex:@"male"];
        
        
        Person *per4 = [[Person alloc]initWithName:@"Lisi" age:18 sex:@"male"]; // 类开空间 初始化并赋值
        
        
        
#pragma mark - 知识点 5 便利构造器方法(详见 Person 类)
        
        
        Person *person7 = [Person personWithName:@"Lili" age:18 sex:@"female"];
        
        Person *person8 = [Person person]; //无参数 开空间 初始化了一下
        

        NSLog(@"name: %@, age: %ld, sex: %@",person7.name, person7.age, person7.sex);
    
    
    }
    return 0;
}
