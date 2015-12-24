//
//  Person.m
//  OC02_方法
//
//  Created by dllo on 15/12/1.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "Person.h"

@implementation Person

//[便利构造器方法] 实现

+ (instancetype)personWithName:(NSString *)name
                           age:(NSInteger )age
                           sex:(NSString *)sex{


    Person *per =  [[Person alloc] initWithName:name age:age sex:sex]; // 开空间 初始化 赋值 ↑
    
    return per;


}




//不带参数

+ (instancetype)person{


    Person *per = [[Person alloc] init];
    
    return per;


}





//初始化方法实现 1 个参数

-(instancetype)initWithName:(NSString *)name{
    
    
    // self 关键字,指的是当前类的对象(Person 的对象 per3 的名字)

    self = [super init];
    
    if (self){
        
     _name = name;
        
    }
    
    return self;

}

//初始化赋值


- (instancetype)initWithName:(NSString *)name
                         age:(NSInteger)age
                         sex:(NSString *)sex{


    self = [super init];
    
    if(self){
    
        _name = name;
        
        _age = age;
        
        _sex = sex;
    
    }
    
    return self;

}





- (void)setAge:(NSInteger)age{
    _age = age;
    
}

- (NSInteger )age{
    return _age;

}



- (void)setSex:(NSString *)sex{
    _sex = sex;
}

- (NSString *)sex{
    
    return _sex;

}





- (void)setName:(NSString *)name{

    _name = name; // 相当于赋值,实际上是,指向参数那个地方

}

- (NSString *)name{
    
    return _name; //实例变量,是 _name
}



-(void)infomation{

    NSLog(@"name:%@, age:%ld,sex:%@", _name, _age, _sex );

}

-(void)study{

    NSLog(@"我要学习");
}




@end
