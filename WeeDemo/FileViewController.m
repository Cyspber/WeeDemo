//
//  FileViewController.m
//  WeeDemo
//
//  Created by Wee on 11/9/14.
//  Copyright (c) 2014 Wallee. All rights reserved.
//

#import "FileViewController.h"

@interface FileViewController ()

@end

@implementation FileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)saveDataToFile {
    // File path
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:@"data.plist"];
    
    // Save data to File
    NSArray *array = @[@"A", @"B"];
    [array writeToFile:filePath atomically:YES];
    
    // get data from file
    NSArray *newArray;
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:filePath]) {
        newArray = [[NSArray alloc] initWithContentsOfFile:filePath];
    }
    else {
        newArray = [NSArray array];
    }
    NSLog(@"newArray = %@", newArray);
}

@end
