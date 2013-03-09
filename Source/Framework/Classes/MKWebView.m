//
//  MKWebView.m
//  MapKit
//
//  Created by Rick Fillion on 10-12-12.
//  Copyright 2010 Centrix.ca. All rights reserved.
//

#import "MKWebView.h"


@implementation MKWebView

@synthesize lastHitTestDate;
@dynamic userInteractionEnabled;

- (void)dealloc
{
    [lastHitTestDate release];
    [super dealloc];
}

- (NSView *)hitTest:(NSPoint)aPoint
{
    if (_userInteractionEnabled) {
		[lastHitTestDate release];
		lastHitTestDate = [[NSDate date] retain];
		return [super hitTest:aPoint];
	} else {
		return nil;
	}
}

- (BOOL)userInteractionEnabled
{
	return _userInteractionEnabled;
}

- (void)setUserInteractionEnabled:(BOOL)userInteractionEnabled
{
	_userInteractionEnabled = userInteractionEnabled;
}

@end
