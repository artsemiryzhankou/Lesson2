//
//  GeneratedInfo.h
//  Lesson2
//
//  Created by Artsemi Ryzhankou on 1/17/18.
//  Copyright © 2018 ArtsemiRyzhankou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GeneratedInfo : NSObject

@property (nonatomic, readonly) NSString *greeting;
@property (nonatomic, readonly) NSString *subtitle;
@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSString *fullName;

- (id)initWithGreeting:(NSString *)greeting subtitle:(NSString *)subtitle name:(NSString *)name;

@end

