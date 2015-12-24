//
//  Person.m
//  OC08_内存2
//
//  Created by dllo on 15/12/10.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "Person.h"

@implementation Person


- (void)dealloc{

    [_name release];
    
    [_sex release];

    [super dealloc];

}

// 实现协议方法(NSCoping协议方法) zone 区域大小

- (id)copyWithZone:(NSZone *)zone{

    Person *per = [[Person allocWithZone:zone]init];
    
    per.name = self.name;
    
    per.age = self.age;
    
    per.sex = self.sex;
    
    return per;

}



@end
