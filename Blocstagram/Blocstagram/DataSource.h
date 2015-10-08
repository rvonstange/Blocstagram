//
//  DataSource.h
//  Blocstagram
//
//  Created by Robert von Stange on 10/7/15.
//  Copyright (c) 2015 Robert von Stange. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataSource : NSObject

+(instancetype) sharedInstance;
@property (nonatomic, strong, readonly) NSArray *mediaItems;

@end
