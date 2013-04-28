//
//  AnimateViewController.m
//  Animate
//
//  Created by Anthony DeFrancesco on 4/28/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import "AnimateViewController.h"

@interface AnimateViewController ()

@end

@implementation AnimateViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

-(void) loadView
{
    [super loadView];
    _scaleFactor = 2;
    _angle = 180;
    CGRect frameRect = CGRectMake(10, 10, 45, 45);
    _boxView = [[UIView alloc] initWithFrame:frameRect];
    _boxView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_boxView];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self.view];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:2];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    CGAffineTransform scaleTrans = CGAffineTransformMakeScale(_scaleFactor, _scaleFactor);
    CGAffineTransform rotateTrans = CGAffineTransformMakeRotation(_angle * M_PI / 180);
    _boxView.transform = CGAffineTransformConcat(scaleTrans, rotateTrans);
    _angle = (_angle == 180 ? 360 : 180);
    _scaleFactor = (_scaleFactor == 2 ? 1 : 2);
    _boxView.center = location;
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
