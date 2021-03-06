#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
* Backhand Api
* Apis to access Backhand backend services
*
* OpenAPI spec version: 0.0.1
* Contact: sanket@blackcurrantapps.com
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/




@protocol SWGAvailability
@end

@interface SWGAvailability : SWGObject

/* DD/MM/YYYY [optional]
 */
@property(nonatomic) NSString* date;
/* 24Hrs format eg. 22:20 [optional]
 */
@property(nonatomic) NSString* time;

@end
