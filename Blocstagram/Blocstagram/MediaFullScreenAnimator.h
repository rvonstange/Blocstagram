//
//  MediaFullScreenAnimator.h
//  Blocstagram
//
//  Created by Robert von Stange on 10/16/15.
//  Copyright (c) 2015 Robert von Stange. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MediaFullScreenAnimator : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign) BOOL presenting;
@property (nonatomic, weak) UIImageView *cellImageView;

@end