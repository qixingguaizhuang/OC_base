//
//  main.m
//  OC07_内存管理
//
//  Created by dllo on 15/12/9.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
  
  
#if 0
    
#pragma mark - 知识点 1  影响内存引用计数的方法
    
//增加: alloc, retain, copy;
    
//减少: release, autorelease;
    
//查看引用计数: retainCount.切记此方法不要在工程中调用,因为显示的结果有时是错误的.
    

    //创建 person 类
    
    
    Person *per1 = [[Person alloc] init];
    
    NSLog(@"%ld", [per1 retainCount]); //1
    
    [per1 retain];
    
    NSLog(@"count:%ld",[per1 retainCount]);//2
    
    [per1 release];
    
    NSLog(@"count:%ld", [per1 retainCount]);//1
    
    [per1 release]; // 注意: 此时 per1 的引用计数应该为 0 ,但是 retainCount 方法显示的是 1 ,所以说此方法显示不准确,不靠谱;
    
    NSLog(@"count:%ld", [per1 retainCount]);
    
    
    Person *per2 = [[Person alloc] init];
    
    [per2 retain];// 计数: 2
    
    @autoreleasepool {
        
        [per2 autorelease];
        
        
    
        
        // 出了自动释放池之后,计数才减一
        NSLog(@"%ld", [per2 retainCount]);

    }

    NSLog(@"%ld", [per2 retainCount]);
    
  
#endif
    
    
    
#pragma mark - 知识点 1 属性的内存管理
    
    
    // 属性的内存管理主要是 setter 的内存实现细节.
    
    // 详见 Person 类的 _name 的 setter 方法;
    
    //                _age 的 setter 方法;
    
    // 总结: setter 方法的具体实现,不用开发者编写,属性自动实现. 系统会采用哪种 setter 实现方式呢? 由定义属性时的语义字段决定(assign, retain, copy)
    
    
    
#pragma mark - 知识点 3 重写 dealloc 方法
    
    
    // 为什么要重写 dealloc 方法
    
    // 原因:对象类型的实例变量(_name), 它的 setter 方法会引起引用计数多 1 , 所以要在适当的时候,将引用计数 - 1 .(适当的时候,就是在整个对象 (per1) 释放之前,所以重写 dealloc 方法); 详见 Person 类.
    
    
    
#pragma mark - 知识点 4 属性的 getter 方法实现
    
    
    // 详见 Person 的 _name 的 getter 方法.
    
    //注意: 当同时编写属性的 setter 和 getter 方法时,系统会提示实例变量不识别,解决方法: 加上 @synthsize 属性 = _属性名  让系统识别
    
    
#pragma mark - 知识点 5 便利构造器的内存问题
    
    
    //详见 Person 类
    
    
#pragma mark - 知识点 6 init 初始化方法内部实例变量的写法问题
    
    
    // 详见 Person 类.
    
    
#pragma mark - 知识点 7 kvc(key - Value - coding)
    
    
    // 创建一个: Student 类,父类为 NSobject
    
    // 只声明实例变量,不声明属性,没有 setter getter 方法
    
    
    Student *stu1 = [[Student alloc] init];
    
    // 对实例变量访问 使用 kvc 实现实例变量的间接访问
    
    [stu1 setValue:@"Tom" forKey:@"name"];
    
    [stu1 setValue:@"20" forKey:@"age"];
    
    [stu1 setValue:@"male" forKey:@"sex"];
    
    
    
    //keyPath 使用
    
    
    
    
    // 使用 kvc 取值
    
    NSLog(@"name:%@", [stu1 valueForKey:@"name"]);
    
    NSLog(@"age:%@", [stu1 valueForKey:@"age"]);
    
    NSLog(@"sex:%@", [stu1 valueForKey:@"sex"]);
    
    
    
    
    Student *stu2 = [[Student alloc]init];
    
    
    NSDictionary *dic =@{@"name":@"zhangsan",
                         @"age":@20,
                         @"sex":@"male"};
    
    
    // 使用 kvc 将字典中的值(同时)赋给对象的(多个)实例变量
    
    [stu2 setValuesForKeysWithDictionary:dic];
    
    NSLog(@"%@", [stu2 valueForKey:@"name"]);
    
    NSLog(@"%@", [stu2 valueForKey:@"sex"]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
