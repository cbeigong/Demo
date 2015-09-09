//
//  ViewController.m
//  01-scrollBigPic
//
//  Created by clm on 15/9/8.
//  Copyright (c) 2015年 clm. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *ImageView;
@property (weak, nonatomic) UIButton *button;

@end

@implementation ViewController
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置scrollView的滚动范围
    self.scrollView.contentSize = CGSizeMake(1600, 1067);
    
    // 增加上左 下右 的滚动范围
    self.scrollView.contentInset = UIEdgeInsetsMake(50, 50, 50, 50);
    
    // 设置一开始滚动的位置
    self.scrollView.contentOffset = CGPointMake(-50, -50);
    
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    btn.backgroundColor = [UIColor redColor];
    btn.titleLabel.backgroundColor = [UIColor redColor];
    btn.titleLabel.text = @"scroll";
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(scrollClick) forControlEvents:UIControlEventTouchUpInside];
    self.button = btn;
    
}

- (void)scrollClick
{
    CGPoint  point = self.scrollView.contentOffset;
    point.x += 60;
    point.y += 60;
    // 利用UIView开动画效果
    [UIView animateWithDuration:1.0 animations:^{
        self.scrollView.contentOffset = point;
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
