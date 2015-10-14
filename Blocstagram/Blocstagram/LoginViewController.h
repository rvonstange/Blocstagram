//
//  LoginViewController.h
//  Blocstagram
//
//  Created by Robert von Stange on 10/14/15.
//  Copyright (c) 2015 Robert von Stange. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

extern NSString *const LoginViewControllerDidGetAccessTokenNotification;

- (void)navBarBack:(UIBarButtonItem *)sender;


@end
