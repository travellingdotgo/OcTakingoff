//
//  main.m
//  OcTakingoff
//
//  Created by user on 4/23/17.
//  Copyright © 2017 user. All rights reserved.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        NSDate *todaysDate = [NSDate date];
        NSLog(@"Today's date is %@", todaysDate);
    }
    
    return NSApplicationMain(argc, argv);
}
