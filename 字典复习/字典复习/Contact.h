//
//  Contact.h
//  字典复习
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, retain) NSString *name;

@property (nonatomic, retain) NSString *phoneNumber;

@property (nonatomic, retain) NSString *address;

@property (nonatomic, retain) NSString *group;


- (instancetype)initWithName:(NSString *)name

                 phoneNumber:(NSString *)phoneNUmber;
















@end
