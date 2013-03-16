//
//  HelloWorldAppDelegate.h
//  HelloWorld
//
//  Created by Anthony DeFrancesco on 3/16/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HelloWorldViewController;

@interface HelloWorldAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) HelloWorldViewController *viewController;

@end
