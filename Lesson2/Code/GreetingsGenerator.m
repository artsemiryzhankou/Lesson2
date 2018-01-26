//
//  GreetingsGenerator.m
//  Lesson2
//
//  Created by Artsemi Ryzhankou on 1/17/18.
//  Copyright © 2018 ArtsemiRyzhankou. All rights reserved.
//

#import "GreetingsGenerator.h"
#import "NSArray+GetRandom.h"

@interface GreetingsGenerator ()

@property (nonatomic, copy) NSArray *titles;
@property (nonatomic, copy) NSArray *subtitles;
@property (nonatomic, copy) NSArray *names;

typedef void (^СompletionBlock)(GeneratedInfo *info);
@property (nonatomic, copy) СompletionBlock completion;

- (NSString *) generateTitle;
- (NSString *) generateSubtitle;
- (NSString *) generateName;

@end

@implementation GreetingsGenerator

- (id)initWithCompletion:(void (^)(GeneratedInfo *))myCompletion  {
    self = [super init];
    if (self) {
        self.titles = @[@"Hello", @"Hi", @"Welcome", @"Wazzap"];
        self.subtitles = @[@"Mister", @"Sir"];
        self.names = @[@"Bob", @"Tom", @"Tony", @"Adam", @"Seed", @"Mohammad al Rashid"];
        self.completion = myCompletion;
    }
    
    return self;
}

- (void)generate {
    GeneratedInfo *item = [[GeneratedInfo alloc] initWithGreeting:self.generateTitle subtitle:self.generateSubtitle name:self.generateName];
    self.completion([item autorelease]);
}

- (NSString *) generateTitle{
    return self.titles[[self.titles getRandom]];
}

- (NSString *) generateSubtitle {
    return self.subtitles[[self.subtitles getRandom]];
}

- (NSString *) generateName {
    return self.names[[self.names getRandom]];
}

- (void)dealloc
{
    [_titles release];
    [_subtitles release];
    [_names release];
    [_completion release];
    [super dealloc];
}

@end
