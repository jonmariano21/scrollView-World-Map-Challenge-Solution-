//
//  JMViewController.m
//  World Map Challenge Solution
//
//  Created by JONATHAN MARIANO on 6/20/14.
//
//

#import "JMViewController.h"

@interface JMViewController ()

@end

@implementation JMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Assign image property an image
    self.globalImageView = [ [UIImageView alloc] initWithImage:[UIImage imageNamed:@"worldMap.jpeg"] ];
    
    //Be able to scroll over entire image
    self.scrollView.contentSize = self.globalImageView.frame.size;
    
    //Add image view OM TOP of scrollView
    [ self.scrollView addSubview:self.globalImageView];
    
    //Set up delegate property for the scrollView
    // Let the view controller "JMViewController.m" become the delegate of our scrollView
    self.scrollView.delegate = self;
    
    self.scrollView.maximumZoomScale = 2.0;
    self.scrollView.minimumZoomScale = 0.5;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    
    return self.globalImageView;
    
}


@end
