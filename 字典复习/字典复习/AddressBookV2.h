//
//  AddressBookV2.h
//  字典复习
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Contact.h"

@interface AddressBookV2 : NSObject




// 用于存放联系人的字典

@property (nonatomic, retain)NSMutableDictionary *dic;



// 添加联系人 将contact 的 .h 头文件放到 v2.h


// 添加联系人

- (void)addContace:(Contact *)con;

// 显示联系人

- (void)listAllContact;


// 显示某个分组下得所有联系人


- (void)listForGroup: (NSString *)group;








@end
