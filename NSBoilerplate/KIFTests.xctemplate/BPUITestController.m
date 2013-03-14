//
//  STKIFTestController.m
//  Boilerplate
//
//  Created by Jeffrey Sambells on 2013-03-04.
//  Copyright (c) 2013 Boilerplate. All rights reserved.
//

#import "BPUITestController.h"
#import "KIFTestScenario+BPAdditions.h"

@implementation BPUITestController

- (void)initializeScenarios;
{
    [self addScenario:[KIFTestScenario scenarioToLogIn]];

    // Add additional scenarios you want to test here

}

@end
