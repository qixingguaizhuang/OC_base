//
//  Person.m
//  OC09_代理设计模式
//
//  Created by dllo on 15/12/11.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name{

    self = [super init];
    
    if (self) {
        
        _name = [name copy];
        
    }

    return self;
}




@end
