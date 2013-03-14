//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "Kiwi.h"
#import <AFHTTPRequestOperationLogger/AFHTTPRequestOperationLogger.h>

SPEC_BEGIN(ExampleKiwiSpec)

describe(@"App",^{
    
    [[AFHTTPRequestOperationLogger sharedLogger] startLogging];
    [[AFHTTPRequestOperationLogger sharedLogger] setLevel:AFLoggerLevelInfo];
    
    context(@"when starting", ^{
        
        pending(@"do it", ^{
        
            // Something.
            
        });

    });
    
});

SPEC_END