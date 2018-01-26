//
//  GreetingsGenerator.h
//  Lesson2
//
//  Created by Artsemi Ryzhankou on 1/17/18.
//  Copyright © 2018 ArtsemiRyzhankou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GeneratedInfo.h"

@interface GreetingsGenerator : NSObject

- (id)initWithCompletion:(void (^)(GeneratedInfo *))myCompletion;
- (void)generate;

@end
