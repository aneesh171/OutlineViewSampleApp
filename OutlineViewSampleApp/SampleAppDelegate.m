//
//  SampleAppDelegate.m
//  OutlineViewSampleApp
//
//  Created by Aneesh@ on 4/1/14.
//  Copyright (c) 2014 Aneesh@. All rights reserved.
//

#import "SampleAppDelegate.h"

@implementation SampleAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSString* plistPath = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"];
    
    self.array = [NSArray arrayWithContentsOfFile:plistPath];
}

- (BOOL)validateMenuItem:(NSMenuItem *)menuItem
{
    BOOL isValid = YES;
    
    if ([menuItem action] == @selector(copySpecific:))
    {
        isValid = YES;
    }
    
    return isValid;
}

- (IBAction)copySpecific:(id)sender
{
    NSLog(@"dafa %@",[self.outlineViewTreeController selectedObjects]);
}

@end
