//
//  UINavigationController+AOP.h
//  权限控制
//
//  Created by Looper on 15/10/9.
//  Copyright (c) 2015年 Looper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (AOP)

- (void)aop_pushViewController:(UIViewController *)viewController animated:(BOOL)animated;

@end
