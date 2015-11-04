//
//  NSObject+AOP.h
//  改变方法指向
//
//  Created by Looper on 15/10/9.
//  Copyright (c) 2015年 Looper. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (AOP)

+ (void)aop_ExchangeSelector:(SEL)oldSelector andNewSelector:(SEL)newSelector;

@end
