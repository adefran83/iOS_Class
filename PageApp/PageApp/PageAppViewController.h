//
//  PageAppViewController.h
//  PageApp
//
//  Created by Anthony DeFrancesco on 4/14/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContentViewController.h"

@interface PageAppViewController : UIViewController
<UIPageViewControllerDataSource>

@property (strong,nonatomic) UIPageViewController *pageController;
@property (strong,nonatomic) NSArray *pageContent;

@end
