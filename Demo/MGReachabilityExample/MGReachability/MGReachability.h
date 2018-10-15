

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSUInteger, AWNetworkStatusType) {
    /** 未知网络*/
    AWNetworkStatusUnknown,
    /** 无网络*/
    AWNetworkStatusNotReachable,
    /** 手机网络*/
    AWNetworkStatusReachableViaWWAN,
    /** WIFI网络*/
    AWNetworkStatusReachableViaWiFi
};

NS_ASSUME_NONNULL_BEGIN

@interface MGReachability : NSObject

/**
 * 获取网络状态
 */
+ (AWNetworkStatusType)networktype;

/**
 * 获取具体的网络信号 4G 3G 2G GPRS
 */
+ (NSString *)networkStatusIdentier;

@end

NS_ASSUME_NONNULL_END
