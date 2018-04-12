//
//  MVVMViewModel.h
//  MVVMTest
//
//  Created by Liberalism on 2018/4/12.
//  Copyright © 2018年 Liberalism. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Paper;

@interface MVVMViewModel : NSObject

@property (nonatomic,copy  ) NSString *contentLabelText;

- (void)setupWithModel:(Paper *)model;


- (void)click;

@end
