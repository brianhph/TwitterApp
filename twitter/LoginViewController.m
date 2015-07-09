//
//  LoginViewController.m
//  twitter
//
//  Created by EC on 2015/6/25.
//  Copyright (c) 2015年 EC. All rights reserved.
//

#import "LoginViewController.h"
#import "TwitterClient.h"
#import "TweetsViewController.h"
#import "MainViewController.h"
#import "Color.h"
@interface LoginViewController ()

@end

@implementation LoginViewController


- (IBAction)onLogin:(id)sender {
        [[TwitterClient sharedInstance] loginWithCompletion:^(User *user, NSError *error) {

        if (user) {
           // [self presentViewController:[[TweetsViewController alloc] init] animated:YES completion:nil];
            self.viewController = [[MainViewController alloc] initWithNibName:@"MainViewController" bundle:nil];
            [self presentViewController:self.viewController animated:YES completion:nil];
        } else {
            UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Failed to login"
                                                                           message:[NSString stringWithFormat:@("%@"), error.localizedDescription]
                                                                    preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                                  handler:^(UIAlertAction * action) {}];
            
            [alert addAction:defaultAction];
            [self presentViewController:alert animated:YES completion:nil];
        }
    }];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [Color TwitterColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
