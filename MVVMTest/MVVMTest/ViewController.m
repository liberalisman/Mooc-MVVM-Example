//
//  ViewController.m
//  MVVMTest
//
//  Created by Liberalism on 2018/4/12.
//  Copyright © 2018年 Liberalism. All rights reserved.
//

#import "ViewController.h"
#import "MVVMViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    MVVMViewController *vc = [MVVMViewController new];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [self presentViewController:vc animated:true completion:^{
            
        }];
    });
}


@end
