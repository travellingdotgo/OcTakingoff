//
//  Car.m
//  OcTakingoff
//
//  Created by user on 4/23/17.
//  Copyright © 2017 user. All rights reserved.
//

#import "Car.h"


#import <netinet/in.h>
#import <sys/socket.h>
#import <arpa/inet.h>

#import <sys/socket.h>
#import <netinet/in.h>
#import <netinet6/in6.h>
#import <arpa/inet.h>
#import <ifaddrs.h>
#include <netdb.h>
#import <SystemConfiguration/SCNetworkReachability.h>


@implementation Car
-(void)run
{
    NSLog(@"The %@ car that has %d wheels is running...", _color, _wheels);
}

+ (void)playMusic
{

    NSString *name1 = [[NSString alloc] initWithString:@"zhangsan"];
    
    //便利构造器创建
    NSString *name2 = [NSString stringWithString:@"1234567890"];
    
    //常用字符串创建 直接创建
    NSString *name3 = @"1234567890";
    
    NSLog(@"music palying...");
}


+ (void)showIpAddresses
{
}

+ (NSString * ) foo {
    return @"ABC";
}

+ (NSString *)getIpAddresses:(int)a{
    NSString *address = @"error";
    struct ifaddrs *interfaces = NULL;
    struct ifaddrs *temp_addr = NULL;
    int success = 0;
    // retrieve the current interfaces - returns 0 on success
    success = getifaddrs(&interfaces);
    if (success == 0)
    {
        // Loop through linked list of interfaces
        temp_addr = interfaces;
        while(temp_addr != NULL)
        {
            if(temp_addr->ifa_addr->sa_family == AF_INET)
            {
                // Check if interface is en0 which is the wifi connection on the iPhone
                if([[NSString stringWithUTF8String:temp_addr->ifa_name] isEqualToString:@"en0"])
                {
                    // Get NSString from C String
                    address = [NSString stringWithUTF8String:inet_ntoa(((struct sockaddr_in *)temp_addr->ifa_addr)->sin_addr)];
                }
            }
            temp_addr = temp_addr->ifa_next;
        }
    }
    // Free memory
    freeifaddrs(interfaces);

    return address;
}


+ (int)showB:(int)a{
    NSString *address = @"error";
    struct ifaddrs *interfaces = NULL;
    struct ifaddrs *temp_addr = NULL;
    int success = 0;
    // retrieve the current interfaces - returns 0 on success
    success = getifaddrs(&interfaces);
    if (success == 0)
    {
        // Loop through linked list of interfaces
        temp_addr = interfaces;
        while(temp_addr != NULL)
        {
            if(temp_addr->ifa_addr->sa_family == AF_INET)
            {
                // Check if interface is en0 which is the wifi connection on the iPhone
                if([[NSString stringWithUTF8String:temp_addr->ifa_name] isEqualToString:@"en0"])
                {
                    // Get NSString from C String
                    address = [NSString stringWithUTF8String:inet_ntoa(((struct sockaddr_in *)temp_addr->ifa_addr)->sin_addr)];
                }
            }
            temp_addr = temp_addr->ifa_next;
        }
    }
    // Free memory
    freeifaddrs(interfaces);
    
    NSLog(@"address = %p", address);
    return a;
}




-(int)showA:(int)a{
    
    return a;
}

@end
