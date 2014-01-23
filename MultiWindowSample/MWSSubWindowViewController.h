//
//  MWSSubWindowViewController.h
//  MultiWindowSample
//
//  Created by mito on 2014/01/23.
//
//

#import <UIKit/UIKit.h>

@interface MWSSubWindowViewController : UIViewController
- (IBAction)closeWindow:(id)sender;
@property (nonatomic, weak) UIWindow *window;
@end
