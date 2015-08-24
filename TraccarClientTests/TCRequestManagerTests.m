//
// Copyright 2015 Anton Tananaev (anton.tananaev@gmail.com)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "TCRequestManager.h"

@interface TCRequestManagerTests : XCTestCase

@end

@implementation TCRequestManagerTests

- (void)testSendRequest {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@"sendRequest"];
    
    [TCRequestManager sendRequest:[NSURL URLWithString:@"http://www.google.com"] completionHandler:^(BOOL success) {
        XCTAssertTrue(success);
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:5 handler:nil];
}

@end
