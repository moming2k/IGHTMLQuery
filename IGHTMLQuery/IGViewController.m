//
//  IGViewController.m
//  IGHTMLQuery
//
//  Created by Francis Chong on 20/8/13.
//  Copyright (c) 2013 Ignition Soft. All rights reserved.
//

#import <JavaScriptCore/JavaScriptCore.h>
#import "IGViewController.h"

#import "IGHTMLQuery.h"

@interface IGViewController ()

@end

@implementation IGViewController

- (void)viewDidLoad
{
    
    [super viewDidLoad];

    if (NSClassFromString(@"XCTestCase")) {
        return;
    }
    
    NSString *str = @"<p>    * Graphic: Sterling and gilt yields <Origin Href=\"Link\">http://bit.ly/2dgAXn1</Origin> </p><p>   * Graphic: World FX rates in 2017 <Origin Href=\"Link\">http://tmsnrt.rs/2egbfVh</Origin> </p><p>   * Graphic: Trade-weighted sterling since Brexit vote <Origin Href=\"Link\">http://tmsnrt.rs/2hwV9Hv</Origin> </p><p/><p>   By Ritvik Carvalho </p><p>   LONDON, April 13 (Reuters) - Sterling rose on Thursday to its highest level in six weeks versus the euro as a week of upbeat data soothed some investors' worries about the impact of Brexit on the UK economy. </p><p>   Steady inflation readings and forecast-beating wage growth numbers boosted sterling versus its chief peers this week, with the dollar and euro losing ground on escalating tensions over North Korea and Syria, and the rise of a far-left candidate in the French presidential race. </p><p>   Sterling was up 0.3 percent at 84.76 pence per euro, its highest level since February 27.  <Origin Href=\"QuoteRef\">EURGBP=D3</Origin> </p><p>   It was set for a fourth successive daily gain versus the dollar at $1.2552 <Origin Href=\"QuoteRef\">GBP=D3</Origin>, up 0.1 percent on the day and its highest since March 28. </p><p>   \"The market is still short sterling so any positive surprise regarding the UK economy may trigger a short rebound in sterling but the long-term view is still relatively bearish on sterling against the euro,\" said Piotr Matys, currency strategist at Rabobank. </p><p>   Speculators took short positions against the pound - which has lost nearly a fifth of its value since Britain voted to leave the European Union - to record high levels in March, according to U.S. CFTC data. <Origin Href=\"NewsSearch\">IMM/FX</Origin> </p><p>   The pound's fall since the EU referendum has benefited exporters, but driven up domestic inflation, thus squeezing consumers' spending power - a concern for investors who saw robust consumption as a factor propping up Britain's economy after the vote. </p><p>    Consumer prices increased in March by 2.3 percent - above the Bank of England's target - compared with a year earlier, while earnings including bonuses rose by an annual 2.3 percent in the three months to February. <Origin Href=\"StoryRef\">urn:newsml:reuters.com:*:nU8N13000D</Origin> <Origin Href=\"StoryRef\">urn:newsml:reuters.com:*:nL8N1HK1Q2</Origin> </p><p>   British manufacturers reported the fastest export growth in more than two years in early 2017 and the services sector also recovered to rack up its strongest sales growth since last June's Brexit vote, a business survey showed on Thursday. <Origin Href=\"StoryRef\">urn:newsml:reuters.com:*:nL8N1HK4VY</Origin> </p><p>   \"A weak sterling over the past few months will continue to fuel inflationary pressure ... So high inflation at a time when wage growth is stagnant doesn't bode well for UK consumers over the long-term horizon,\" Matys said. </p><p/><p>   &lt;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Graphic: Sterling and gilt yields     <Origin Href=\"Link\">http://bit.ly/2dgAXn1</Origin> Graphic: World FX rates in 2017    <Origin Href=\"Link\">http://tmsnrt.rs/2egbfVh</Origin> Graphic: Trade-weighted sterling since Brexit vote     <Origin Href=\"Link\">http://tmsnrt.rs/2hwV9Hv</Origin> </p><p>   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^&gt; </p><p>(Reporting by Ritvik Carvalho; Editing by Tom Heneghan) </p><p>((Ritvik.Carvalho@thomsonreuters.com; +44 2075429406; Reuters Messaging: ritvik.carvalho.thomsonreuters@reuters.net)) </p><p>Keywords: BRITAIN STERLING/OPEN </p><p>    </p>";
    
    IGHTMLDocument* doc = [[IGHTMLDocument alloc] initWithHTMLString:str error:nil];
    
    IGXMLNodeSet *origin_node = [doc queryWithXPath:@"//origin"];
    [origin_node enumerateNodesUsingBlock:^(IGXMLNode * _Nonnull node, NSUInteger idx, BOOL * _Nullable stop) {
        NSLog(@"origin node content = %@",node.text);
        [node addNextSiblingWithNode:[[IGXMLDocument alloc] initWithXMLString:@"<p>Test</p>" error:nil]];
    }];
    
    
    
    
    NSLog(@"Result = %@", [doc html]);
                           

//    dispatch_async(dispatch_get_main_queue(), ^{
//        NSLog(@"begin loop");
//        for (int i=0 ; i< 1000; i++) {
//            @autoreleasepool {
//                IGHTMLDocument* doc = [[IGHTMLDocument alloc] initWithHTMLString:@"<html><p>Hello World</p></html>" error:nil];
//                NSString* content = [[[doc queryWithXPath:@"//p"] firstObject] text];
//                NSLog(@"content from Objective-C = %@", content);
//                
//                JSVirtualMachine* vm = [[JSVirtualMachine alloc] init];
//                JSContext *context = [[JSContext alloc] initWithVirtualMachine:vm];
//                context[@"doc"] = doc;
//
//                JSValue* output = [context evaluateScript:@"doc.queryWithXPath('//p').first"];
//                NSLog(@"content from JavaScript = %@", [output toString]);
//            }
//        }
//        NSLog(@"end loop");
//    });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
