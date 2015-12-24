//
//  Person.h
//  OC-03属性
//
//  Created by dllo on 15/12/2.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

//声明属性

//@property NSString *name;
//
//@property NSInteger age;
//
//@property NSString *sex;


// 属性的特性


@property (readwrite) NSString *name;// readwrite 可读性特性,有四个选项: readonly, readwrite, setter=, getter= 默认是 readwrite 可以不添加



@property (readwrite, nonatomic)NSInteger age;//nonatomic 原子性属性,有两个选项, atomic (原子性) 和 nonatomic (非原子性),其中原子性 atomic 可以保证在多线程下的绝对安全,但占用系统资源.通常使用 nonatomic 即可,默认是 atomic 原子性的.


@property (readwrite, nonatomic, retain) NSString *sex; // retain ,语义设置,有三个选项 assign ,retain, copy 不同的语义选项 setter 和 getter 方法实现不同,但是规则非对象类型(int . float)使用 assign ,对象类型的使用 retain ,对象类型同时想得到副本,使用 copy ,默认使用的时 assign. nsinteger 不是对象,使用 assign


@property (nonatomic, assign) float weight;

@property (nonatomic, retain) NSString *hobby;















@end
