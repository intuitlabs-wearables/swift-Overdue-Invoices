//
//  PageController.swift
//  IntuitWear
//
//  Created by Maidasani, Hitesh on 3/4/15.
//  Copyright (c) 2015 Hitesh Maidasani. All rights reserved.
//

import WatchKit
import Foundation
import IntuitWearKit

class PageController: WKInterfaceController {
    @IBOutlet weak var group: WKInterfaceGroup!
    @IBOutlet weak var invoiceName: WKInterfaceLabel!
    @IBOutlet weak var invoiceAmt: WKInterfaceLabel!


    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        print("PageController");
        print(context);
//        var page = context as! Page;
//        invoiceName.setText(context!.pageTitle);
//        invoiceAmt.setText(page.pageText);
//        group.setBackgroundImageNamed(page.pageBackground);
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
