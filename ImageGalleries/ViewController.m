//
//  ViewController.m
//  ImageGalleries
//
//  Created by Alp Eren Can on 07/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tap:(UITapGestureRecognizer *)sender {
    if (sender.state == UIGestureRecognizerStateRecognized) {
        UIImageView *tappedView = (UIImageView *)[self.scrollView hitTest:[sender locationInView:self.scrollView] withEvent:nil];
        
        if ([tappedView isKindOfClass:[UIImageView class]]) {
            UIImage *tappedImage = tappedView.image;
            [self performSegueWithIdentifier:@"showImageDetail" sender:tappedImage];
        }
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showImageDetail"]) {
        DetailViewController *detailVC = segue.destinationViewController;
        
        detailVC.image = (UIImage *)sender;
    }

}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat pageWidth = scrollView.frame.size.width;
    
    int page = round(scrollView.contentOffset.x / pageWidth);
    
    self.pageControl.currentPage = page;
}

@end
