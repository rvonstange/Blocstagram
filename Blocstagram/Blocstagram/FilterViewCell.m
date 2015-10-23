//
//  FilterViewCell.m
//  Blocstagram
//
//  Created by Robert von Stange on 10/23/15.
//  Copyright (c) 2015 Robert von Stange. All rights reserved.
//

#import "FilterViewCell.h"



@implementation FilterViewCell

- (instancetype) initWithImage:(UIImage *)sourceImage andTitle: (NSString *)title {
    self = [super init];
    
    if (self) {
        self.sourceImage = sourceImage;
        self.filterTitle = title;
    }
    return self;
}

@end
