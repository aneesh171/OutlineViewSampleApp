//
//  SampleAppDelegate.h
//  OutlineViewSampleApp
//
//  Created by Aneesh@ on 4/1/14.
//  Copyright (c) 2014 Aneesh@. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SampleAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic,strong) NSArray *array;
@property (assign) IBOutlet NSTreeController *outlineViewTreeController;

- (IBAction)copySpecific:(id)sender;

@end
