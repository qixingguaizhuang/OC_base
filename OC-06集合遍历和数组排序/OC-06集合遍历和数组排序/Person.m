//
//  Person.m
//  OC-06集合遍历和数组排序
//
//  Created by dllo on 15/12/8.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)initWithName:(NSString *)name age:(NSInteger)age sex:(NSString *)sex;{

    self = [super init];
    
    if (self) {
       
        self.name = name;
        
        self.age = age;
        
        self.sex = sex;
    }

    return self;


}

/** 声明一个按照姓名升序排序的方法. */

- (NSComparisonResult)compareWithNameUP:(Person *)anotherPerson{


    return [self.name compare:anotherPerson.name];


}

/** 声明一个按照姓名 #降序# 排序的方法. */

- (NSComparisonResult)compareWithNameDown:(Person *)anotherPerson{

    return [self.name compare:anotherPerson.name] * -1; // - 1 将升序变为降序

}



/**根据年龄进行 #升序#  排序方法大   */


- (NSComparisonResult)compareWithAgeUP:(Person *)anotherPerson{



    if (self.age >anotherPerson.age){
    
        return NSOrderedDescending;
    
    }else if (self.age < anotherPerson.age){
    
        return NSOrderedAscending;
        
    }else{
    
    
        return NSOrderedSame;
    
    }



}





















@end
