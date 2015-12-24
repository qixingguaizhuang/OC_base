//
//  main.m
//  OC_09类的扩展(类目_扩展_代理)
//
//  Created by dllo on 15/12/10.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+AddMethod.h"
#import "NSString+First.h"
#import "addressBook.h"
#import "Contact.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    
    
#pragma mark 知识点 1 category (类目,分类)
        
// 类目的作用:
        /*
         1.编写 .h 文件时,将众多方法进行分类,以便查看接口时方便(如系统类的 .h 文件)
         
         2.扩展类的方法,一般针对没有源代码的类,(如系统 NSString 类等)
         
         3.在不改变原来类内容的基础上,可以为类增加一些方法;
         
         注意:
         1.分类只能增加方法,不能增加成员变量;
         2.分类方法实现中可以访问原来类的声明的成员变量;
         3.分类可以重新实现原来类中的方法,但会覆盖掉原来类中的方法,会导致原来的方法没办法再使用;
         4.调用方法时,会优先去分类中查找,然后再去原来类中查找,再去父类中查找(分类优先级中的方法高于原类中的方法);调用优先级: 分类(最后参与编译的分类优先)--->原来类--->父类
         
         
         */
        
    
// 需求: 给 NSString 添加一个 sayHi 方法;
// 详见 类 目文件: NSString + AddMethod
    
    
        [NSString sayHi];
        
        
#pragma mark ** 练习
    
    
    //为NSString类扩展一个新的方法，要求获取字符串的首字母并且将该首字母大写。
    
    
    NSString *str = @"tom";
        
    NSLog(@"%@", [str firstCapChar]);
    
    
    
#pragma mark 知识点 2  类的延展 Extension
        
    //使用的延展的目的: 有一些属性的方法,类的内部实现需要, 但不希望外部访问.所以希望将这些属性和方法隐藏起来,即私有化. // 详见通讯录 addressBook 类 ->
        
  
      
     addressBook *ab = [[addressBook alloc] init];
        
     Contact *con1 = [[Contact alloc] init];
        
     con1.name = @"Tom";
        
     [ab addContact:con1];
        
        
    
    
    
    
    
    
    
    
    
    
    }
    return 0;
}
