//
//  ViewController.m
//  OcTakingoff
//
//  Created by user on 4/23/17.
//  Copyright © 2017 user. All rights reserved.
//

#import "ViewController.h"
#import "NetUtil.h"

@implementation ViewController


NetUtil *netutil;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"viewDidLoad");
    
    netutil = [[NetUtil alloc]init];
    NSString* nicAddr = [netutil getNicAddr:10];
    NSLog(@"nicAddr = %@",nicAddr);
    
    NSString* pubAddr = [netutil getPubAddr:10];
    NSLog(@"pubAddr = %@",pubAddr);
    
    int a = [netutil getA];
    NSLog(@"getA = %d",a);
    
    //初始化一个Invocation对象
    NSInvocation * invo = [NSInvocation invocationWithMethodSignature:[[self class] instanceMethodSignatureForSelector:@selector(init)]];
    [invo setTarget:self];
    [invo setSelector:@selector(timerAction)];
    NSTimer * timer = [NSTimer timerWithTimeInterval:2 invocation:invo repeats:YES];
    //加入主循环池中
    [[NSRunLoop mainRunLoop]addTimer:timer forMode:NSDefaultRunLoopMode];
    //开始循环
    [timer fire];
}


- (void)timerAction
{
    [netutil urlRequestOperation];
}



- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
    NSLog(@"setRepresentedObject");
}

-(void)dealloc{
    NSLog(@"dealloc:%@",[self class]);
}


@end
