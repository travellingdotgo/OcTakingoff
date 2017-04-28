


//直接访问此网址 NSString *url = @"http://ip.taobao.com/service/getIpInfo.php?ip=myip";

#import <Foundation/Foundation.h>

@interface NetUtil : NSObject
{
    int interval_s;
    int time;
    
@public
    NSString *_ip;
}

- (void)run;
- (int)getA;
- (NSString *)getNicAddr:(int)a;
- (NSString *)getPubAddr:(int)a;

- (void)urlRequestOperation;

@end
