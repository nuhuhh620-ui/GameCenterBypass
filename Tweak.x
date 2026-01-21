#import <Foundation/Foundation.h>
#import <GameKit/GameKit.h>
#import <dlfcn.h>

@interface GKLocalPlayer (PrivateGameCenterHook)
-(void)cancelAuthentication;
@end

%hook GKLocalPlayer

-(void)setAuthStartTimeStamp:(double)timestamp {
    // Call the private method to cancel auth
    if ([self respondsToSelector:@selector(cancelAuthentication)]) {
        [self cancelAuthentication];
    }
    %orig(timestamp);
}

%end

%ctor {
    NSLog(@"[GameCenterBypass] Loaded!");
}
