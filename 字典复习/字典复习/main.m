//
//  main.m
//  字典复习
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Fraction.h"

#import "AddressBook.h"

#import "Contact.h"

#import "AddressBookV2.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
    
#pragma mark --- 复习1:分数
        
#if 0
        // 创建对象
        
        Fraction *fr1 = [[Fraction alloc] initWithNum:1 deno:3];
        
        Fraction *fr2 = [[Fraction alloc] initWithNum:2 deno:5];
        
        
        // 使用对象
        
       [fr2 addFraction:fr1];
        
        
        // 需要有个返回值对象接收,打印,返回一个 fraction 类的结果.
        
       Fraction *addFra = [fr2 addFraction:fr1];
      
       NSLog(@"%ld / %ld", addFra.num, addFra.deno);
        
        
#endif
        
#pragma mark  - 复习 联系人
        
#if 0
        
        
// 涉及到两个类:  AddressBook(通讯录类) ,   Contact (联系人类)
        
        
// 创建通讯录对象
        
        AddressBook *ab = [[AddressBook alloc] init];
        
// 创建联系人对象(2个)
        
        
        Contact * con1 = [[Contact alloc] initWithName:@"Zhangsan" phoneNumber:@"12345"];
        
        Contact * con2 = [[Contact alloc] initWithName:@"Lisi" phoneNumber:@"23423435"];
        
        Contact *con3 = [[Contact alloc] initWithName:@"wan" phoneNumber:nil];
        
//        Contact *con4 = [[Contact alloc] initWithName:@"zhang" phoneNumber:1233w34233432];
        
        
//     .h   // 重新开一个空间初始化, 指针先指向过来,下面赋值后,在将指向这里的指针指向下面的赋值地址.如果不添加初始化开个空间,那么指针直接指向了空,将无法调用方法,指不回去了. 需要先指向一个空间  
//        
//        ab.arr = [NSMutableArray array]; // 数组指针指向一块空得地方并且初始化
        
        
        
        
//使用通讯录对象方法
        
        // 添加联系人
        
        [ab addContact:con1];
        
        [ab addContact:con2];
        
        [ab addContact:con3];
        
        
      // 显示所有联系人
        
        
        [ab listAllContacts];
        
        
      // 删除指定联系人
        
        [ab deleteContact:con1];
        
        [ab listAllContacts];
        
        
        
        
#endif
        
        
        
#pragma mark --通讯录(中等难度) 
      
#if 0

// 字典
// 创建通讯录对象
        
        AddressBookV2 *abv2 = [[AddressBookV2 alloc]init];
        
        
        
        Contact * con1 = [[Contact alloc] initWithName:@"Zhangsan" phoneNumber:@"12345"];
        
        Contact * con2 = [[Contact alloc] initWithName:@"Lisi" phoneNumber:@"23423435"];
        
        Contact *con3 = [[Contact alloc] initWithName:@"wan" phoneNumber:nil];
        
        Contact *con4 = [[Contact alloc] initWithName:@"zhang" phoneNumber:@"123334233432"];
        
        
// 对象方法
        
        [abv2 addContace:con1];
        
        [abv2 addContace:con2];
        
        [abv2 addContace:con3];
        
        [abv2 addContace:con4];
        
        [abv2 listAllContact];
        
        
        
/*显示某个分组下得所有联系人**/
        
    
    
        [abv2 listForGroup:@"z"];
    
        
#endif
        
    
#pragma mark - 练习 :省市区
        
        
        NSString *file = [NSString stringWithContentsOfFile:@"/Users/dllo/Desktop/oc基础/字典复习/字典复习/area副本.txt" encoding:NSUTF8StringEncoding error:nil];
        
        NSLog(@"%@",file);
        
    
    // 将字符串进行截取,按照  \n  截取
        
        
        NSArray *arr = [file componentsSeparatedByString:@"\n"];
        
        
        // 省/市/区 空指针
        
        NSString *provinceName = nil;
        
        NSString *cityName = nil;
        
        NSString *areaName = nil;
        
        // 创建中国的数组
        
        
        NSMutableArray *chinaArr = [NSMutableArray array];
        
        
        // 遍历数组 / line 字符串
        
        for (NSString *line in arr) {
            
            if (![line hasPrefix:@" "]) { // 字符串不是以空格开头,说明就是省名
                
                
                provinceName = line;// 相当于记录省名
                
                //创建省字典,加入到中国数组中
                
                NSMutableArray *cityArr = [NSMutableArray array];
                
                NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:provinceName,@"省名",cityArr,@"市", nil];
                
                [chinaArr addObject:proDic];
        
                
            }else if (![line hasPrefix:@"    "]){ // 创建市字典,说明是市名.如果是两个空格
                
                cityName = line; //记录市名
                
                // 创建市字典,添加在对应省的市数组中
                
                NSMutableArray *areaArr =  [NSMutableArray array];
                
                
                NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:cityName,@"市名",areaArr, @"区",nil];
                
                // 从中国数组里面找出对应省得市数组
                
               NSMutableArray *tempArr = [[chinaArr lastObject]objectForKey:@"市"];
                
               [tempArr addObject:cityDic];
                

    
          }else{
          
              areaName = line; // 记录下区名
              
              // 找出区   所在省的市数组的相应市的区的数组
              
              NSMutableArray *tempArr = [[chinaArr lastObject]objectForKey:@"市"];
              
              NSMutableArray *tempAreas = [[tempArr lastObject]objectForKey:@"区"];
              
              [tempAreas addObject:areaName];
              
          
          
          
          
          }
            
            
            
            

            
            
        }
    
    
    
    
    
    
    
    
    }
    return 0;
}
