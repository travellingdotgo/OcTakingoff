//
//  Car.h
//  OcTakingoff
//
//  Created by user on 4/23/17.
//  Copyright © 2017 user. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    int _wheels;
    NSString *_color;

    @public
    NSString *_ip;
    
    @public
    NSString *_type;
}
- (void)run;
+ (void)playMusic;
+ (NSString *)getIpAddresses:(int)a;
- (int)showA:(int)a;
- (int)showB:(int)a;
+ (NSString * ) foo:(int)a;


- (void)urlRequestOperation;

@end
