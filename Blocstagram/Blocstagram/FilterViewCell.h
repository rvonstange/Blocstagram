//
//  FilterViewCell.h
//  Blocstagram
//
//  Created by Robert von Stange on 10/23/15.
//  Copyright (c) 2015 Robert von Stange. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FilterViewCell : UICollectionViewCell

- (instancetype) initWithImage:(UIImage *)sourceImage andTitle:(NSString *)title;


@property (nonatomic, strong) UIImage *sourceImage;
@property (nonatomic, strong) NSString *filterTitle;

@end
