


//直接访问此网址 NSString *url = @"http://ip.taobao.com/service/getIpInfo.php?ip=myip";

#import <Foundation/Foundation.h>

@interface NetUtil : NSObject
{
    int _wheels;
    
@public
    NSString *_ip;
}

- (void)run;
- (int)getA;
- (NSString *)getNicAddr:(int)a;
- (NSString *)getPubAddr:(int)a;

- (void)urlRequestOperation;

@end
