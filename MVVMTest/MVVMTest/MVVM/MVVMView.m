//
//  MVVMView.m
//  MVVMTest
//
//  Created by Liberalism on 2018/4/12.
//  Copyright © 2018年 Liberalism. All rights reserved.
//

#import "MVVMView.h"
#import "MVVMViewModel.h"
#import "KVOController.h"


@interface MVVMView()

@property (nonatomic,strong) MVVMViewModel *viewModel;

@property (nonatomic,strong) FBKVOController *KVOController;

@end

@implementation MVVMView

- (instancetype)init {
    
    if (self = [super init]) {
        
        _contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 100, 300, 40)];
        _contentLabel.backgroundColor = [UIColor redColor];
        _contentLabel.textAlignment = NSTextAlignmentCenter;
        _contentLabel.textColor = [UIColor blackColor];
        _contentLabel.font = [UIFont systemFontOfSize:22];
        [self addSubview:_contentLabel];
        
        
        _printButton = [UIButton new];
        _printButton.frame = CGRectMake(100, 200, 100, 100);
        [_printButton setTitle:@"Print" forState:UIControlStateNormal];
        [_printButton setBackgroundColor:[UIColor blueColor]];
        [_printButton addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_printButton];
        
        _KVOController = [FBKVOController controllerWithObserver:self];
    }
    return self;
}

- (void)setupWithViewModel:(MVVMViewModel *)viewModel {
    
    self.viewModel = viewModel;
    
    __weak typeof(self) weakSelf = self;
    
    [self.KVOController observe:self.viewModel
                        keyPath:@"contentLabelText"
                        options:NSKeyValueObservingOptionNew
                          block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        
        NSString *contentStr = change[NSKeyValueChangeNewKey];
        
        weakSelf.contentLabel.text = contentStr;
        
    }];
    
//    [viewModel addObserver:self forKeyPath:@"contentLabelText" options:NSKeyValueObservingOptionNew context:nil];
    
}

//- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
//
//    if ([keyPath isEqualToString:@"contentLabelText"]) {
//
//        NSString *contentStr = change[NSKeyValueChangeNewKey];
//
//        _contentLabel.text = contentStr;
//    }
//}
//
//
//- (void)dealloc {
//
//    [self removeObserver:self forKeyPath:@"contentLabelText"];
//}

- (void)click {
    
    [_viewModel click];
}

@end
