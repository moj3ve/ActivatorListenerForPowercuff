/* Activator Listeners for Powercuff - allows you to automate Powercuff tweak using Activator
 * Copyright (C) 2020 Tomasz Poliszuk
 *
 * Activator Listeners for Powercuff is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Activator Listeners for Powercuff is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Activator Listeners for Powercuff. If not, see <https://www.gnu.org/licenses/>.
 */


#import <libactivator/libactivator.h>
#import <UIKit/UIKit.h>
#import <notify.h>

@interface NSUserDefaults (UFS_Category)
- (id)objectForKey:(NSString *)key inDomain:(NSString *)domain;
- (void)setObject:(id)value forKey:(NSString *)key inDomain:(NSString *)domain;
@end

@interface ActivatorListenerForPowercuffNone : NSObject <LAListener>
@end
@implementation ActivatorListenerForPowercuffNone
+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorlistenerforpowercuff.none"];
	[pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"PowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
	[[NSUserDefaults standardUserDefaults] setObject:@NO forKey:@"RequireLowPowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
}
- (BOOL)activator:(LAActivator *)activator requiresNeedsPoweredDisplayForListenerName:(NSString *)listenerName {
	return NO;
}
- (void)dealloc {
	[super dealloc];
}
@end

@interface ActivatorListenerForPowercuff : NSObject <LAListener>
@end
@implementation ActivatorListenerForPowercuff
+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorlistenerforpowercuff.nominal"];
	[pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"PowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
	[[NSUserDefaults standardUserDefaults] setObject:@NO forKey:@"RequireLowPowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
}
- (BOOL)activator:(LAActivator *)activator requiresNeedsPoweredDisplayForListenerName:(NSString *)listenerName {
	return NO;
}
- (void)dealloc {
	[super dealloc];
}
@end

@interface ActivatorListenerForPowercuffLight : NSObject <LAListener>
@end
@implementation ActivatorListenerForPowercuffLight
+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorlistenerforpowercuff.light"];
	[pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	[[NSUserDefaults standardUserDefaults] setObject:@2 forKey:@"PowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
	[[NSUserDefaults standardUserDefaults] setObject:@NO forKey:@"RequireLowPowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
}
- (BOOL)activator:(LAActivator *)activator requiresNeedsPoweredDisplayForListenerName:(NSString *)listenerName {
	return NO;
}
- (void)dealloc {
	[super dealloc];
}
@end

@interface ActivatorListenerForPowercuffModerate : NSObject <LAListener>
@end
@implementation ActivatorListenerForPowercuffModerate
+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorlistenerforpowercuff.moderate"];
	[pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	[[NSUserDefaults standardUserDefaults] setObject:@3 forKey:@"PowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
	[[NSUserDefaults standardUserDefaults] setObject:@NO forKey:@"RequireLowPowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
}
- (BOOL)activator:(LAActivator *)activator requiresNeedsPoweredDisplayForListenerName:(NSString *)listenerName {
	return NO;
}
- (void)dealloc {
	[super dealloc];
}
@end

@interface ActivatorListenerForPowercuffHeavy : NSObject <LAListener>
@end
@implementation ActivatorListenerForPowercuffHeavy
+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorlistenerforpowercuff.heavy"];
	[pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	[[NSUserDefaults standardUserDefaults] setObject:@4 forKey:@"PowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
	[[NSUserDefaults standardUserDefaults] setObject:@NO forKey:@"RequireLowPowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
}
- (BOOL)activator:(LAActivator *)activator requiresNeedsPoweredDisplayForListenerName:(NSString *)listenerName {
	return NO;
}
- (void)dealloc {
	[super dealloc];
}
@end
