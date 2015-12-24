//
//  main.m
//  OC09_代理设计模式
//
//  Created by dllo on 15/12/11.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>



#import "Mother.h"

#import "Teacher.h"

#import "Student.h"

#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        
#pragma mark - 知识点 1 代理设计模式
        
        
//场景设定:
        
/*
  1.委托人: 母亲对象;
         
  2.受委托人(代理人):教师对象,学生对象,医生对象.
         
  协议: 1.照看小孩 2.做饭 3.洗衣服
         
  母亲对象最终要指定一个对象 delegate (代理人)
         
  当母亲对象, 执行付款方法是,代理人开始执行协议中的方案;

 
 
*/
        
        
        
        Mother *mother = [[Mother alloc] initWithName:@"Marry"];
        
        Teacher *techer = [[Teacher alloc] initWithName:@"Mr.cheng"];
        
        Student *student = [[Student alloc] initWithName:@"xiaoming"];
        
        Doctor *doctor = [[Doctor alloc] initWithName:@"zhangsna"];
        
        
        // 第一步: 目前声明协议 详见 mother.h 文件
        
        
        // 第二步:母亲声明一个 delegate 属性(协议),目的是以后指定代理人(赋值的意思) 详见 Mother.h 文件.
        
        // 第三步:(受委托人)教师,学生,医生 签订协议 详见 各分类 加上这个协议,表示签协议 <BaomuDelegate>
        
        // 第四步: 母亲指定一个代理人
        
         mother.delegate = student;
        
        // 第五步:代理人实现方法,详见student.m文件
        
        
        // 第六步:在适当的时机,代理人调用协议执行方法(即照顾小孩,做饭.....) 我们选中的时机是,母亲付钱(方法),代理人开始执行协议方法;详见 mother 类方法 payMoney 方法
        
        [mother payMoney];
        
        
        
        
        
        
        
    }
    return 0;
}
