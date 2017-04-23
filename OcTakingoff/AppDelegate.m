//
//  AppDelegate.m
//  OcTakingoff
//
//  Created by user on 4/23/17.
//  Copyright © 2017 user. All rights reserved.
//

#import "AppDelegate.h"
#import "Car.h"


@interface AppDelegate ()

@end

@implementation AppDelegate







- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    Car *car = [[Car alloc]init];

    NSString * type = car->_type;
    NSLog(@"type = %d", 2);
   
    
    int A = [car showA:10];
    NSLog(@"A = %d",A);
    
    //int B = [car showB:10];
    //NSLog(@"B = %d",B);
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
