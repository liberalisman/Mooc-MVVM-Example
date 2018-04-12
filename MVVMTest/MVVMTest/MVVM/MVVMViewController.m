//
//  MVVMViewController.m
//  MVVMTest
//
//  Created by Liberalism on 2018/4/12.
//  Copyright © 2018年 Liberalism. All rights reserved.
//

#import "MVVMViewController.h"
#import "MVVMView.h"
#import "MVVMViewModel.h"
#import "Paper.h"

@interface MVVMViewController ()

@property (nonatomic,strong) MVVMView *MVVMView;
@property (nonatomic,strong) MVVMViewModel *viewModel;
@property (nonatomic,strong) Paper *paper;

@end

@implementation MVVMViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.MVVMView = [MVVMView new];
    _MVVMView.backgroundColor = [UIColor orangeColor];
    _MVVMView.frame = self.view.bounds;
    [self.view addSubview:_MVVMView];
    
    self.viewModel = [MVVMViewModel new];
    
    self.paper = [Paper new];
    _paper.content = @"LINE 0";
    
    [_MVVMView setupWithViewModel:_viewModel];
    [_viewModel setupWithModel:_paper];
    
    
}


@end
