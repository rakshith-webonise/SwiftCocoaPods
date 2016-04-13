
import Foundation
import UIKit

let ALERT_TITLE_OK = "Ok"

var alertController : UIAlertController!
var alertDefaultAction : UIAlertAction!

//MARK:show Alert View
func showAlertWithMessage(message :String,viewController : UIViewController){
    
    alertController = UIAlertController(title: "", message: message, preferredStyle: .Alert)
    alertDefaultAction = UIAlertAction(title:ALERT_TITLE_OK , style: .Default, handler: nil)
    alertController.addAction(alertDefaultAction)
    
    viewController.presentViewController(alertController, animated: true, completion: nil)
}

//MARK:AlertView with custom cancel title
func showAlertWithMessage(message :String, cancelButtonTitle: String,viewController : UIViewController){
    
    alertController = UIAlertController(title: "", message: message, preferredStyle: .Alert)
    alertDefaultAction = UIAlertAction(title: cancelButtonTitle, style: .Default, handler: nil)
    alertController.addAction(alertDefaultAction)
    
    viewController.presentViewController(alertController, animated: true, completion: nil)
    
}

//MARK:AlertView with custom title
func showAlertWithMessage(message :String, title: String, tag : Int,viewController : UIViewController){
    alertController = UIAlertController(title: title , message: message, preferredStyle: .Alert)
    alertDefaultAction = UIAlertAction(title: ALERT_TITLE_OK, style: .Default, handler: nil)
    alertController.addAction(alertDefaultAction)
    
    viewController.presentViewController(alertController, animated: true, completion: nil)
}

//MARK:Alert with custom title and message
func showAlertWithMessage(message :String, title: String,cancelButtonTitle: String,viewController : UIViewController){
    
    alertController = UIAlertController(title: title , message: message, preferredStyle: .Alert)
    alertDefaultAction = UIAlertAction(title:cancelButtonTitle , style: .Default, handler: nil)
    alertController.addAction(alertDefaultAction)
    
    viewController.presentViewController(alertController, animated: true, completion: nil)
    
}

//MARK:Alert View with one button and handler
func showAlertWithMessage(message :String, viewController : UIViewController, handler : ((UIAlertAction) -> Void),defaultButtonLabel : String){
    
    alertController = UIAlertController(title: "" , message: message, preferredStyle: .Alert)
    alertDefaultAction = UIAlertAction(title:defaultButtonLabel, style: .Default, handler: handler)
    alertController.addAction(alertDefaultAction)
    
    viewController.presentViewController(alertController, animated: true, completion: nil)
}

//MARK:AlertView with two buttons and action handler
func showAlertWithMessage(title : String ,message :String, viewController : UIViewController, handler : ((UIAlertAction) -> Void),customButtonOneLabel : String,customButtonTwoLabel : String){
    
    alertController = UIAlertController(title: title , message: message, preferredStyle: .Alert)
    let alertFirstAction = UIAlertAction(title:customButtonOneLabel, style: .Default, handler: handler)
    let alertSecondAction = UIAlertAction(title:customButtonTwoLabel, style: .Default, handler: handler)
    alertController.addAction(alertFirstAction)
    alertController.addAction(alertSecondAction)
    
    viewController.presentViewController(alertController, animated: true, completion: nil)
}
