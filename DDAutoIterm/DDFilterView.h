//
//  DDFilterView.h
//  OnlineDiagnose1
//
//  Created by yzhi on 2017/9/18.
//  Copyright © 2017年 yzhi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+Extension.h"

@interface DDFilterView : UIView


@property (nonatomic, strong) NSArray <NSString *>*tagTexts;

- (void)makeSubViewCenter;

/*! btn 选中背景颜色 */
@property (nonatomic, strong) UIColor *seletBgColor;
/*! btn 背景颜色 */
@property (nonatomic, strong) UIColor *normalBgColor;
/*! 标题颜色 */
@property (nonatomic, strong) UIColor *titleNormalColor;
/*! 标题选中颜色 */
@property (nonatomic, strong) UIColor *titleSeletColor;
/*! 标题文字大小 */
@property (nonatomic, assign) CGFloat titleFontSize;
/*! 子控件的高度 */
@property (nonatomic, assign) CGFloat itermHeight;
/*! 文字左右间距 */
@property (nonatomic, assign) CGFloat padding;


@end
