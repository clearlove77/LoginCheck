//
//  UINavigationController+AOP.m
//  权限控制
//
//  Created by Looper on 15/10/9.
//  Copyright (c) 2015年 Looper. All rights reserved.
//

#import "UINavigationController+AOP.h"
#import "GJFLoginController.h"
#import "NSObject+AOP.h"

@implementation UINavigationController (AOP)

+ (void)load
{
    [self aop_ExchangeSelector:@selector(pushViewController:animated:) andNewSelector:@selector(aop_pushViewController:animated:)];
}

- (void)aop_pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    // 需要权限控制的类名,也可以写在plist中
    NSArray *tmp = @[@"GJFMineDetailController",@"GJFFoodDetailController",@"GJFHomeDetailController"];
    
    NSString *className = NSStringFromClass([viewController class]);
    for(NSString *str in tmp)
    {
        if([str isEqualToString:className])
        {
            NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
            // 如果没有登陆名
            if (![ud objectForKey:@"name"])
            {
                // 跳转到登陆界面
                GJFLoginController *login = [[GJFLoginController alloc]init];
                UINavigationController *lnc = [[UINavigationController alloc]initWithRootViewController:login];
                [self presentViewController:lnc animated:YES completion:nil];
                return;
            }
        }
    }
    
    [self aop_pushViewController:viewController animated:YES];
}

@end
