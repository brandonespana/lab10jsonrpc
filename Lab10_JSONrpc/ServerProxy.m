////
////  ServerProxy.m
////  Lab10_JSONrpc
////
////  Created by biespana on 4/6/15.
////  Copyright (c) 2015 biespana. All rights reserved.
////
//
//#import "ServerProxy.h"
//@interface ServerProxy()
//
//@property (unsafe_unretained, atomic) SEL action;
//@property (strong, atomic) id target;
//@property (strong, atomic) NSMutableData * receivedData;
//@property (strong, nonatomic) NSString * urlString;
//
//@end
//
//
//@implementation ServerProxy
//-(id) initWithTarget:(id)target action:(SEL)action{
//    if (self = [super init]){
//        self.target = target;
//        self.action = action;
//        NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"Server_URL" ofType:@"plist"];
//        NSDictionary * serverDictionary = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
//        self.urlString = [serverDictionary objectForKey:@"server_url"];
//    }
//    return self;
//}
//
//-(NSArray*) getNames{
//    //Set up the params
//    //set the method names
//    
//    NSArray * parms = @[];
//    if ([self dispatchCall: @"getNames" withParms: parms]) {
//        //ret = YES;
//    }
//    //return ret;
//}
//
//
//// called by the math methods to package call, convert to json, and send request to server.
//- (BOOL) dispatchCall: (NSString*) method withParms: (NSArray*) parms{
//    BOOL ret = NO;
//    NSNumber * ID = [NSNumber numberWithInt:iden++];
//    NSDictionary * rpcDict = @{@"jsonrpc":@"2.0",  @"method":method, @"params":parms, @"id":ID};
//    NSError *error;
//    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:rpcDict
//                        //options:NSJSONWritingPrettyPrinted
//                                                       options:0
//                                                         error:&error];
//    NSLog(@"jsonData: %@",[[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding]);
//    self.receivedData = [NSMutableData data];
//    NSURL *url = [NSURL URLWithString:self.urlString];
//    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
//    if(request){
//        request.URL = url;
//        request.HTTPMethod = @"POST";
//        [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
//        [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
//        request.HTTPBody= jsonData;
//        ret = YES;
//        NSURLConnection *connection = [NSURLConnection connectionWithRequest:request delegate:self];
//        [connection start];
//    }
//    return ret;
//}
//@end
