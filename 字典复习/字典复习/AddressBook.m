//
//  AddressBook.m
//  字典复习
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook


// 重写 init 初始化方法,目的: 属性数组初始化


- (instancetype) init
{

    self = [super init];
    
    if (self) {
        
        self.arr = [NSMutableArray array];
        
        //ab.arr = [NSMutableArray array]; // 数组指针指向一块空得地方并且初始化

    
    }

    return self;
}

 //NSMutableArray *arr = [NSMutableArray array]; // 数组指针指向一块空得地方并且初始化,如果不初始化,数组将指向无底洞空,所以为其初始化开空间,构造器方法


- (void)addContact:(Contact *)con{

// 将联系人参数放到数组中
    [self.arr addObject:con]; //self.arr 如果上面不开空间初始化,arr 指向空, 空无法再添加

}


// 遍历数组,将所有联系人信息输出

- (void)listAllContacts{


    for (Contact *con in self.arr ) {
        NSLog(@"name:%@ , phonenumber:%@, address:%@", con.name, con.phoneNumber, con.address);
    }


}



// 删除联系人

-(void)deleteContact:(Contact *)con{
    
// 遍历数组,找到符合条件的对象
    
    NSMutableArray *tempArr = [NSMutableArray array];
    
    for (Contact *ConInArr in self.arr) {
        
        if ([con.name isEqualToString:ConInArr.name]) {
            
            [tempArr addObject:ConInArr]; // 符合条件的放到数组里 conInArr
        }
        
    }
   
    [self.arr removeObjectsInArray:tempArr];

}


// 从数组中删除联系人对象










@end
