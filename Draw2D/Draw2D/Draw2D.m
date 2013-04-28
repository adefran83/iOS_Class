//
//  Draw2D.m
//  Draw2D
//
//  Created by Anthony DeFrancesco on 4/27/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import "Draw2D.h"

@implementation Draw2D

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Line - the hard way
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, 5.0);
//    CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
//    CGFloat components[] = {0.0,0.0,1.0,1.0};
//    CGColorRef   color = CGColorCreate(colorspace, components);
//    CGContextSetStrokeColorWithColor(context, color);
//    CGContextMoveToPoint(context, 0, 0);
//    CGContextAddLineToPoint(context, 300, 400);
//    CGContextStrokePath(context);
//    CGColorSpaceRelease(colorspace);
//    CGColorRelease(color);
    //Line - the easy way
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, 2.0);
//    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
//    CGContextMoveToPoint(context, 0, 0);
//    CGContextAddLineToPoint(context, 300, 400);
//    CGContextStrokePath(context);
    //Diamond
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, 4.0);
//    //CGContextSetStrokeColorWithColor(context, [UIColor orangeColor].CGColor);
//    CGContextMoveToPoint(context, 100, 100);
//    CGContextAddLineToPoint(context, 150, 150);
//    CGContextAddLineToPoint(context, 100, 200);
//    CGContextAddLineToPoint(context, 50, 150);
//    CGContextAddLineToPoint(context, 100, 100);
//    //CGContextStrokePath(context);
//    //fill in the diamond
//    CGContextSetFillColorWithColor(context, [UIColor magentaColor].CGColor);
//    CGContextFillPath(context);
    //Rectangle
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, 4.0);
//    CGContextSetStrokeColorWithColor(context, [UIColor purpleColor].CGColor);
//    CGRect rectangle = CGRectMake(60, 170, 200, 80);
//    CGContextAddRect(context, rectangle);
//    CGContextStrokePath(context);
//    //fill in rectangle
//    CGContextSetFillColorWithColor(context, [UIColor grayColor].CGColor);
//    CGContextFillRect(context, rectangle);
    //ellipse
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, 4.0);
//    CGContextSetStrokeColorWithColor(context, [UIColor greenColor].CGColor);
//    CGRect rectangle = CGRectMake(60, 170, 200, 80);
//    CGContextAddEllipseInRect(context, rectangle);
//    CGContextStrokePath(context);
    //Arc
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, 4.0);
//    CGContextSetStrokeColorWithColor(context, [UIColor darkGrayColor].CGColor);
//    CGContextMoveToPoint(context, 100, 100);
//    CGContextAddArcToPoint(context, 100, 200, 300, 200, 100);
//    CGContextStrokePath(context);
    //cubic bezier curve
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, 4.0);
//    CGContextSetStrokeColorWithColor(context, [UIColor cyanColor].CGColor);
//    CGContextMoveToPoint(context, 10, 10);
//    CGContextAddCurveToPoint(context, 0, 50, 300, 250, 300, 400);
//    CGContextStrokePath(context);
    //quadratic bezier curve
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, 4.0);
//    CGContextSetStrokeColorWithColor(context, [UIColor lightGrayColor].CGColor);
//    CGContextMoveToPoint(context, 10, 200);
//    CGContextAddQuadCurveToPoint(context, 150, 10, 300, 200);
//    CGContextStrokePath(context);
    //quadratic bezier curve 'dashed'
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, 20.0);
//    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
//    CGFloat dashArray[]={2,6,4,2};
//    CGContextSetLineDash(context, 3, dashArray, 4);
//    CGContextMoveToPoint(context, 10, 200);
//    CGContextAddQuadCurveToPoint(context, 150, 10, 300, 200);
//    CGContextStrokePath(context);
//    //drawing an image
//    UIImage *myImage = [UIImage imageNamed:@"profile.png"];
//    CGRect imageRect = [[UIScreen mainScreen] bounds];
//    [myImage drawInRect:imageRect];
    //core image framework
    UIImage *myImage = [UIImage imageNamed:@"profile.png"];
    CIImage *cimage = [[CIImage alloc] initWithImage:myImage];
    CIFilter *sepiaFilter = [CIFilter filterWithName:@"CISepiaTone"];
    [sepiaFilter setDefaults];
    [sepiaFilter setValue:cimage forKey:@"inputImage"];
    [sepiaFilter setValue:[NSNumber numberWithFloat:0.8f] forKey:@"inputeIntensity"];
    CIImage *image = [sepiaFilter outputImage];
    CIContext *context = [CIContext contextWithOptions:nil];
    CGImageRef cgImage = [context createCGImage:image fromRect:image.extent];
    UIImage *resultUIImage = [UIImage imageWithCGImage:cgImage];
    CGRect imageRect = [[UIScreen mainScreen]bounds];
    [resultUIImage drawInRect:imageRect];
}


@end
