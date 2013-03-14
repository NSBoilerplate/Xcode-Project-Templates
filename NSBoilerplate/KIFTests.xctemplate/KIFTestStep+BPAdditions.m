//
//  KIFTestStep+BPAdditions.m
//  Boilerplate
//
//  Created by Jeffrey Sambells on 2013-03-04.
//  Copyright (c) 2013 Boilerplate. All rights reserved.
//

#import "KIFTestStep+BPAdditions.h"
#import "BPAppDelegate.h"

@implementation KIFTestStep (BPAdditions)

#pragma mark - Factory Steps

+ (id)stepToReset;
{
    return [KIFTestStep stepWithDescription:@"Reset the application state." executionBlock:^(KIFTestStep *step, NSError **error) {
        BOOL successfulReset = YES;
        
        BPAppDelegate *delegate =  [UIApplication sharedApplication].delegate;
        
        // Do the actual reset for your app. Set successfulReset = NO if it fails.
        [delegate setAuthenticated:NO];
        
        KIFTestCondition(successfulReset, error, @"Failed to reset some part of the application.");
        
        return KIFTestStepResultSuccess;
    }];
}

#pragma mark - Step Collections

+ (NSArray *)stepsToGoToLoginPage;
{
    NSMutableArray *steps = [NSMutableArray array];

    BPAppDelegate *delegate =  [UIApplication sharedApplication].delegate;
    
    // Do the actual reset for your app. Set successfulReset = NO if it fails.
    [delegate setAuthenticated:NO];

    
    // Dismiss the welcome message
    //[steps addObject:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"That's awesome!"]];
    
    // Tap the "I already have an account" button
    //[steps addObject:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"I already have an account."]];
    
    return steps;
}


@end
