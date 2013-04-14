//
//  ContentViewController.h
//  PageApp
//
//  Created by Anthony DeFrancesco on 4/14/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) id dataObject;
@end
