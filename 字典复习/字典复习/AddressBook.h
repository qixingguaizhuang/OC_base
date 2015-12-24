//
//  AddressBook.h
//  字典复习
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Contact.h"  // 将 contact 的 .h 放到addressbook 头文件中 contact 的子类

@interface AddressBook : NSObject



@property (nonatomic, retain) NSMutableArray *arr; // 用于存放联系人对象的数组



#pragma mark __ 功能(方法)

// 1. 添加联系人功能 (联系人对象)

- (void)addContact:(Contact *)con;



// 2. 显示所有联系人 (功能)


- (void)listAllContacts;


// 3.删除联系人 (功能/方法)



- (void)deleteContact:(Contact *)con;

















@end
