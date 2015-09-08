//
//  ViewController.m
//  ImageGalleries
//
//  Created by Alp Eren Can on 07/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollView.pagingEnabled = YES;
    
    UIImageView *firstImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    firstImageView.translatesAutoresizingMaskIntoConstraints = NO;
    firstImageView.image = [UIImage imageNamed:@"Lighthouse-in-Field.jpg"];
    firstImageView.contentMode = UIViewContentModeScaleAspectFit;
    firstImageView.clipsToBounds = YES;
    
    UIImageView *secondImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    secondImageView.image = [UIImage imageNamed:@"Lighthouse-night.jpg"];
    secondImageView.translatesAutoresizingMaskIntoConstraints = NO;
    secondImageView.contentMode = UIViewContentModeScaleAspectFit;
    secondImageView.clipsToBounds = YES;
    
    UIImageView *thirdImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    thirdImageView.image = [UIImage imageNamed:@"Lighthouse.jpg"];
    thirdImageView.translatesAutoresizingMaskIntoConstraints = NO;
    thirdImageView.contentMode = UIViewContentModeScaleAspectFill;
    thirdImageView.clipsToBounds = YES;
    
    [self.scrollView addSubview:firstImageView];
    [self.scrollView addSubview:secondImageView];
    [self.scrollView addSubview:thirdImageView];
    
    NSLayoutConstraint *firstImageViewTop = [NSLayoutConstraint constraintWithItem:firstImageView
                                                                         attribute:NSLayoutAttributeTop
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:self.scrollView
                                                                         attribute:NSLayoutAttributeTop
                                                                        multiplier:1.0
                                                                          constant:0.0];
    
    NSLayoutConstraint *firstImageViewLeading = [NSLayoutConstraint constraintWithItem:firstImageView
                                                                             attribute:NSLayoutAttributeLeading
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:self.scrollView
                                                                             attribute:NSLayoutAttributeLeading
                                                                            multiplier:1.0
                                                                              constant:0.0];
    
    NSLayoutConstraint *firstImageViewHeight = [NSLayoutConstraint constraintWithItem:firstImageView
                                                                            attribute:NSLayoutAttributeHeight
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.scrollView
                                                                            attribute:NSLayoutAttributeHeight
                                                                           multiplier:1.0
                                                                             constant:0.0];
    
    NSLayoutConstraint *firstImageViewWidth = [NSLayoutConstraint constraintWithItem:firstImageView
                                                                           attribute:NSLayoutAttributeWidth
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:self.view
                                                                           attribute:NSLayoutAttributeWidth
                                                                          multiplier:1.0
                                                                            constant:0.0];
    
    NSLayoutConstraint *firstToSecondHorizontalSpacing = [NSLayoutConstraint constraintWithItem:firstImageView
                                                                                      attribute:NSLayoutAttributeTrailing
                                                                                      relatedBy:NSLayoutRelationEqual
                                                                                         toItem:secondImageView
                                                                                      attribute:NSLayoutAttributeLeading
                                                                                     multiplier:1.0
                                                                                       constant:0.0];
                                                          
    
    NSLayoutConstraint *secondImageViewHeight = [NSLayoutConstraint constraintWithItem:secondImageView
                                                                            attribute:NSLayoutAttributeHeight
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.scrollView
                                                                            attribute:NSLayoutAttributeHeight
                                                                           multiplier:1.0
                                                                             constant:0.0];
    
    NSLayoutConstraint *secondImageViewWidth = [NSLayoutConstraint constraintWithItem:secondImageView
                                                                            attribute:NSLayoutAttributeWidth
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.view
                                                                            attribute:NSLayoutAttributeWidth
                                                                           multiplier:1.0
                                                                             constant:0.0];
    
    NSLayoutConstraint *secondToThirdHorizontalSpacing = [NSLayoutConstraint constraintWithItem:secondImageView
                                                                                      attribute:NSLayoutAttributeTrailing
                                                                                      relatedBy:NSLayoutRelationEqual
                                                                                         toItem:thirdImageView
                                                                                      attribute:NSLayoutAttributeLeading
                                                                                     multiplier:1.0
                                                                                       constant:0.0];
    
    NSLayoutConstraint *thirdImageViewHeight = [NSLayoutConstraint constraintWithItem:thirdImageView
                                                                            attribute:NSLayoutAttributeWidth
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.scrollView
                                                                            attribute:NSLayoutAttributeWidth
                                                                           multiplier:1.0
                                                                             constant:0.0];
    
    NSLayoutConstraint *thirdImageViewWidth = [NSLayoutConstraint constraintWithItem:thirdImageView
                                                                            attribute:NSLayoutAttributeHeight
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.view
                                                                            attribute:NSLayoutAttributeHeight
                                                                           multiplier:1.0
                                                                             constant:0.0];
    
    NSLayoutConstraint *secondImageViewCenterY = [NSLayoutConstraint constraintWithItem:secondImageView
                                                                             attribute:NSLayoutAttributeCenterY
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:firstImageView
                                                                             attribute:NSLayoutAttributeCenterY
                                                                            multiplier:1.0
                                                                              constant:0.0];
    
    NSLayoutConstraint *thirdImageViewCenterY = [NSLayoutConstraint constraintWithItem:thirdImageView
                                                                              attribute:NSLayoutAttributeCenterY
                                                                              relatedBy:NSLayoutRelationEqual
                                                                                 toItem:secondImageView
                                                                              attribute:NSLayoutAttributeCenterY
                                                                             multiplier:1.0
                                                                               constant:0.0];
    
    NSLayoutConstraint *thirdImageViewTrailing = [NSLayoutConstraint constraintWithItem:thirdImageView
                                                                             attribute:NSLayoutAttributeTrailing
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:self.scrollView
                                                                             attribute:NSLayoutAttributeTrailing
                                                                            multiplier:1.0
                                                                              constant:0.0];
    
    NSLayoutConstraint *firstImageViewBottom = [NSLayoutConstraint constraintWithItem:firstImageView
                                                                              attribute:NSLayoutAttributeBottom
                                                                              relatedBy:NSLayoutRelationEqual
                                                                                 toItem:self.scrollView
                                                                              attribute:NSLayoutAttributeBottom
                                                                             multiplier:1.0
                                                                               constant:0.0];
    
    [self.view addConstraints:@[firstImageViewTop, firstImageViewBottom, firstImageViewHeight, firstImageViewWidth, secondImageViewHeight, secondImageViewWidth, thirdImageViewHeight, thirdImageViewWidth, firstImageViewLeading, firstToSecondHorizontalSpacing, secondImageViewCenterY, secondToThirdHorizontalSpacing, thirdImageViewCenterY, thirdImageViewTrailing]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
