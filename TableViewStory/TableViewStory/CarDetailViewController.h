//
//  CarDetailViewController.h
//  TableViewStory
//
//  Created by Anthony DeFrancesco on 4/7/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CarDetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *makeLabel;
@property (strong, nonatomic) IBOutlet UILabel *modelLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong,nonatomic) NSArray *CarDetailModel;

@end
