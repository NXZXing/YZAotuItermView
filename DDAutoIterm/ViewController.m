//
//  ViewController.m
//  DDAutoIterm
//
//  Created by yzhi on 2017/12/11.
//  Copyright © 2017年 yzhi. All rights reserved.
//

#import "ViewController.h"
#import "DDFilterView.h"

@interface ViewController ()

@property (nonatomic, strong) DDFilterView *filterV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.filterV = [[DDFilterView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 20)];
//    view.backgroundColor = [UIColor grayColor];
    [self.filterV setTagTexts:@[
                                @"咖啡大开发",@"开发快乐发简历发afsdfafa发来看到发",
                                @"放假啊了大家发了疯fkaf",@"看法拉的",@"积分卡的",
                                @"福利卡的数据付款啦发砥砺奋进",@"分开打了发",
                                @"开发快乐发简历发发来看到发",@"放假啊了大家发了疯fkaf",
                                @"看法拉的",@"积分卡的",@"福利卡的数据付款啦发砥砺奋进",
                                @"开发快乐发简历发发来看到发",@"放假啊了大家发了疯fkaf",
                                @"看法拉的",@"积分卡的",@"福利卡的数据付款啦发砥砺奋进" ]];
    
    [self.filterV makeSubViewCenter];
    [self.view addSubview:self.filterV];
    
    UIButton *btn = [[UIButton alloc] init];
    
    btn.size = CGSizeMake(100, 40);
    btn.centerX = self.view.centerX;
    btn.y = self.view.height - 40;
    [btn setTitle:@"完成" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor orangeColor];
    [btn addTarget:self action:@selector(doneClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

}


- (void)doneClick {
    NSArray *arr = [self.filterV hasSelectIterms];
    NSLog(@"%@",arr);
}

@end
