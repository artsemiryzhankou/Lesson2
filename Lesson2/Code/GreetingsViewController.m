//
//  GreetingsViewController.m
//  Lesson2
//
//  Created by Artsemi Ryzhankou on 1/17/18.
//  Copyright © 2018 ArtsemiRyzhankou. All rights reserved.
//

#import "GreetingsViewController.h"
#import "GreetingsGenerator.h"
#import "GeneratedInfo.h"

@interface GreetingsViewController ()

@property (nonatomic, retain) UILabel *titleLabel;
@property (nonatomic, retain) UILabel *subtitleLabel;
@property (nonatomic, retain) UIButton *generateButton;

@end

@implementation GreetingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.titleLabel];
    [self.view addSubview:self.subtitleLabel];
    [self.view addSubview:self.generateButton];
    self.view.backgroundColor = [UIColor orangeColor];
    
    [self.titleLabel.topAnchor constraintEqualToAnchor:self.view.topAnchor constant: 150].active = YES;
    [self.titleLabel.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant: 8].active = YES;
    [self.titleLabel.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant: -8].active = YES;
    [self.titleLabel.heightAnchor constraintEqualToConstant:30].active = YES;
    
    [self.subtitleLabel.topAnchor constraintEqualToAnchor:self.view.topAnchor constant: 190].active = YES;
    [self.subtitleLabel.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant: 8].active = YES;
    [self.subtitleLabel.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant: -8].active = YES;
    [self.subtitleLabel.heightAnchor constraintEqualToConstant:20].active = YES;
    
    [self.generateButton.topAnchor constraintEqualToAnchor:self.view.topAnchor constant: 230].active = YES;
    [self.generateButton.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant: 40].active = YES;
    [self.generateButton.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant: -40].active = YES;
    [self.generateButton.heightAnchor constraintEqualToConstant:20].active = YES;
    
    [self.generateButton addTarget:self action:@selector(generate) forControlEvents:UIControlEventTouchUpInside];
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(cleanup) name:UIDeviceOrientationDidChangeNotification object:nil];
}

- (void)loadView {
    [super loadView];
    
    self.titleLabel = [[[UILabel alloc] init] autorelease];
    self.subtitleLabel = [[[UILabel alloc] init] autorelease];
    self.generateButton = [[[UIButton alloc] init] autorelease];
    
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.titleLabel.backgroundColor = [UIColor yellowColor];
    
    self.subtitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.subtitleLabel.backgroundColor = [UIColor whiteColor];
    
    self.generateButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.generateButton setTitle:@"Generate" forState:UIControlStateNormal];
    self.generateButton.backgroundColor = [UIColor greenColor];
}

- (void)cleanup {
    self.titleLabel.text = nil;
    self.subtitleLabel.text = nil;
}

- (void)generate {
    [[[GreetingsGenerator alloc] init] generate: ^void (GeneratedInfo *info) {
        self.titleLabel.text = info.greeting;
        self.subtitleLabel.text = info.fullName;
    }];
}

- (void)dealloc
{
    [_titleLabel release];
    [_subtitleLabel release];
    [_generateButton release];
    [super dealloc];
}

@end
