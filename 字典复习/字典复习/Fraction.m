//
//  Fraction.m
//  字典复习
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction


- (instancetype)initWithNum: (NSInteger)num deno:(NSInteger)deno{
    
    
    self = [super init];

    if (self){
    
        _num = num;
        
        _deno = deno;
    
    }
    
    return self;

}


// [ 自己 方法] self

- (Fraction *)addFraction:(Fraction *)fraction{
    

    // 创建一个新的frac 新的数值, 开辟空间

    Fraction *newFrac = [[Fraction alloc] init];
    
    // 新分数的分子
    
    newFrac.num = self.num * fraction.deno + self.deno * fraction.num;
    
    
    // 新分数分母
    
    newFrac.deno = self.deno * fraction.deno;
    
    return newFrac;

}















@end
