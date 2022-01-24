//
//  main.m
//  SetArchPrefForURL
//
//  Created by Tapan Thaker on 1/24/22.
//

#import <Foundation/Foundation.h>
#import "LaunchServices.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    if(argc < 3) {
      NSLog(@"Usage: %s <path> <arch-pref>", argv[0]);
      return 1;
    }
    NSString *path = [NSString stringWithUTF8String:argv[1]];
    if(![[NSFileManager defaultManager]fileExistsAtPath:path]) {
      NSLog(@"Error: path does not exist %@", path);
      return 1;
    }
    NSURL *pathURL = [NSURL URLWithString:path];
    NSString *arch = [NSString stringWithUTF8String:argv[2]];

    _LSSetArchitecturePreferenceForApplicationURL(pathURL, arch);
  }
  return 0;
}
