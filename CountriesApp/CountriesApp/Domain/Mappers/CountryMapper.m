//
// Created by hari on 9/07/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "CountryMapper.h"
#import "Country.h"


@interface CountryMapper ()
@property(nonatomic, strong) NSArray *jsonData;

@end

@implementation CountryMapper {

@private
    NSArray *_jsonData;
}
@synthesize jsonData = _jsonData;


- (id)initWithData:(NSArray *)data {
          self.jsonData = data;
    return  self;
}

- (NSArray * ) map
{
    NSMutableArray *countries = [[NSMutableArray alloc] init];

    for (id data in _jsonData)
    {
        Country *country = [[Country alloc] init];
        country.id = [data valueForKey:@"id"];
        country.name = [data valueForKey:@"name"];
        country.capital = [data valueForKey:@"capitalCity"];

        [countries addObject:country];
    }

    return countries;
}
@end