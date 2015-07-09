//
//  ComposeViewController.h
//  twitter
//
//  Created by EC on 2015/7/1.
//  Copyright (c) 2015年 EC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tweet.h"
@protocol ComposeViewControllerDelegate <NSObject>

@optional
- (void)cancelCompose;

@end
@interface ComposeViewController : UIViewController
@property (nonatomic, strong) Tweet *originalTweet;
@property (nonatomic, assign) id<ComposeViewControllerDelegate> delegate;
@end
