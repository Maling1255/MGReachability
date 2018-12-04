

#import "MGReachability.h"
#import <CoreTelephony/CTTelephonyNetworkInfo.h>
#import <CoreTelephony/CTCarrier.h>
#import <sys/utsname.h>
#import "Reachability.h"

@implementation MGReachability

+ (MGNetworkStatusType)networktype
{
    MGNetworkStatusType networkStatus;
    
    Reachability *reachability   = [Reachability reachabilityWithHostName:@"www.apple.com"];
    
    NetworkStatus internetStatus = [reachability currentReachabilityStatus];
    
    switch (internetStatus) {
        case ReachableViaWiFi:
            networkStatus = MGNetworkStatusReachableViaWiFi;
            break;
            
        case ReachableViaWWAN:
            networkStatus = MGNetworkStatusReachableViaWWAN;
            
            break;
            
        case NotReachable:
            networkStatus = MGNetworkStatusUnknown;
            
        default:
            networkStatus = MGNetworkStatusUnknown;
            break;
    }
    
    return networkStatus;
}


+ (NSString *)networkStatusIdentier
{
    NSString  *networkStatus;
    
    Reachability *reachability   = [Reachability reachabilityWithHostName:@"www.apple.com"];
    
    NetworkStatus internetStatus = [reachability currentReachabilityStatus];
    
    switch (internetStatus) {
        case ReachableViaWiFi:
            networkStatus = @"WIFI";
            break;
            
        case ReachableViaWWAN:
            networkStatus = [self getNetType];
            
            break;
            
        case NotReachable:
            networkStatus = @"NONE";
            
        default:
            networkStatus = @"NONE";
            break;
    }
    
    return networkStatus;
    
}


+ (NSString *)getNetType
{
    CTTelephonyNetworkInfo *info = [[CTTelephonyNetworkInfo alloc] init];
    NSString *currentStatus = info.currentRadioAccessTechnology;
    NSString *netconnType;
    if ([currentStatus isEqualToString:@"CTRadioAccessTechnologyGPRS"]) {
        netconnType = @"GPRS";
    }else if ([currentStatus isEqualToString:@"CTRadioAccessTechnologyEdge"]) {
        netconnType = @"2.75G EDGE";
    }else if ([currentStatus isEqualToString:@"CTRadioAccessTechnologyWCDMA"]){
        netconnType = @"3G";
    }else if ([currentStatus isEqualToString:@"CTRadioAccessTechnologyHSDPA"]){
        netconnType = @"3.5G HSDPA";
    }else if ([currentStatus isEqualToString:@"CTRadioAccessTechnologyHSUPA"]){
        netconnType = @"3.5G HSUPA";
    }else if ([currentStatus isEqualToString:@"CTRadioAccessTechnologyCDMA1x"]){
        netconnType = @"2G";
    }else if ([currentStatus isEqualToString:@"CTRadioAccessTechnologyCDMAEVDORev0"]){
        netconnType = @"3G";
    }else if ([currentStatus isEqualToString:@"CTRadioAccessTechnologyCDMAEVDORevA"]){
        netconnType = @"3G";
    }else if ([currentStatus isEqualToString:@"CTRadioAccessTechnologyCDMAEVDORevB"]){
        netconnType = @"3G";
    }else if ([currentStatus isEqualToString:@"CTRadioAccessTechnologyeHRPD"]){
        netconnType = @"HRPD";
    }else if ([currentStatus isEqualToString:@"CTRadioAccessTechnologyLTE"]){
        netconnType = @"4G";
    }
    return netconnType;
}

@end
