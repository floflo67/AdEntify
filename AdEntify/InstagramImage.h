//
//  InstagramImage.h
//  AdEntify
//
//  Created by Florian Reiss on 05/11/2013.
//  Copyright (c) 2013 Florian Reiss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InstagramVideo.h"

@interface InstagramImage : InstagramVideo
@property (nonatomic, weak, readonly) MediaResolution* thumbnail;

@end
