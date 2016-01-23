//
//  main.m
//  Demo6_初始化方法
//
//  Created by MS on 15-9-21.
//  Copyright (c) 2015年 QF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //在栈里面开辟一个四字节的空间，用于存放整数值，开辟空间后，直接将整数10赋值给该变量
        int a = 10;//整型变量的初始化

        //OC中初始化方法需要手动调用
        //即使不需要初始化类中的成员变量，也要调用init方法
        //开辟空间后，马上执行初始化方法，比如可以初始化某些成员变量
        Person *p = [[Person alloc] init];
        [p printInfo];
        
        Person *p1 = [[Person alloc] initWithAge:1 andHeight:20];
        [p1 printInfo];
        
        [p1 test];
    }
    return 0;
}
