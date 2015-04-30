//
//  InterfaceController.swift
//  IntuitWear WatchKit Extension
//
//  Created by Maidasani, Hitesh on 3/4/15.
//  Copyright (c) 2015 Hitesh Maidasani. All rights reserved.
//

import WatchKit
import Foundation
import IntuitWearKit

class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    override func handleActionWithIdentifier(identifier: String?, forLocalNotification localNotification: UILocalNotification) {
        
    }
    
    override func handleActionWithIdentifier(identifier: String?, forRemoteNotification remoteNotification: [NSObject : AnyObject]) {
        var notificationContent = IWearNotificationContent(string: remoteNotification["payload"] as! String, error: nil);
        if(identifier == "viewOverdueInvoices") {
            let total = notificationContent.pages.count;
            var controllerNames = [String]();
            for  x in 0...total{
                controllerNames.append("pageController");
            }
            var pages = [Page]();
            for page in notificationContent.pages {
                pages.append(page as! Page);
            }
            presentControllerWithNames(controllerNames, contexts: pages);
//            presentControllerWithNames(controllerNames, contexts: notificationContent.pages);
        }
    }


}
