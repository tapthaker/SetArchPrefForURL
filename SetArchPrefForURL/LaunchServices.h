//
//  LaunchServices.h
//  TestRunUnderRosetta
//
//  Created by Tapan Thaker on 1/24/22.
//

#ifndef LaunchServices_h
#define LaunchServices_h

#import <Foundation/Foundation.h>

void _LSSetArchitecturePreferenceForApplicationURL(NSURL *url, NSString* arch);

#endif /* LaunchServices_h */
