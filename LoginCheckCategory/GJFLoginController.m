//
//  GJFLoginController.m
//  权限控制
//
//  Created by Looper on 15/10/9.
//  Copyright (c) 2015年 Looper. All rights reserved.
//

#import "GJFLoginController.h"

@interface GJFLoginController ()
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;

@end

@implementation GJFLoginController
- (IBAction)btnTouch:(id)sender
{
    NSString *name = self.username.text;
    NSString *pwd = self.password.text;
    // 系统提供的一个键值存储plist文件工具类
    // 使用方法就是与可变字典相同
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    
    [ud setObject:name forKey:@"name"];
    [ud setObject:pwd forKey:@"pwd"];
    
    // 立即执行存储到plist文件中
    [ud synchronize];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
