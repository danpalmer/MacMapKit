//
//  MKWebView.h
//  MapKit
//
//  Created by Rick Fillion on 10-12-12.
//  Copyright 2010 Centrix.ca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

@interface MKWebView : WebView 
{
    NSDate *lastHitTestDate;
	BOOL _userInteractionEnabled;
}

@property (nonatomic, readonly) NSDate *lastHitTestDate;
@property (assign) BOOL userInteractionEnabled;

@end
