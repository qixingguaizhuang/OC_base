//
//  main.m
//  OC-06集合遍历和数组排序
//
//  Created by dllo on 15/12/8.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, const char * argv[]) {
   
    
    
    
#pragma mark 知识点1 for 遍历集合
    
#if 0
    
    NSArray *array = @[@"zhang",@"wang",@"li"];
    
    for (int i = 0; i < array.count;i++){
    
        NSLog(@"%@",array[i]);
  
    }
    
 // 字典
    
    NSDictionary *dic = @{@"name":@"tom",
                          
                          @"age":@"18",
                          
                          @"sex":@"male"
                          
                          };
    
    
    NSArray *keys = dic.allKeys;
    
    for(int i = 0; i< keys.count; i++){
    
        NSString *key = keys[i];
        
        NSString *str = [dic objectForKey:key];
        
        NSLog(@"%@",str);
    
    
    }
    
    
   // 集合
    
    
    NSSet *set = [NSSet setWithObjects:@"zhang",@"wang",@"li", nil];
    
    // 取出所有对象,变为数组
    
    NSArray *temp = set.allObjects;
    
    for (int i = 0; i < temp.count; i++) {
        NSLog(@"%@",temp[i]);
    }
    
    
#endif
    
    
    
    
    
#pragma mark 知识点2  NSEnumerator 枚举器
    
    
#if 0
    
    
    NSArray *array = @[@"wang",@"li",@"zhang"];
    
    // 数组,字典,集合都有一个枚举器方法,返回的是枚举器对象
    
    
    // 正向枚举
    
    NSEnumerator *enumerator = [array objectEnumerator];
    
    id objecet;
    
    while (objecet = [enumerator nextObject]) {
        
        NSLog(@"%@",objecet);
    }
    
    
    // 反向枚举
    
    
    NSEnumerator *reverse = [array reverseObjectEnumerator];
    
    id result2; //
    
    while (result2 = [reverse nextObject]) {
        
        NSLog(@"%@", result2);
    }

    
    
    //枚举 字典
    
    
    NSDictionary *dic = @{@"name":@"tom",
                           @"age":@"20",
                           @"sex":@"male"};
    
    NSEnumerator *enumDic = [dic objectEnumerator];
    
    id objecetInDic;
    
    while (objecetInDic = [enumDic nextObject]) {
        NSLog(@"%@",objecetInDic);
    }
    
    
    
    
    // 数组
    
    
    NSSet *set = [NSSet setWithObjects:@"zhang",@"wang",@"li", nil];
    
    NSEnumerator *enumSet = [set objectEnumerator];
    
    id objectInSet;
    
    while (objecetInSet = [enumSet nextObject]) {
        NSLog(@"%@",objecetInSet);
    }
    
    

    
    
    
#endif
    

    
#if 0
    
#pragma mark 知识点3  for ..in 遍历集合(重点)
    
    // 重点:
    
    //1.对于数组,forin 枚举的是对象;
    
    //2,对于字典,forin 枚举的是key;
    
    //3,对于结合,forin 枚举的是对象;
    
    
    for (<#type *object#> in <#collection#>) {
        <#statements#>
    }
    
  
#endif
#pragma mark 知识点4 数组排序(重点)
    
   

#pragma mark ** 练习 sortedArray
    

   #if 0
    NSArray *arr = @[@"zhang",@"wang",@"lili"];
    
    // 创建排序描述对象 降序
    
    NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO];
    
 
    // 调用数组的排序方法
   // NSArray *temp = @[descriptor]                  // temp
    
   NSArray *newArr = [arr sortedArrayUsingDescriptors:@[descriptor]];
    
    
    // 遍历输出
    
    
    for (NSString *string in newArr) {
        NSLog(@"%@",string);
    }
    

    
    
    Person *per1 = [[Person alloc] initWithName:@"zhangsan" age:20 sex:@"male"];
    
    Person *per2 = [[Person alloc] initWithName:@"xiaoming" age:18 sex:@"male"];
    
    Person *per3 = [[Person alloc] initWithName:@"xiaoxue" age:22 sex:@"female"];
    
    Person *per4 = [[Person alloc] initWithName:@"xiaoli" age:17 sex:@"female"];
    
    Person *per5 = [[Person alloc] initWithName:@"tom" age:18 sex:@"female"];
    
    
    NSArray *arr2 = @[per1, per2, per3, per4, per5];// 数组类型
    
    // 需求:按照年龄升序排序,如果年龄相同,再按照姓名升序排序;
    
    
    NSSortDescriptor *name = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES ];
    
    NSSortDescriptor *age = [NSSortDescriptor sortDescriptorWithKey:@"age" ascending:YES];
    
    
    
    NSArray *newArr1 = [arr2 sortedArrayUsingDescriptors:@[age, name]];
    
    for (Person *per in newArr1) {
        NSLog(@"%@ , %ld",per.name, per.age);
    }
                        
    
    
    // 其他的数组排序方法
    
#endif
    
    
#pragma mark ** sortedArrayUsingSeletector
    
#if 0
    // 数组中都是字符串对象
    
    NSArray *arr = @[@"zhangsan",@"lisi",@"wang"];
    
    
    // @param SEL 方法选择器,@selector (方法名) ,方法的返回值必须是 NSComparisonResult (比较)
    
    // 注意,这个方法是数组中元素的方法,所以需要数组的排序 ;
    
    NSArray *NewArr = [arr sortedArrayUsingSelector:@selector(compare:)];
    

    for (NSString *string in NewArr) {
        NSLog(@"%@",string);
    }
    
#endif
    // 2. 数组中都是 peson 对象,按照 name 升序排序(自定义类)
    
#if 0
    
    Person *per1 = [[Person alloc] initWithName:@"zhangsan" age:20 sex:@"male"];
    
    Person *per2 = [[Person alloc] initWithName:@"xiaoming" age:18 sex:@"male"];
    
    Person *per3 = [[Person alloc] initWithName:@"xiaoxue" age:22 sex:@"female"];
    
    Person *per4 = [[Person alloc] initWithName:@"xiaoli" age:17 sex:@"female"];
    
    Person *per5 = [[Person alloc] initWithName:@"tom" age:18 sex:@"female"];
    
    
    NSArray *arr2 = @[per1, per2, per3, per4, per5];

    
    
    //姓名 升序
    
    NSArray *NewArr2 = [arr2 sortedArrayUsingSelector:@selector(compareWithNameUP:)];
    
    for (Person *per in NewArr2) {
        NSLog(@"%@",per.name);
    }

    
    // 姓名 降序
    
    
    NSArray *NewArr3 = [arr2 sortedArrayUsingSelector:@selector(compareWithNameDown:)];
    
    for (Person *per in NewArr3) {
        NSLog(@"%@",per.name);
        
  
        
    }

    
    
    // 根据年龄 进行升序
    
    
    NSArray *ageUP = [arr2 sortedArrayUsingSelector:@selector(compareWithAgeUP:)];
    
    
    for (Person *per in ageUP) {
        NSLog(@"%ld",per.age);
    }
    

    
#endif
    
    
#pragma mark ** sortedArrayUsingComparator
    
  
#if 1
        
        
    NSArray *arr = @[@"wang",@"zhang",@"lisi"];
    
    NSArray *newarr = [arr sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [obj1 compare:obj2];// 代码块
    }];
    
    
    for (NSString *string in newarr) {
        NSLog(@"%@",string);
    }

    
    /// 构造类
    Person *per1 = [[Person alloc] initWithName:@"zhangsan" age:20 sex:@"male"];
    
    Person *per2 = [[Person alloc] initWithName:@"xiaoming" age:18 sex:@"male"];
    
    Person *per3 = [[Person alloc] initWithName:@"xiaoxue" age:22 sex:@"female"];
    
    Person *per4 = [[Person alloc] initWithName:@"xiaoli" age:17 sex:@"female"];
    
    Person *per5 = [[Person alloc] initWithName:@"tom" age:18 sex:@"female"];
    
    NSArray *arr2 = @[per1, per2, per3, per4, per5];
   
    // 按照 person 的name 升序排序
    
    NSArray *newarr2 = [arr2 sortedArrayUsingComparator:^NSComparisonResult(Person*  _Nonnull obj1, Person*  _Nonnull obj2) {
        
        return [obj1.name compare:obj2.name ];
    }];
    
    
    for (Person *per in newarr2) {
        NSLog(@"%@", per.name);
    }
 
    // 按照person的 age 降序排序
    NSArray *ageDown = [arr2 sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        
        Person *per1 = obj1;
        Person *per2 = obj2;
        
        if (per1.age > per2.age) {
            return NSOrderedAscending;// 升序
        }else if (per1.age < per2.age){         //需求降序,前一个小于后一个,两个数掉换一下 Descending 改变if的排序 降序 + dssending (降序) 变为升序 ; 升序(<) + dssending (降序) 变为降序
            return NSOrderedDescending;// 降序
        }else{
        return NSOrderedSame;
        }
        
    }];
    
    for (Person *per in ageDown) {
        NSLog(@"%ld", per.age);
    }
    
#endif
    

    
#pragma mark - 知识点 4 : 可变数组排序
    
   
#if 0
    
    NSMutableArray *mArr = @[@"wang",@"zhang",@"lisi"].mutableCopy;
    
    // 升序排序
    
    [mArr sortUsingSelector:@selector(compare:)]; // 数组本身进行了交换, 直接看方法是否有返回值,有返回值为不可变数组
    
    
#endif
    
    
    
#if 0
#pragma mark - 时间就是金钱
    
    // API : NSDate
    
    
    
   

 
    // 对一百万个样本进行排序,花费时间多少?
    
    NSMutableArray *arr = [NSMutableArray array ];
    
    for (int i = 0; i < 10000; i++){
    
    
        NSString *str = [NSString stringWithFormat:@"ud",  arc4random()];
        

        [arr addObject:str];
    
    }
    
    // 计算遍历时间
    
    NSDate *startdate = [NSDate date];
    
    NSLog(@"%@", startdate);
    
    
    //数组排序
    
    //
    
    [arr sortedArrayUsingSelector:@selector(compare:)];
    
    
    //for 循环
//
//    
//    for (int i =0; i<arr.count - 1; i++) {
//        for (int j = 0; j<arr.count - 1- i; j++) {
//            if ([arr[j]intValue ]> [arr[j+1]intValue]) {
//                [arr exchangeObjectAtIndex:j withObjectAtIndex:j+1];
//            }
//        }
//    }
//
    
  
    NSDate *enddate = [NSDate date];
    
    NSLog(@"用时:%@", enddate);
   
    
    // 计算两个时间对象的时间差
    
    NSLog(@"%f", [enddate timeIntervalSinceDate:startdate]);
    
    
#endif
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
