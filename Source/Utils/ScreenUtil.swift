import UIKit

enum ScreenUtil {
    
    static var screen: UIScreen? {
        UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .first?
            .screen
    }

    static var scale: CGFloat {
        screen?.nativeScale ?? UIScreen.main.nativeScale
    }

    static var bounds: CGRect {
        screen?.bounds ?? UIScreen.main.bounds
    }
    
}

extension UIView {
    
    var screen: UIScreen? {
        window?.windowScene?.screen
    }
    
}

extension UIViewController {
    
    var screen: UIScreen? {
        view.screen
    }
    
}
