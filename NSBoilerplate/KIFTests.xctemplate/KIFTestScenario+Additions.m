//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "KIFTestScenario+___VARIABLE_classPrefix:identifier___Additions.h"
#import "KIFTestStep+___VARIABLE_classPrefix:identifier___Additions.h"

@implementation KIFTestScenario (___VARIABLE_classPrefix:identifier___Additions)


+ (id)scenarioToLogIn;
{
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"Test that a user can successfully log in."];
    [scenario addStep:[KIFTestStep stepToReset]];
    [scenario addStepsFromArray:[KIFTestStep stepsToGoToLoginPage]];
    
    [scenario addStep:[KIFTestStep stepToEnterText:@"test@example.com" intoViewWithAccessibilityLabel:@"Login User Name"]];
    [scenario addStep:[KIFTestStep stepToEnterText:@"123123" intoViewWithAccessibilityLabel:@"Login Password"]];
    
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"Log In"]];
    
    // Verify that the login succeeded
    [scenario addStep:[KIFTestStep stepToWaitForTappableViewWithAccessibilityLabel:@"Welcome"]];
    
    return scenario;
}

@end
