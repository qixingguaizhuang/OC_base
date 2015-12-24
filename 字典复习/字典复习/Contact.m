//
//  Contact.m
//  字典复习
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "Contact.h"

@implementation Contact


- (instancetype)initWithName:(NSString *)name

                 phoneNumber:(NSString *)phoneNUmber{


    self = [super init];
    
    
    if (self) {
        _name = name;
        
        _phoneNumber = phoneNUmber;
        
        // 组名赋值                               // 首字母变大写
        self.group = [[name substringToIndex:1] uppercaseString];
    }



    return self;

}








@end
