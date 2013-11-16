//
//  InstagramPicture.h
//  AdEntify
//
//  Created by Florian Reiss on 05/11/2013.
//  Copyright (c) 2013 Florian Reiss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InstagramImage.h"
#import "InstagramVideo.h"

@interface InstagramPicture : NSObject

@property (nonatomic, strong, readonly) InstagramImage* images;
@property (nonatomic, strong, readonly) InstagramVideo* videos;

@end
