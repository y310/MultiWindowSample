//
//  MWSSubWindowViewController.m
//  MultiWindowSample
//
//  Created by mito on 2014/01/23.
//
//

#import "MWSSubWindowViewController.h"

@implementation MWSSubWindowViewController

- (void)viewWillAppear:(BOOL)animated
{
    CGRect rect = self.view.frame;
    rect.origin.y = rect.size.height;
    self.view.frame = rect;

    [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        CGRect rect = self.view.frame;
        rect.origin.y = 0;
        self.view.frame = rect;
    } completion:nil];
}

- (IBAction)closeWindow:(id)sender {
    [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        CGRect rect = self.view.frame;
        rect.origin.y = rect.size.height;
        self.view.frame = rect;
    } completion:^(BOOL finished) {
        [self.window resignKeyWindow];
        UIWindow *mainWindow = [UIApplication sharedApplication].windows.firstObject;
        [mainWindow makeKeyAndVisible];
    }];
}

@end
