//
//  JMViewController.h
//  World Map Challenge Solution
//
//  Created by JONATHAN MARIANO on 6/20/14.
//
//

#import <UIKit/UIKit.h>

@interface JMViewController : UIViewController <UIScrollViewDelegate>//Protocol: now have access to scroll view delegate methods

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

//Property for image that will be ON TOP of scrollView
@property (strong, nonatomic) UIImageView *globalImageView;

@end
