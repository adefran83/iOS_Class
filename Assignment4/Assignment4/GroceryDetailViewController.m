//
//  GroceryDetailViewController.m
//  Assignment4
//
//  Created by Anthony DeFrancesco on 4/7/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import "GroceryDetailViewController.h"

@interface GroceryDetailViewController ()

@end

@implementation GroceryDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _foodLabel.text = _groceryDetailModel[0];
    _foodImage.image = [UIImage imageNamed:_groceryDetailModel[1]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
