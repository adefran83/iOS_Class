//
//  iAdAppViewController.h
//  iAdApp
//
//  Created by Anthony DeFrancesco on 4/28/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface iAdAppViewController : UIViewController <ADBannerViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) ADBannerView *bannerView;
@end
