//
//  XZViewB.m
//  XZTouch
//
//  Created by kkxz on 2018/10/22.
//  Copyright © 2018年 kkxz. All rights reserved.
//

#import "XZViewB.h"

@implementation XZViewB
//首先事件传递
-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    NSLog(@"事件传递到B");
    return self;
}

//开始触摸时就会调
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"B，触摸调用了！");
}
//手指移动就会调
-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"B，手指移动！");
}
//手指离开屏幕就会调
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"B，手指离开！");
}
//系统级时间（如电话呼入），会打断触摸过程，会调用
-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"B，有系统级事件接入！");
}


@end
