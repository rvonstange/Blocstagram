//
//  PhotoHeaderView.m
//  Blocstagram
//
//  Created by Robert von Stange on 10/21/15.
//  Copyright (c) 2015 Robert von Stange. All rights reserved.
//

#import "PhotoHeaderView.h"

@implementation PhotoHeaderView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.title = [[UILabel alloc] init];
        self.title.text = @"Photos";
        self.title.backgroundColor = [UIColor blackColor];
        [self addSubview:self.title];
        
    }
    
    return self;
}

@end
