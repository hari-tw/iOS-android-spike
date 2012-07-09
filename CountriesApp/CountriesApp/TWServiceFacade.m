//
//  TWServiceFacade.m
//  CountriesApp
//
//  Created by Hari Balamani on 9/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TWServiceFacade.h"
#import "CountryMapper.h"

@implementation TWServiceFacade {
    RCResource * site;
}


- (id)init
{
    self = [super init];
    if (self)
    {
        site = [RCResource withURL:@"http://api.worldbank.org/"];
        site.timeout = 20;
        site.contentType = RESTClientContentTypeJSON;
    }
    return self;
}


- (NSArray *)getCountries
{
    RCResource *countries = [site resource:@"countries"];
    id o = [countries getWithQuery:[NSArray arrayWithObjects:@"format", @"json", nil]].result;
    NSLog(@"jsons response = %@", [o objectAtIndex:1]);

    CountryMapper *mapper = [[CountryMapper alloc] initWithData:[o objectAtIndex:1]];

    NSLog(@"Number of countries : %d", [[mapper map] count]);
    return [mapper map];
}
@end
