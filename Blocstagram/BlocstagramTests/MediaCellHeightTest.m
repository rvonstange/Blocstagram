//
//  MediaCellHeightTest.m
//  Blocstagram
//
//  Created by Robert von Stange on 10/26/15.
//  Copyright (c) 2015 Robert von Stange. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "MediaTableViewCell.h"
#import "Media.h"

@interface MediaCellHeightTest : XCTestCase

@end

@implementation MediaCellHeightTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void) testMediaHeight {
    
    NSDictionary *sourceDictionary = @{@"id": @"8675309",
                                       @"user" : @{@"id": @"8675309",
                                                   @"username" : @"d'oh",
                                                   @"full_name" : @"Homer Simpson",
                                                   @"profile_picture" : @"http://www.example.com/example.jpg"},
                                       @"images" : @{@"standard_resolution" : @{@"url" : @"http://distillery.s3.amazonaws.com/media/2010/07/16/4de37e03aa4b4372843a7eb33fa41cad_7.jpg"}},
                                       @"caption" : @{@"text" : @"this is a caption"},
                                       @"comments" : @{},
                                       @"user_has_liked" : @"true",
                                       @"likes" : @{@"count" : @10}};
    Media *item = [[Media alloc] initWithDictionary:sourceDictionary];
    MediaTableViewCell *itemCell = [[MediaTableViewCell alloc] init];
    itemCell.mediaItem = item;
    
    CGFloat imageSize = [MediaTableViewCell heightForMediaItem:item width:320 traitCollection:itemCell.traitCollection];
    NSLog(@"Height for Media Item %2f", imageSize);
    
    XCTAssertEqualObjects(item.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    XCTAssertTrue(imageSize > 0, @"The height is incorrect");
}


@end
