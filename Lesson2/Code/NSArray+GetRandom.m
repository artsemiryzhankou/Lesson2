//
//  NSArray+GetRandom.m
//  Lesson2
//
//  Created by Artsemi Ryzhankou on 1/17/18.
//  Copyright © 2018 ArtsemiRyzhankou. All rights reserved.
//

#import "NSArray+GetRandom.h"

@implementation NSArray (GetRandom)
- (NSUInteger) getRandom {
    NSUInteger result = arc4random_uniform(self.count);
    return result;
}
@end
