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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];



    DDFilterView *view = [[DDFilterView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 20)];
    
//    view.backgroundColor = [UIColor grayColor];
    
    [view setTagTexts:@[@"咖啡大开发",@"开发快乐发简历发afsdfafa发来看到发",@"放假啊了大家发了疯fkaf",@"看法拉的",@"积分卡的",@"福利卡的数据付款啦发砥砺奋进",@"分开打了发",@"开发快乐发简历发发来看到发",@"放假啊了大家发了疯fkaf",@"看法拉的",@"积分卡的",@"福利卡的数据付款啦发砥砺奋进",@"开发快乐发简历发发来看到发",@"放假啊了大家发了疯fkaf",@"看法拉的",@"积分卡的",@"福利卡的数据付款啦发砥砺奋进",@"开发快乐发fadkjlfjklakljfalkjfaskldfjklasdkfasd;lfaslkdfjlaslf;lsafjlasfkjlasfkljaskljf发发来看到看法拉的",@"积分卡的",@"福利卡的数据付款啦发砥砺奋进"]];
    
    [view makeSubViewCenter];
    
    [self.view addSubview:view];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
