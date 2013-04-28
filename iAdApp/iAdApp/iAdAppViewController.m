//
//  iAdAppViewController.m
//  iAdApp
//
//  Created by Anthony DeFrancesco on 4/28/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import "iAdAppViewController.h"

@interface iAdAppViewController ()

@end

@implementation iAdAppViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _bannerView = [[ADBannerView alloc]initWithFrame:CGRectZero];
    
    _bannerView.delegate = self;
}

-(void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    _tableView.tableHeaderView = _bannerView;
}

-(BOOL) bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave
{
    return YES;
}

-(void)bannerViewActionDidFinish:(ADBannerView *)banner
{
    
}

-(void)bannerViewWillLoadAd:(ADBannerView *)banner
{
    _tableView.tableHeaderView = _bannerView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
