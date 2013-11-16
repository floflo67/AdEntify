//
//  InstagramVideo.h
//  AdEntify
//
//  Created by Florian Reiss on 05/11/2013.
//  Copyright (c) 2013 Florian Reiss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MediaResolution.h"

@interface InstagramVideo : NSObject
@property (nonatomic, weak, readonly) MediaResolution* lowResolution;
@property (nonatomic, weak, readonly) MediaResolution* standardResolution;

@end
