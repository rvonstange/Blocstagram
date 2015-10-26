//
//  MediaTests.m
//  Blocstagram
//
//  Created by Robert von Stange on 10/23/15.
//  Copyright (c) 2015 Robert von Stange. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Media.h"
//#import "UserTests.m"

@interface MediaTests : XCTestCase

@end

@implementation MediaTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatInitializationMediaWorks
{
    NSDictionary *sourceDictionary = @{@"id": @"12345", @"user": @{@"id": @"8675309",
                                       @"username" : @"d'oh",
                                       @"full_name" : @"Homer Simpson",
                                                                   @"profile_picture" : @"http://www.example.com/example.jpg"},@"caption": @{@"text" : @"I am a caption"},};
    Media *testMedia = [[Media alloc] initWithDictionary:sourceDictionary];
    
    XCTAssertEqualObjects(testMedia.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    //XCTAssertEqualObjects(testMedia.user, sourceDictionary[@"user"], @"The user should be equal");
    XCTAssertEqualObjects(testMedia.caption, sourceDictionary[@"caption"][@"text"], @"The captions should be equal");
}

@end
