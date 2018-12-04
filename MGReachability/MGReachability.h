

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSUInteger, MGNetworkStatusType) {
    /** 未知网络*/
    MGNetworkStatusUnknown,
    /** 无网络*/
    MGNetworkStatusNotReachable,
    /** 手机网络*/
    MGNetworkStatusReachableViaWWAN,
    /** WIFI网络*/
    MGNetworkStatusReachableViaWiFi
};

NS_ASSUME_NONNULL_BEGIN

@interface MGReachability : NSObject

/**
 * 获取网络状态
 */
+ (MGNetworkStatusType)networktype;

/**
 * 获取具体的网络信号 4G 3G 2G GPRS
 */
+ (NSString *)networkStatusIdentier;

@end

NS_ASSUME_NONNULL_END
