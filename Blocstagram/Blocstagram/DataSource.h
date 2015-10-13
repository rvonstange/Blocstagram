//
//  DataSource.h
//  Blocstagram
//
//  Created by Robert von Stange on 10/7/15.
//  Copyright (c) 2015 Robert von Stange. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Media;

@interface DataSource : NSObject

- (void) deleteMediaItem:(Media *)item;
- (void) insertObject:(Media *)object inMediaItemsAtIndex:(NSUInteger)index;
- (void) removeObjectFromMediaItemsAtIndex:(NSUInteger)index;

typedef void (^NewItemCompletionBlock)(NSError *error);


+(instancetype) sharedInstance;
@property (nonatomic, strong, readonly) NSArray *mediaItems;

- (void) requestNewItemsWithCompletionHandler:(NewItemCompletionBlock)completionHandler;
- (void) requestOldItemsWithCompletionHandler:(NewItemCompletionBlock)completionHandler;


@end
