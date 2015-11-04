//
//  NSObject+AOP.m
//  改变方法指向
//
//  Created by Looper on 15/10/9.
//  Copyright (c) 2015年 Looper. All rights reserved.
//

#import "NSObject+AOP.h"
#import <objc/runtime.h>

@implementation NSObject (AOP)

+ (void)aop_ExchangeSelector:(SEL)oldSelector andNewSelector:(SEL)newSelector
{
    // AOP 面向切面的思想
    // 在不更改,原来具体实现的情况下,增加功能,或者实现某些具体的控制
    
    // class_getInstanceMethod 通过Class 获得实例方法的具体描述结构体Method
    Method oldMethod =  class_getInstanceMethod([self class],oldSelector);
    Method newMethod = class_getInstanceMethod([self class], newSelector);
    method_exchangeImplementations(oldMethod, newMethod);
}

@end
