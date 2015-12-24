//
//  main.m
//  集合
//
//  Created by dllo on 15/12/4.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Contact.h"

int main(int argc, const char * argv[]) {
    
    
    
#pragma mark - 知识点 1 数组
 
#pragma mark ** 不可变数组
    
    
#pragma mark * 创建对象
    
    
#if 0
    
    // init 方法创建对象
    
    NSArray *array = [[NSArray alloc] initWithObjects:@"黑龙江",@"大连",@"河北", nil];
    
    // 构造器创建对象
    
    NSArray *array2 = [NSArray arrayWithObjects:@"黑龙江",@"大连",@"河北", nil];
    
    
    // 字面量
    
    NSArray *array3 = @[@"黑龙江",@"大连",@"河北"];
    
    
#endif
    
    
    
#if 0
    
#pragma mark * 获取元素个数 API
    
    NSArray *array = @[@"大连", @"北京", @"哈尔滨"];
    
    NSLog(@"%ld",array.count);
    
    
    
    
#endif
    
    
    
#pragma mark *  获取数组中指定下标对应的元素(根据下标获取元素) API
    
#if 0
    
    
    NSArray *array = @[@"大连", @"北京", @"哈尔滨"];
    
    // 注意: 从数组中获取对象时,一定明确对象类型(ObjectType)
    
    NSString *city = [array objectAtIndex:1];
    
    NSLog(@"%@",city);
    
    
    
    // 字面量方式获取对象
    
    NSString *name = array[2];
    
    NSLog(@"name:%@",name);
    
    
#endif
    
    
    
#pragma mark * 用来判断数组中是否包含某一个给定的对象 API contain 包含
    
#if 0
    
    NSArray *array = @[@"大连",@"哈尔滨",@"北京"];
    
    if( [array containsObject:@"大连"]){
        
        NSLog(@"含有大连");
    
    }
    
#endif
    
    
#pragma mark * 获取数组元素对应的索引(获取元素所对应的下标值) API
    
#if 0
    
    NSArray *array = @[@"大连",@"哈尔滨",@"黑龙江"];
    
    [array indexOfObject:@"大连"];
    
    NSLog(@"%ld",[array indexOfObject:@"大连"]);
    
    
#endif
    
#pragma mark * 按照给定的字符串进行截取，将截取的多段字符串放入数组中 API component 组合
    
#if 0
    
    NSString *str = @"www.baidu.com";
    
    // 注意: 这是字符串方法,返回值是数组
    
    NSArray *arry = [str componentsSeparatedByString:@"."];
    
    NSLog(@"arr:%@",arry);
    
    
#endif
    
    
    
#pragma mark * 将数组中的元素按照给定的字符串格式拼接成一个完整的字符串对象 API
    
#if 0
    
    
    NSArray *arr = @[@"大连",@"哈尔滨",@"北京"];
    
    
    NSString *str = [arr componentsJoinedByString:@"&"];
    
    
    NSLog(@"str:%@", str);
    
    
#endif
    
    

  //练习
    
 #if 0
    /*存在如下的字符串，将其中的图片的网址提取出来。
     
     http://www.imanhua.com/Cover/2011-10/hyrz.jpg&http://www.imanhua.com/Cover/2011-09/op.jpg&http://www.imanhua.com/Cover/2012-04/yjdwb.jpg
     
     */
    
    
    
    NSString *str =@" http://www.imanhua.com/Cover/2011-10/hyrz.jpg&http://www.imanhua.com/Cover/2011-09/op.jpg&http://www.imanhua.com/Cover/2012-04/yjdwb.jpg";
    
    
    NSArray *ary = [str componentsSeparatedByString:@"&"];
    
    
    NSLog(@"%@",ary);
    
#endif
    
#if 0
    
    //2./*有如下一个数组，@[@“type = iOS", @"Device = iPhone", @"count = 11344115@163.com", @"password = 12345”]，将其中的内容用”&"符号拼接成一个字符串*/
    
    
    NSArray *arr = @[@"type = iOS", @"Device = iPhone", @"count = 11344115@163.com", @"password = 12345"];
    
    
    
    NSString *str = [arr componentsJoinedByString:@"&"];
    
    
    NSLog(@"%@",str);
    

#endif
    
    
#pragma mark ** 可变数组
    
#if 0
    
 #pragma mark **数组中添加一个对象 API
    
    NSMutableArray *marr  = [NSMutableArray alloc] initWithObjects : @"dalian",@"beijing",@"haerbin", nil];
    
    
    //Capacity 空得数组,并给他一个预估值可伸缩
    
    
    NSMutableArray *marr2 = [NSMutableArray arrayWithCapacity:20];
    
    
    //字面量方式,后面加上 mutableCopy, copy 一份可变数组
    
    
    NSMutableArray *marr3 = @[@"beijing", @"dalian", @"haerbin"].mutableCopy;
    
#endif
    
  
#if 0
#pragma mark **数组中指定位置插入一个对象 API
    
    // 插入到最后一个 字面量方式
    
    // 注意:添加对象在数组最后!!
    
    NSMutableArray *marr = @[@"dalian",@"beijing",@"haerbin"].mutableCopy;
    
    [marr addObject:@"shenyang"];
    
    NSLog(@"%@",marr);
    
    
    
    
#endif
    
    
//    NSMutableArray *marr = @[@"大连",@"北京",@"哈尔滨"].mutableCopy;
//    
//    [marr insertObject:@"沈阳" atIndex:2];
//    
//    NSLog(@"%@", marr);
    
#if 0
#pragma mark **数组中移除一个对象 API
    
   
    NSMutableArray *marr = @[@"beijing",@"dalian",@"haerbin"].mutableCopy;
    
    
    [marr removeObject:@"dalian"];
    
    
    NSLog(@"%@", marr);
    
    
#endif
    
    
    
#if 0
    
#pragma mark **移除数组中最后一个对象 API
    
    NSMutableArray *marr = @[@"beijing",@"dalian",@"haerbin"].mutableCopy;
    
    [marr removeLastObject];
    
    NSLog(@"%@",marr);
    
#endif
    
    
#if 0
    
#pragma mark **移除数组中所有的元素 API
    
    
    
    NSMutableArray *marr = @[@"beijing",@"dalian",@"haerbin"].mutableCopy;
    
    [marr removeAllObjects];
    
    NSLog(@"%@", marr);
    
#endif
    
    
    
#if 0
    
#pragma mark **数组中移除指定位置的元素 API
    
    NSMutableArray *marr = @[@"beijing",@"dalian",@"haerbin"].mutableCopy;

    
    [marr removeObjectAtIndex:1]; // 下标
    
    NSLog(@"%@",marr);
    
    
#endif
    
    
    
    
#if 0
    
#pragma mark **使用指定的对象替换指定位置的对象 API
    
     NSMutableArray *marr = @[@"beijing",@"dalian",@"haerbin"].mutableCopy;
    
    
    [marr replaceObjectAtIndex:2 withObject:@"USA"];
    
    NSLog(@"%@", marr);
    
    
    
#endif
    
    
    
#if 0
    
#pragma mark **交换指定的两个下标对应的对象 API
    
    NSMutableArray *marr = @[@"beijing",@"dalian",@"haerbin"].mutableCopy;
    
    [marr exchangeObjectAtIndex:0 withObjectAtIndex:1];
    
    NSLog(@"%@", marr);
    
    
#endif
    

    
    
    
    
#pragma mark - 知识点 2 字典
    
    
    
#pragma mark ** 不可变字典
    
    
#pragma mark ** 创建对象
    
#if 0
    
    
    // init 方法
    // 注意! key 和 value 的顺序,先 value 后 key;
    
    NSDictionary *dic = [[NSDictionary alloc] initWithObjectsAndKeys:@"zhangsan",@"name",@"20", @"age",@"male", @"sex", nil];
    
    //构造器方法
    // 注意!key 和 value 的顺序,先 value 后 key;
    
    
    NSDictionary *dic2 =[NSDictionary dictionaryWithObjectsAndKeys:@"zhangsan",@"name",@"20",@"name",@"male",@"sex", nil];
    
    //自面量写法:
    
    // 注意!key 和 value 的顺序,先 key 后 value; (key:value, key:value,)
    
    NSDictionary *dic3 = @{@"name":@"name",
                            @"age":@"20",
                            @"sex":@"male"};
    
    
#endif
    
#pragma mark **   获取字典中键值对儿的个数
    
    
#if 0 // 对儿算的 有三对 count = 3
    
    NSDictionary *dic =[NSDictionary dictionaryWithObjectsAndKeys:@"zhangshan",@"name",@"20",@"age",@"male",@"sex", nil];
    
    NSLog(@"%ld", dic.count);
    
    
#endif
    
#pragma mark **  获取字典中所有的键
    
    
#if 0
    
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"zhangsan",@"name",@"18",@"age",@"male",@"sex", nil];
    
    [dic allKeys];
    
    NSLog(@"%@", dic);
    
#endif
    
#pragma mark ** 获取字典中所有的值
    
    
#if 0
    
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"zhangsan",@"name",@"18",@"age",@"male",@"sex", nil];
    
    [dic allValues];
    
    NSLog(@"%@",dic);
    
    
#endif
    
    
    
#pragma mark ** 根据键获得对应的值
    
    
#if 0
    
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"zhangsan",@"name",@"18",@"age",@"male",@"sex", nil];
    
   NSString *name = [dic objectForKey:@"name"];
    
    NSString *age =  [dic objectForKey:@"age"];

    
    
#endif
    
    
    
#pragma mark ** 可变字典
 
#pragma mark - 创建对象 API
    
    
#if 0
    NSMutableDictionary *mdic = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"zhangsan",@"name",@"20",@"age",@"male",@"sex", nil];
    
    NSMutableDictionary *mdic1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"zhangsan",@"name",@"20",@"age",@"male",@"sex", nil];
    
    
    // 字面量写法
    
    
    NSMutableDictionary *mdic3 = @{@"name":@"zhangsan",@"age":@"20",@"sex":@"mael"}.mutableCopy;
    
    
#endif
    
#if 0
    
    //空数组
    
    // NSMutableArray *marr2 = [NSMutableArray arrayWithCapacity:20];
    
    // 创建空字典
    
   //  NSMutableDictionary *mdic4 = [NSMutableDcitionary dictionary];
    
    
    
    
    NSMutableDictionary *mdic5 = [ NSMutableDictionary dictionary];
    
    
    NSLog(@"%@", mdic5);
    
    
#endif
    
    
    
#pragma mark ** 字典中添加新的键值对以及修改某一对键值对 api
    
#if 0
    NSMutableDictionary *mdic = @{@"name":@"zhangsan",@"age":@"20",@"sex":@"male"}.mutableCopy;
    
    
    
    [mdic setObject:@"running" forKey:@"bobby"];
    
    [mdic setObject:@"20" forKey:@"age"]; // 直接修改替换掉,如果有之前的 value 和 key
    //添加相同即是修改
    
    NSLog(@"%@", mdic);
    
#endif
    
    
    
#pragma mark ** 移除指定的键对应的键值对
    
#if 0
    
    NSMutableDictionary *mdic = @{@"name":@"zhangsan",@"age":@"20",@"sex":@"male"}.mutableCopy;
    
    
    [mdic removeObjectForKey:@"age"];
    
    
    NSLog(@"%@", mdic);
    

    
    
    
    
    
#pragma mark ** 移除字典中所有的键值对
    
    
    [mdic removeAllObjects];
    
    
    NSLog(@"%@", mdic);
    
   #endif
    
    
#pragma mark ** 练习
  

    //1.创建一个可变字典 ( 26 个键值对)//
    

#if 0
    /*完成以下需求
     需求：1、定义联系人类Contact。实例变量：姓名(拼音，首字母大写)、性别、电话号码、住址、分组名称、年龄。方法：自定义初始化方法(姓名、电话号码)、显示联系人信息。
     2、在main.m中定义字典，分组管理所有联系人。分组名为26个大写的英文字母。
     3、可以添加联系人对象，如果姓名或电话号码为空，添加失败。添加联系人到匹配的分组。
     4、删除某个分组的全部联系人。*/
    
    
    
    
    // 初始化
    
    NSMutableDictionary *mdic = [NSMutableDictionary dictionaryWithCapacity:26];
    
    // for 循环,循环 26 次,添加键值对
    
    for (int i = 0;i < 26 ; i++){
    
    // 创建 key 值 (A B C D E F)
        
        NSString *key = [NSString stringWithFormat:@"%c", 'A'+i ];
        
    // 创建空得可变数组(用于存放联系人信息的数组)
        
        NSMutableArray *marr = [NSMutableArray array];
    
    // 字典中添加新的键值对 (将 A ---- 联系人信息数组  这个键值对放入到字典中)
        
     [mdic setObject:marr forKey:key];
    
    }
    
    
    
   // 创建联系人对象
    
    Contact *con1 = [[Contact alloc] initWithName:@"Zhangsan"  phoneNumber:@"1387766234"];
    
    Contact *con2 = [[Contact alloc] initWithName:@"Lisi" phoneNumber:@"13387365374"];
    
    Contact *con3 = [[Contact alloc] initWithName:@"Bai" phoneNumber:@"13244543"];
    
    
    // 根据联系人的分组,在字典中找出分组中对应的数组
    //
    
    
    NSString *key = con1.group; // 首字母
    NSMutableArray *marr = [mdic objectForKey:key];
    [marr addObject:con1];//将联系人添加到数组中
    
    
    
    
    [[mdic objectForKey:con2.group] addObject:con2];// 连起来写出了,和con1一样
    
    [[mdic objectForKey:con3.group] addObject:con3];
    
    
    // 字典信息 输出三个
    
    ///
    
    for (NSString *key in mdic) {
        
        NSArray *marr = [mdic objectForKey:key];
      
    }
    
    NSLog(@"%@", mdic);
    
//    NSArray *conarr = @[con1, con2, con3];
//    
//    for (Contact *con in conarr) {
//        
//        [con info];
//        
//    }
//    

 
 
    
    
    
#endif
    
#pragma mark - 知识点 3 快速遍历容器(数组, 字典, 集合)
    
#if 0
    
    NSArray *arr = @[@"Zhangsan",@"Lisi",@"Wangwu"];
    
    
    // forin 快速遍历 对数组
    
    for (NSString *str in arr) {
       
        NSLog(@"%@", str);
        
    }
    
    
    Contact *con1 = [[Contact alloc] initWithName:@"Zhangsan"  phoneNumber:@"1387766234"];
    
    Contact *con2 = [[Contact alloc] initWithName:@"Lisi" phoneNumber:@"13387365374"];
    
    Contact *con3 = [[Contact alloc] initWithName:@"Bai" phoneNumber:@"13244543"];
    
    
    
    
    
    
    NSArray *conarr = @[con1, con2, con3];
    
    for (Contact *con in conarr) {
        
        [con info];
        
    }
    
#endif
    
    
    //forin  快速遍历字典
    
    
#if  0
    
    NSDictionary *dic = @{@"name":@"Zhangsan",
                          
                          @"age":@"20",
                          
                          @"sex":@"male",
                          
                          @"hobby":@"running"};
    
    
    // 注意:对字典快速遍历,遍历的时 key
    
    for (NSString *key in dic) {
        NSLog(@"%@", [dic objectForKey:key]);
    }
    
    
    
#endif
    
    
    
    
 #if 0
    
#pragma mark - 知识点 4 集合
    
    
#pragma mark * 不可变集合
    
#pragma mark ** 创建对象 API
    
    // 注意! 集合的互异性,不能存在相同的对象; 没有字面量方法
    
    NSSet *set = [[NSSet alloc] initWithObjects:@"zhang",@"wang",@"zhang", @"li", nil];
    
    
  // NSSet *set2 = [NSSet setWithObjects:@"li",@"wang",@"zhang", nil];
    
    
#pragma mark ** 个数
    
    NSLog(@"%ld", set.count);
    
#pragma mark ** 取出对象
    
    NSLog(@"%@",[set anyObject]);
    
 #pragma mark ** 取出所有对象  
    
    
    NSArray *arr = [set allObjects];
    
    NSLog(@"%@", arr);
    
  #pragma mark ** 判断是否含有某一个对象
    
    if ([set containsObject:@"wu"]) {
        NSLog(@"含有");
    }else{
    
        NSLog(@"不含有");
    
    }
    

#pragma mark * 可变集合
    
#pragma mark 创建对象 API
    
    NSMutableSet *mset = [ [NSMutableSet alloc] initWithObjects:@"zhang","li",@"wang",@"li", nil];
    
    
    NSMutableSet *mset2 = [ NSMutableSet setWithObjects:@"zhang",@"li",@"li",nil];
    
    
    
#pragma mark 添加对象
    
    [mset addObject:@"li"];
    
#pragma mark 删除对象
    
    [mset2 removeObject:@"li"];
    
    
#pragma mark 移除所有
    
    [mset2 removeAllObjects];
    
  #pragma mark 快速遍历集合
    
    // 集合中的类型为 NSString
    
    for (NSString  *str in mset) {
        
        NSLog(@"%@", str);
    }
    
    
    
#endif
    
    
    
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
