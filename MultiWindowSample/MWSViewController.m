//
//  MWSViewController.m
//  MultiWindowSample
//
//  Created by mito on 2014/01/23.
//
//

#import "MWSViewController.h"
#import "MWSSubWindowViewController.h"

@interface MWSViewController ()
@property (nonatomic, strong) UIWindow *window;
@end

@implementation MWSViewController

- (IBAction)firstViewReturnActionForSegue:(UIStoryboardSegue *)segue
{
    NSLog(@"First view return action invoked.");
}

- (IBAction)openWindow:(id)sender {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    MWSSubWindowViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"SubWindow"];
    controller.window = self.window;
    self.window.rootViewController = controller;
    [self.window makeKeyAndVisible];
}

@end
