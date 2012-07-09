//
//  TWServiceFacade.h
//  CountriesApp
//
//  Created by Hari Balamani on 9/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RESTClient.h"

@interface TWServiceFacade : NSObject

- (NSArray *)getCountries;
@end
