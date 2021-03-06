#import "SWGAdminApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGEvent.h"
#import "SWGUrl.h"


@interface SWGAdminApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGAdminApi

NSString* kSWGAdminApiErrorDomain = @"SWGAdminApiErrorDomain";
NSInteger kSWGAdminApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[SWGApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Create a new event
/// Create a new sports event/meet
///  @param eventName Event Name 
///
///  @param eventDescription Description 
///
///  @param eventCity City 
///
///  @param eventGameSport Sport 
///
///  @param eventStartDate Start Date Format DD/MM/YYYY 
///
///  @param eventEndDate End Date Format DD/MM/YYYY 
///
///  @param eventBackgroundPicture Picture URL 
///
///  @param eventLat Event ID 
///
///  @param eventLon Event ID 
///
///  @returns SWGEvent*
///
-(NSURLSessionTask*) createEventPostWithEventName: (NSString*) eventName
    eventDescription: (NSString*) eventDescription
    eventCity: (NSString*) eventCity
    eventGameSport: (NSString*) eventGameSport
    eventStartDate: (NSString*) eventStartDate
    eventEndDate: (NSString*) eventEndDate
    eventBackgroundPicture: (NSString*) eventBackgroundPicture
    eventLat: (NSString*) eventLat
    eventLon: (NSString*) eventLon
    completionHandler: (void (^)(SWGEvent* output, NSError* error)) handler {
    // verify the required parameter 'eventName' is set
    if (eventName == nil) {
        NSParameterAssert(eventName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"eventName"] };
            NSError* error = [NSError errorWithDomain:kSWGAdminApiErrorDomain code:kSWGAdminApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'eventDescription' is set
    if (eventDescription == nil) {
        NSParameterAssert(eventDescription);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"eventDescription"] };
            NSError* error = [NSError errorWithDomain:kSWGAdminApiErrorDomain code:kSWGAdminApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'eventCity' is set
    if (eventCity == nil) {
        NSParameterAssert(eventCity);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"eventCity"] };
            NSError* error = [NSError errorWithDomain:kSWGAdminApiErrorDomain code:kSWGAdminApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'eventGameSport' is set
    if (eventGameSport == nil) {
        NSParameterAssert(eventGameSport);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"eventGameSport"] };
            NSError* error = [NSError errorWithDomain:kSWGAdminApiErrorDomain code:kSWGAdminApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'eventStartDate' is set
    if (eventStartDate == nil) {
        NSParameterAssert(eventStartDate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"eventStartDate"] };
            NSError* error = [NSError errorWithDomain:kSWGAdminApiErrorDomain code:kSWGAdminApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'eventEndDate' is set
    if (eventEndDate == nil) {
        NSParameterAssert(eventEndDate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"eventEndDate"] };
            NSError* error = [NSError errorWithDomain:kSWGAdminApiErrorDomain code:kSWGAdminApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'eventBackgroundPicture' is set
    if (eventBackgroundPicture == nil) {
        NSParameterAssert(eventBackgroundPicture);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"eventBackgroundPicture"] };
            NSError* error = [NSError errorWithDomain:kSWGAdminApiErrorDomain code:kSWGAdminApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'eventLat' is set
    if (eventLat == nil) {
        NSParameterAssert(eventLat);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"eventLat"] };
            NSError* error = [NSError errorWithDomain:kSWGAdminApiErrorDomain code:kSWGAdminApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'eventLon' is set
    if (eventLon == nil) {
        NSParameterAssert(eventLon);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"eventLon"] };
            NSError* error = [NSError errorWithDomain:kSWGAdminApiErrorDomain code:kSWGAdminApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/create_event"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (eventName != nil) {
        queryParams[@"event_name"] = eventName;
    }
    if (eventDescription != nil) {
        queryParams[@"event_description"] = eventDescription;
    }
    if (eventCity != nil) {
        queryParams[@"event_city"] = eventCity;
    }
    if (eventGameSport != nil) {
        queryParams[@"event_game_sport"] = eventGameSport;
    }
    if (eventStartDate != nil) {
        queryParams[@"event_start_date"] = eventStartDate;
    }
    if (eventEndDate != nil) {
        queryParams[@"event_end_date"] = eventEndDate;
    }
    if (eventBackgroundPicture != nil) {
        queryParams[@"event_background_picture"] = eventBackgroundPicture;
    }
    if (eventLat != nil) {
        queryParams[@"event_lat"] = eventLat;
    }
    if (eventLon != nil) {
        queryParams[@"event_lon"] = eventLon;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGEvent*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGEvent*)data, error);
                                }
                            }];
}

///
/// Upload a picture
/// 
///  @param file File to upload Accepted formats jpg,jpeg,png 
///
///  @returns SWGUrl*
///
-(NSURLSessionTask*) uploadPicturePostWithFile: (NSURL*) file
    completionHandler: (void (^)(SWGUrl* output, NSError* error)) handler {
    // verify the required parameter 'file' is set
    if (file == nil) {
        NSParameterAssert(file);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"file"] };
            NSError* error = [NSError errorWithDomain:kSWGAdminApiErrorDomain code:kSWGAdminApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/upload_picture"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"file"] = file;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGUrl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGUrl*)data, error);
                                }
                            }];
}



@end
