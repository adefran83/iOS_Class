//
//  Assignment7.m
//  Assignment7
//
//  Created by Anthony DeFrancesco on 4/28/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import "Assignment7.h"

@implementation Assignment7

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
    //my attempt to draw Bugdroid the Android Mascot :)
    //The body
    CGContextRef body = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(body, 4.0);
    CGContextSetStrokeColorWithColor(body, [UIColor greenColor].CGColor);
    CGRect rectangleBody = CGRectMake(70, 180, 175, 150);
    CGContextAddRect(body, rectangleBody);
    CGContextStrokePath(body);
    CGContextSetFillColorWithColor(body, [UIColor greenColor].CGColor);
    CGContextFillRect(body, rectangleBody);
    
    //left arm
    CGContextRef leftArm = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(leftArm, 4.0);
    CGContextSetStrokeColorWithColor(leftArm, [UIColor greenColor].CGColor);
    CGRect rectangleLeftArm = CGRectMake(20, 180, 20, 130);
    CGContextAddRect(leftArm, rectangleLeftArm);
    CGContextStrokePath(leftArm);
    CGContextSetFillColorWithColor(leftArm, [UIColor greenColor].CGColor);
    CGContextFillRect(leftArm, rectangleLeftArm);
    
    //right arm
    CGContextRef rightArm = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(rightArm, 4.0);
    CGContextSetStrokeColorWithColor(rightArm, [UIColor greenColor].CGColor);
    CGRect rectangleRightArm = CGRectMake(275, 180, 20, 130);
    CGContextAddRect(rightArm, rectangleRightArm);
    CGContextStrokePath(rightArm);
    CGContextSetFillColorWithColor(rightArm, [UIColor greenColor].CGColor);
    CGContextFillRect(rightArm, rectangleRightArm);
    
    //left leg
    CGContextRef leftLeg = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(leftLeg, 4.0);
    CGContextSetStrokeColorWithColor(leftLeg, [UIColor greenColor].CGColor);
    CGRect rectangleLeftLeg = CGRectMake(90, 350, 30, 80);
    CGContextAddRect(leftLeg, rectangleLeftLeg);
    CGContextStrokePath(leftLeg);
    CGContextSetFillColorWithColor(leftLeg, [UIColor greenColor].CGColor);
    CGContextFillRect(leftLeg, rectangleLeftLeg);
    
    //right leg
    CGContextRef rightLeg = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(rightLeg, 4.0);
    CGContextSetStrokeColorWithColor(rightLeg, [UIColor greenColor].CGColor);
    CGRect rectangleRightLeg = CGRectMake(190, 350, 30, 80);
    CGContextAddRect(rightLeg, rectangleRightLeg);
    CGContextStrokePath(rightLeg);
    CGContextSetFillColorWithColor(rightLeg, [UIColor greenColor].CGColor);
    CGContextFillRect(rightLeg, rectangleRightLeg);
    
    //the head - going to attempt to create a rectangle then overlap with an ellipse
    //part 1 - the rectangle
    CGContextRef head = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(head, 4.0);
    CGContextSetStrokeColorWithColor(head, [UIColor greenColor].CGColor);
    CGRect rectangleHead = CGRectMake(70, 120, 175, 40);
    CGContextAddRect(head, rectangleHead);
    CGContextStrokePath(head);
    CGContextSetFillColorWithColor(head, [UIColor greenColor].CGColor);
    CGContextFillRect(head, rectangleHead);
    //part 2 - the ellipse
    CGContextRef headCircle = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(headCircle, 4.0);
    CGContextSetStrokeColorWithColor(headCircle, [UIColor greenColor].CGColor);
    CGRect rectangleHeadCircle = CGRectMake(70, 80, 175, 80);
    CGContextAddEllipseInRect(headCircle, rectangleHeadCircle);
    CGContextStrokePath(headCircle);
    CGContextSetFillColorWithColor(headCircle, [UIColor greenColor].CGColor);
    CGContextFillEllipseInRect(headCircle, rectangleHeadCircle);

    
}


@end
