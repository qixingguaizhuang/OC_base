//
//  addressBook.h
//  OC_09类的扩展(类目_扩展_代理)
//
//  Created by dllo on 15/12/10.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>


@class Contact;// 声明一个类,告诉下面的声明,不报错

//声明属性和方法,外部可以看到使用这些属性和方法

@interface addressBook : NSObject

- (void)addContact:(Contact *)con;





@end
