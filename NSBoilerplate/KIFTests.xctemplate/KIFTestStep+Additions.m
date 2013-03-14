//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "KIFTestStep+___VARIABLE_classPrefix:identifier___Additions.h"
#import "___VARIABLE_classPrefix:identifier___AppDelegate.h"

@implementation KIFTestStep (___VARIABLE_classPrefix:identifier___Additions)

#pragma mark - Factory Steps

+ (id)stepToReset;
{
    return [KIFTestStep stepWithDescription:@"Reset the application state." executionBlock:^(KIFTestStep *step, NSError **error) {
        BOOL successfulReset = YES;
        
        ___VARIABLE_classPrefix:identifier___AppDelegate *delegate =  [UIApplication sharedApplication].delegate;
        
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

    ___VARIABLE_classPrefix:identifier___AppDelegate *delegate =  [UIApplication sharedApplication].delegate;
    
    // Do the actual reset for your app. Set successfulReset = NO if it fails.
    [delegate setAuthenticated:NO];

    
    // Dismiss the welcome message
    //[steps addObject:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"That's awesome!"]];
    
    // Tap the "I already have an account" button
    //[steps addObject:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"I already have an account."]];
    
    return steps;
}


@end
