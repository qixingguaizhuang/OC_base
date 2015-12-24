//
//  Student.m
//  OC02_方法
//
//  Created by dllo on 15/12/1.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "Student.h"

@implementation Student


// 重写父类方法: study 方法  // 先看自己有没有,不会在去 person 找,如果自己有


- (void)study{
    
    [super study]; // surper 的使用,调父类的方法. surper 不是对象,是编译器指令,给 surper 发信息,是调用父类中此方法的实现.

    NSLog(@"数学");

}





- (void)setSchool:(NSString *)school{
    _school = school;

}

-(NSString *)school{
    return _school;

}


- (void)setNumber:(NSInteger)number{
    _number = number;

}

-(NSInteger)number{

    return _number;

}




//自定义初始化方法 实现

-(instancetype)initWithName:(NSString *)name
                        age:(NSInteger)age
                        sex:(NSString *)sex
                     school:(NSString *)school
                     number:(NSString *)number{


    self = [super initWithName:name age:age sex:sex]; //继承的体现
    
    if(self){
    
        _school = school;
        
        _number = number;
    
    }
    
    return self;


}




@end
