//
//  addressBook.m
//  OC_09类的扩展(类目_扩展_代理)
//
//  Created by dllo on 15/12/10.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "addressBook.h"
#import "Contact.h"
#import "NSString+First.h"

// 类的延展,注意延展后边的括号里面是空的. 类的延展里面和 .h 文件写法一样.

//延展里面的属性,外部看不到

    @interface addressBook ()

    @property (nonatomic, retain) NSMutableDictionary *dic;

    @end




// 方法的实现部分

    @implementation addressBook

// 字典初始化

- (instancetype)init{

    self = [super init];
    
    if (self) {
        self.dic = [NSMutableDictionary dictionary];
    }
    
    return self;
    
}

- (void)addContact:(Contact *)con{

   NSString *group = [con.name firstCapChar];

   NSMutableArray *arr = [self.dic objectForKey:group];

    if (arr == nil) {
        arr = [NSMutableArray array];
        [arr addObject:con];
        [self.dic setObject:arr forKey:group];
    }else{
    
        [arr addObject:con];
    
    }

}



@end
