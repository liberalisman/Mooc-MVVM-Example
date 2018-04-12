//
//  MVVMViewModel.m
//  MVVMTest
//
//  Created by Liberalism on 2018/4/12.
//  Copyright © 2018年 Liberalism. All rights reserved.
//

#import "MVVMViewModel.h"
#import "Paper.h"


@interface MVVMViewModel()

@property (nonatomic,strong) Paper *model;

@end

@implementation MVVMViewModel


- (void)setupWithModel:(Paper *)model {
    
    self.model = model;
    
    self.contentLabelText = model.content;
}

-(void)click {
    
    self.model.content = @"lalala";
    
    self.contentLabelText = self.model.content;
}
@end
