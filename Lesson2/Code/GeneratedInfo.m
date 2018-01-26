//
//  GeneratedInfo.m
//  Lesson2
//
//  Created by Artsemi Ryzhankou on 1/17/18.
//  Copyright © 2018 ArtsemiRyzhankou. All rights reserved.
//

#import "GeneratedInfo.h"

@interface GeneratedInfo ()

@property (nonatomic, copy) NSString *greeting;
@property (nonatomic, copy) NSString *subtitle;
@property (nonatomic, copy) NSString *name;

@end

@implementation GeneratedInfo

- (id)initWithGreeting:(NSString *)greeting subtitle:(NSString *)subtitle name:(NSString *)name {
    self = [super init];
    if (self) {
        self.greeting = greeting;
        self.subtitle = subtitle;
        self.name = name;
    }
    return self;
}

- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", self.subtitle, self.name];
}

- (void)dealloc {
    self.greeting = nil;
    self.subtitle = nil;
    self.name = nil;
    [super dealloc];
}

@end
