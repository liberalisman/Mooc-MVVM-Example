//
//  MVVMView.h
//  MVVMTest
//
//  Created by Liberalism on 2018/4/12.
//  Copyright © 2018年 Liberalism. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MVVMViewModel;

@interface MVVMView : UIView

@property (nonatomic,strong) UILabel *contentLabel;

@property (nonatomic,strong) UIButton *printButton;

- (void)setupWithViewModel:(MVVMViewModel *)viewModel;

@end
