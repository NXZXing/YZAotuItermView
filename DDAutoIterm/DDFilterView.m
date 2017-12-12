//
//  DDFilterView.m
//  OnlineDiagnose1
//
//  Created by yzhi on 2017/9/18.
//  Copyright © 2017年 yzhi. All rights reserved.
//

#import "DDFilterView.h"

CGFloat DDMargin = 15;

CGFloat KDDFilterViewBtnTag = 50;

@interface DDFilterView ()

@property (nonatomic, assign) NSInteger col;

@end


@implementation DDFilterView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        self.titleFontSize = 14;
        self.seletBgColor = [UIColor colorWithRed:2.0f/255.0f green:144.0f/255.0f blue:254.0f/255.0f alpha:1.0f];
        self.normalBgColor = [UIColor colorWithRed:255.0f/255.0f green:255.0f/255.0f blue:255.0f/255.0f alpha:1.0f];
        self.itermHeight = 30;
        self.titleNormalColor = [UIColor colorWithRed:102.0f/255.0f green:102.0f/255.0f blue:102.0f/255.0f alpha:1.0f];
        self.titleSeletColor = [UIColor colorWithRed:255.0f/255.0f green:255.0f/255.0f blue:255.0f/255.0f alpha:1.0f];
        self.padding = 15;
    }
    return self;
}

/*! 使控件居中 */
- (void)makeSubViewCenter {
    
    NSArray *subVs = self.subviews;
    
    for (NSInteger i = 0; i < self.col + 1; i ++) {
        
        NSMutableArray *c1 = [NSMutableArray array];
        
        for (UIView *v in subVs) {
            if (v.y == (v.height + DDMargin) * i ) {
                [c1 addObject:v];
            }
        }
        //每行字控件所占总宽度
        CGFloat w = 0;
        
        for (UIView *v in c1) {
            w += v.width;
        }
        
        CGFloat currentX = (self.width - w - DDMargin * (c1.count - 1)) / 2;
        
        //重新调整每行lable的x
        for (NSInteger i = 0; i < c1.count; i++) {
            
            UIView *v = c1[i];
            
            if (i == 0) {
                v.x = currentX;
            }else{
                v.x = currentX + DDMargin;
            }
            currentX = v.x + v.width;
        }
    }
}

/** 添加标签 */
- (UIButton *)btnWithTitle:(NSString *)title
{
    UIButton *btn = [[UIButton alloc] init];
    btn.titleLabel.font = [UIFont systemFontOfSize:self.titleFontSize];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.layer.cornerRadius = 15;
    btn.clipsToBounds = YES;
    btn.layer.borderColor = [[UIColor colorWithRed:199.0f/255.0f green:199.0f/255.0f blue:201.0f/255.0f alpha:1.0f] CGColor];
    btn.layer.borderWidth = 0.5;
    [btn sizeToFit];
    btn.width += self.padding * 2;
//    label.height += 12;
    btn.height = self.itermHeight;

    return btn;
}


- (void)btnClick:(UIButton *)btn {
    
    btn.selected = !btn.selected;
    
    if (btn.selected) {
        btn.backgroundColor = self.seletBgColor;
    }else{
        btn.backgroundColor = self.normalBgColor;
    }
}

- (NSArray *)hasSelectIterms {
    
    NSMutableArray *mutab = [NSMutableArray array];
    
    for (UIButton *btn in self.subviews) {
        if (btn.selected) {
            [mutab addObject:btn.titleLabel.text];
        }
    }
    
    return mutab;
}





- (void)setTagTexts:(NSArray<NSString *> *)tagTexts {
    
    _tagTexts = tagTexts;
    
    [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    NSMutableArray *tagsM = [NSMutableArray array];
    for (int i = 0; i < tagTexts.count; i++) {
        UIButton *btn = [self btnWithTitle:tagTexts[i]];
        btn.tag = KDDFilterViewBtnTag + i;
        [self addSubview:btn];
        [tagsM addObject:btn];
    }
    // 计算位置
    CGFloat currentX = 0;
    CGFloat currentY = 0;
    CGFloat countRow = 0;
    CGFloat countCol = 0;
    // 调整布局
    for (UIButton *subView in tagsM) {
        // 当搜索字数过多，宽度为contentView的宽度
        if (subView.width > self.width) subView.width = self.width;
        if (currentX + subView.width + DDMargin * countRow > self.width) { // 得换行
            subView.x = 0;
            subView.y = (currentY += subView.height) + DDMargin * ++countCol;
            currentX = subView.width;
            countRow = 1;
        } else { // 不换行
            subView.x = (currentX += subView.width) - subView.width + DDMargin * countRow;
            subView.y = currentY + DDMargin * countCol;
            countRow ++;
        }
    }
    
    self.col = countCol;
    // 设置contentView高度
    self.height = CGRectGetMaxY(self.subviews.lastObject.frame);
}



@end
