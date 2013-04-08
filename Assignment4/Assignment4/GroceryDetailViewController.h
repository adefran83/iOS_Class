//
//  GroceryDetailViewController.h
//  Assignment4
//
//  Created by Anthony DeFrancesco on 4/7/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GroceryDetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *foodLabel;
@property (strong, nonatomic) IBOutlet UIImageView *foodImage;
@property (strong,nonatomic) NSArray *groceryDetailModel;

@end
