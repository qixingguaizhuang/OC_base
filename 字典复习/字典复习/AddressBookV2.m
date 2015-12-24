//
//  AddressBookV2.m
//  字典复习
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "AddressBookV2.h"

@implementation AddressBookV2


// 重写 init 目的:字典初始化

- (instancetype)init{

    self = [super init];
    
    if (self){
    
        self.dic = [NSMutableDictionary dictionary];
        
        // 指针指向堆中的字典空间
    
    }

    return self;

}



// 添加到字典中相应分组的数组中


- (void)addContace:(Contact *)con{


    //1.获得联系人得组名
    
    NSString *key = con.group;
    
    //2.根据 key 在字典中获取对应的数组(value 值)(数组中有联系人的信息)
    
    NSMutableArray *mArr = [self.dic objectForKey:key];
    
    
    // 判断,如果 mArr 指针为空,说明字典中没有此分组
    
    if (mArr == nil) { // nil 表示空指针 NULL 也可以表示指针一般不用.
        
    // 创建key - value 对,添加到字典中
        
        //先创建一个可变数组
        
        mArr = [NSMutableArray array];
        
    // 联系人直接放进数组
        
        [mArr addObject:con];
        
    // 分组和联系人放到字典中
    
        [self.dic setObject:mArr forKey:key];
    
    }else { // 如果mArr指针不为空,说明数组存在,直接添加联系人
        
        //3. 将参数联系人加入到数组中
        
        [mArr addObject:con];
    
    }
    
  
  }

  // 显示所有联系人
    
    
- (void)listAllContact{
    
        //遍历字典
    
        for (NSString *key in self.dic) {
            
            // 指向 key 所对应的数组
            
            NSMutableArray *arr = [self.dic objectForKey:key];
            
            // 遍历数组
            
            for(Contact *con in arr)
            {
                NSLog(@"name:%@, phone:%@, address:%@",con.name , con.phoneNumber, con.address);
            }
            
        }
    
    }
    

/*显示分组下得联系人*/


- (void)listForGroup: (NSString *)group{
    
                                                  // 换成大写

    NSMutableArray *arr = [self.dic objectForKey:group.uppercaseString];
    
    for (Contact *con in arr) {
        NSLog(@"name:%@, phone:%@, address:%@", con.name, con.phoneNumber,con.address);
    }


}





@end
