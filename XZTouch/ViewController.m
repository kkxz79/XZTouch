//
//  ViewController.m
//  XZTouch
//
//  Created by kkxz on 2018/10/22.
//  Copyright © 2018年 kkxz. All rights reserved.
//

#import "ViewController.h"
#import "XZViewA.h"
#import "XZViewB.h"

@interface ViewController ()
@property(nonatomic,strong)XZViewA* viewA;
@property(nonatomic,strong)XZViewB* viewB;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.viewA.frame = CGRectMake(25.0f, 100.0f, self.view.frame.size.width-50.0f, 200.0f);
    [self.view addSubview:self.viewA];
    //viewB, viewA的子view
    self.viewB.frame = CGRectMake(25.0f, 50.0f, self.viewA.frame.size.width-50.0f, 100.0f);
    [self.viewA addSubview:self.viewB];
    
}

#pragma mark - lazy init
@synthesize viewA = _viewA;
-(XZViewA *)viewA
{
    if(!_viewA){
        _viewA = [[XZViewA alloc] init];
        _viewA.backgroundColor = [UIColor redColor];
    }
    return _viewA;
}

@synthesize viewB = _viewB;
-(XZViewB *)viewB
{
    if(!_viewB){
        _viewB = [[XZViewB alloc] init];
        _viewB.backgroundColor = [UIColor blueColor];
    }
    return _viewB;
}
@end
