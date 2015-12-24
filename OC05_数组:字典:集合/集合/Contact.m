//
//  Contact.m
//  集合
//
//  Created by dllo on 15/12/4.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "Contact.h"

@implementation Contact


-(instancetype)initWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber{

    self = [super init];
    
    if (self) {
        
        _name = name;
        
        _phoneNumber = phoneNumber;
        
        // 根据名字,可以得到组名(首字母)
        
        _group =  [name substringToIndex:1];
        
    }

    return self;

}


-(void)info{


    NSLog(@"%@, %@", _name, _phoneNumber);

}






@end
