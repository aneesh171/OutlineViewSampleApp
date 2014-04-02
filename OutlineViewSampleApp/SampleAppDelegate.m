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
        if ([[self.outlineViewTreeController selectedObjects] count] > 0)
        {
            isValid = YES;
        }
        else
        {
            isValid = NO;
        }
    }
    
    return isValid;
}

- (IBAction)copySpecific:(id)sender
{
    NSLog(@"dafa %@",[self.outlineViewTreeController selectedObjects]);
    
    NSDictionary *dict = [[self.outlineViewTreeController selectedObjects] objectAtIndex:0];
    
    NSString *pboardString = [NSString stringWithString:[dict valueForKey:@"category"]];
    
    pboardString = [pboardString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    NSPasteboard *pb = [NSPasteboard generalPasteboard];
    
    [pb declareTypes:@[NSTabularTextPboardType, NSStringPboardType] owner:self];
    [pb setString:pboardString forType:NSTabularTextPboardType];
    [pb setString:pboardString forType:NSStringPboardType];
}

@end
