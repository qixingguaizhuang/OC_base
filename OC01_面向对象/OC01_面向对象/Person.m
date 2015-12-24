//
//  Person.m
//  OC01_面向对象
//
//  Created by dllo on 15/11/30.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "Person.h"

//  .m 文件实现方法;

//  .h 中声明的方法在 .m 中必须实现;

//  方法的实现在相应的 @implementation 和 @end 之间;


@implementation Person

- (void)sayHello {


    NSLog(@"hello, world!");
    
    //@ 相当于对象的意思 , NSLog, OC 中的输出函数,注意 () 括号里面的 @"" 开头,输出 "" 之间的内容
    
    //NSLog 输出内容会自动换行(后面自动加一个换行)

}


- (void)infomationOfPerson:(Person *)person {

    NSLog(@"name:%@, age:%d, number:%ld, weighe:%.2f",person->_name,person->_age,person->_number,person->_weight); // -> 指向符


}



- (void)infomation{

    NSLog(@"name:%@, age:%d, number:%ld, weight:%.2f", _name, _age, _number, _weight);

}





@end
