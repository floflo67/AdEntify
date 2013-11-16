//
//  MediaResolution.h
//  AdEntify
//
//  Created by Florian Reiss on 05/11/2013.
//  Copyright (c) 2013 Florian Reiss. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MediaResolution : NSObject

@property (nonatomic, strong, readonly) NSString* url;
@property (nonatomic, readonly) int width;
@property (nonatomic, readonly) int height;

@end
