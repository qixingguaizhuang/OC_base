//
//  main.m
//  OC01_面向对象
//
//  Created by dllo on 15/11/30.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h" // 导入类的头文件

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
// @autoreleasepool  自动释放池
       
#pragma mark - 1 知识点 类的定义
        
// 详见 Person.h 和 Person.m 文件
// 类文件 (实例变量(特征)和行为)
    
  
#pragma mark - 2 知识点 创建对象
        
        
        Person *person1 = [Person alloc]; // alloc 是类方法,作用在堆区开辟空间
        
        person1 = [person1 init]; // 初始化
        
        // 通常将 alloc 方法和 init 方法连写;
        
        Person *person2 = [[Person alloc] init]; //开空间 初始化
        
        [person1 sayHello]; //调用
        
        [person1 infomation];
        
        
#pragma mark - 3 知识点 实例变量的访问(赋值和取值),详见类文件中的,实例变量可见度
        
        
        Person *person3 = [Person alloc];
        
        person3 = [person3 init];
        
        // Person *person3 = [[Person alloc] init]
        
       // 实例变量赋值
        
        
        person3->_name = @"zhang";
        
        person3->_age = 20;
        
        person3->_number = 1;
        
       // person3 ->_weight = 50.f; weight 是私有的,不能直接访问;
        
        [person3 infomation]; // 对象 - 方法
        
        
        // 实例变量的取值
        
        NSLog(@"name:%@, age:%d, number:%ld ", person3->_name, person3->_age, person3->_number);
        
        [person2 infomationOfPerson:person3];// 向对象 2 输出参数(对象三)的信息
        
        
               
        
        
        
        
        
        
        
        
        
        
        
    
    }
    
    
    
   
    
   
    
    return 0;
}
