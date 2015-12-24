//
//  Person.h
//  OC02_方法
//
//  Created by dllo on 15/12/1.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

{

    NSString *_name;
    
    NSInteger _age;
    
    NSString *_sex;

}



//[初始化方法]!!!!!!! 初始化同时赋值



- (instancetype)initWithName:(NSString *)name; //可以只带一个实例变量,也可以俩,根据需求


- (instancetype)initWithName:(NSString *)name
                         age:(NSInteger)age  //(with 可省略)
                         sex:(NSString *)sex;



//[便利构造器方法] 这是一种方法.(是 类 方法,类调用此方法);类名放前面

+ (instancetype)personWithName:(NSString *)name
                           age:(NSInteger )age
                           sex:(NSString *)sex;





+ (instancetype)person; //不带参数





//(instancetype) 实例类型












-(void)infomation;

-(void)study;


// setter 方法: 目的,给一个实例变量赋值 // 是要是对象类型都加 *

// 命名 取消下划线,首字母大写


- (void)setName:(NSString *)name;

- (void)setAge:(NSInteger)age;

- (void)setSex:(NSString *)sex;




// getter 方法: 目的,取出一个实例变量的值;

// 取值类型,和实例变量中的类型一致

- (NSString *)name;

- (NSInteger)age;

- (NSString *)sex;







@end
