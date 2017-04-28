//
//  AppDelegate.m
//  OcTakingoff
//
//  Created by user on 4/23/17.
//  Copyright © 2017 user. All rights reserved.
//

#import "AppDelegate.h"

#import "NetUtil.h"


@interface AppDelegate ()

@end

@implementation AppDelegate







- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    
    NetUtil *netutil = [[NetUtil alloc]init];
    NSString* nicAddr = [netutil getNicAddr:10];
    NSLog(@"nicAddr = %@",nicAddr);
    
    NSString* pubAddr = [netutil getPubAddr:10];
    NSLog(@"pubAddr = %@",pubAddr);
    
    
    int a = [netutil getA];
    NSLog(@"getA = %d",a);
    
    
    [netutil urlRequestOperation];
    
    
    /*
    Car *car = [[Car alloc]init];

    NSString * type = car->_type;
    NSLog(@"type = %d", 2);
    
    int A = [car showA:10];
    NSLog(@"A = %d",A);
    
    int B = [car showB:10];
    NSLog(@"B = %d",B);
    
    
    [car urlRequestOperation];
    */
    
    
    
    

    
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
