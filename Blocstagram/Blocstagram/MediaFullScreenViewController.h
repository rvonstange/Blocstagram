//
//  MediaFullScreenViewController.h
//  Blocstagram
//
//  Created by Robert von Stange on 10/15/15.
//  Copyright (c) 2015 Robert von Stange. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Media;

@interface MediaFullScreenViewController : UIViewController

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;

- (instancetype) initWithMedia:(Media *)media;

- (void)sharePic:(UIButton *)sender;

- (void) centerScrollView;

@end
