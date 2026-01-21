#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <GameKit/GameKit.h>

@interface GKLocalPlayer (Private)
-(void)cancelAuthentication;
@end

%hook GKLocalPlayer
-(void)setAuthStartTimeStamp:(double)timestamp {
    @try {
        if ([self respondsToSelector:@selector(cancelAuthentication)]) {
            [self cancelAuthentication];
        }
    } @catch (NSException *e) {}
    %orig;
}
%end
