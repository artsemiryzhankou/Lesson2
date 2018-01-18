//
//  GeneratedInfo.h
//  Lesson2
//
//  Created by Artsemi Ryzhankou on 1/17/18.
//  Copyright © 2018 ArtsemiRyzhankou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GeneratedInfo : NSObject

@property (nonatomic, copy) NSString *greeting;
@property (nonatomic, copy) NSString *subtitle;
@property (nonatomic, copy) NSString *name;

- (NSString *)fullName;
- (id)initWithGreeting:(NSString *)greeting subtitle:(NSString *)subtitle name:(NSString *)name;

@end

