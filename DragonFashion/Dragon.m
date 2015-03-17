//
//  Dragon.m
//  DragonFashion
//
//  Created by Rockstar. on 3/17/15.
//  Copyright (c) 2015 Fantastik. All rights reserved.
//

#import "Dragon.h"

@implementation Dragon

- (instancetype)initWithFullName:(NSString *)name andClothingItem:(NSString *)clothingItem {
    if ((self = [super init])) {
        self.fullName = name;
        self.signatureClothingItem = clothingItem;
    }
    return self;
}

@end
