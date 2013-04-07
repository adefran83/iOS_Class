//
//  CarDetailViewController.m
//  TableViewStory
//
//  Created by Anthony DeFrancesco on 4/7/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import "CarDetailViewController.h"

@interface CarDetailViewController ()

@end

@implementation CarDetailViewController

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
    
    _makeLabel.text = _CarDetailModel[0];
    _modelLabel.text = _CarDetailModel[1];
    _imageView.image = [UIImage imageNamed:_CarDetailModel[2]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
