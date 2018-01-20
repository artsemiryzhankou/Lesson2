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
@property (nonatomic, copy) NSString *fullName;

@end

@implementation GeneratedInfo

- (id)initWithGreeting:(NSString *)greeting subtitle:(NSString *)subtitle name:(NSString *)name {
    self = [super init];
    if (self) {
        [self setGreeting:greeting];
        [self setSubtitle:subtitle];
        [self setName:name];
        [self setFullName:[[NSString alloc] initWithFormat:@"%@ %@", self.subtitle, self.name]];
    }
    return self;
}

- (void)dealloc
{
    [_greeting release];
    [_subtitle release];
    [_name release];
    [super dealloc];
}

@end
