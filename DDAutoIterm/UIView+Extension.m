//
//  UIView+Extension.m
//
//  Created by apple on 14-10-7.
//  Copyright (c) 2014年 heima. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setCenterX:(CGFloat)centerX
{
    
    CGPoint center = self.center;
    
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY
{
    return self.center.y;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size
{
    return self.frame.size;
}

- (void)setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)origin
{
    return self.frame.origin;
}

-(void)setRect:(CGRect)Rect
{
    CGRect frame = self.frame;
    
    frame = Rect;
    
    self.frame = frame;
}



//-(CGRect)CGRect;
//{
//    CGFloat percentX = kScreenWidth/375;
//    
//    CGFloat percentY = kScreenHeight/667;
//    
//    CGFloat x = self.frame.origin.x*percentX;
//    
//    CGFloat y = self.frame.origin.y*percentY;
//    
//    CGFloat width = self.frame.size.width*percentX;
//    
//    CGFloat height = self.frame.size.height*percentY;
//    
//    CGRect rect = CGRectMake(x, y, width, height);
//    
//    return rect;
//}
//
//-(CGFloat)Width
//{
//    CGFloat percentX = kScreenWidth/375;
//    
//    return self.frame.size.width * percentX;
//}
//
//-(CGFloat)Height
//{
//    CGFloat percent = kScreenHeight/667;
//    
//    return self.frame.size.height * percent;
//}

-(void)layoutSubviews
{
    
//    DYLog(@"开始调用这个方法了");
    
    
    
}



@end
