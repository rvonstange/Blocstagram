//
//  CommentComposeTest.m
//  Blocstagram
//
//  Created by Robert von Stange on 10/26/15.
//  Copyright (c) 2015 Robert von Stange. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ComposeCommentView.h"

@interface CommentComposeTest : XCTestCase

@end

@implementation CommentComposeTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testCommentComp {
    ComposeCommentView * ccV = [[ComposeCommentView alloc] init];
    [ccV setText:@"test"];
    XCTAssertTrue(ccV.isWritingComment);
    [ccV setText:@""];
    XCTAssertFalse(ccV.isWritingComment);
}

@end
