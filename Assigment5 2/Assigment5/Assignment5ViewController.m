//
//  Assignment5ViewController.m
//  Assigment5
//
//  Created by Anthony DeFrancesco on 4/14/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import "Assignment5ViewController.h"

@interface Assignment5ViewController ()

@end

@implementation Assignment5ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _geeks = @[@"Spin Me",@"Arch Linux",@"Fedora",@"Debian",@"Ubuntu",@"Gentoo",@"Slackware",@"Red Hat"];
    _geekImages = @[@"tux.jpg",@"arch.jpg",@"fedora.jpg",@"debian.png",@"ubuntu.jpg",@"gentoo.jpg",@"slackware.jpg",@"redhat.jpeg"];
    _geekText = @[@"Useless Facts",@"Binary Based Rolling Release, highly customizable",@"RPM Binary Based, 1-2 releases a year, based on Red Hat",@"Deb Binary Based, One of the earlier Linux based Distrobutions",@"Deb Binary Based, based on Debian, 2 releases a year",@"Source Based Rolling Release, highly optimized",@"TXZ Binary Based, the oldest actively developed distribution",@"RPM Binary Based, extremely popular in large business servers"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark
#pragma mark PickerView DataSource

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _geeks.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _geeks[row];
}

#pragma mark
#pragma mark PickerView Delegate

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    _geekLabel.text = _geekText[row];
    _geekImage.image = [UIImage imageNamed:_geekImages[row]];
}

@end
