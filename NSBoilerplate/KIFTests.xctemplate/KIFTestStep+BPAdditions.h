//
//  KIFTestStep+BPAdditions.h
//  Boilerplate
//
//  Created by Jeffrey Sambells on 2013-03-04.
//  Copyright (c) 2013 Boilerplate. All rights reserved.
//

#import "KIFTestStep.h"

@interface KIFTestStep (BPAdditions)

// Factory Steps

+ (id)stepToReset;

// Step Collections

// Assumes the application was reset and sitting at the welcome screen
+ (NSArray *)stepsToGoToLoginPage;

@end
