//
//  CircularSpinnerView.h
//  Blocstagram
//
//  Created by Robert von Stange on 10/18/15.
//  Copyright (c) 2015 Robert von Stange. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface CircularSpinnerView : UIView

@property (nonatomic, assign) CGFloat strokeThickness;
@property (nonatomic, assign) CGFloat radius;
@property (nonatomic, strong) UIColor *strokeColor;

@end