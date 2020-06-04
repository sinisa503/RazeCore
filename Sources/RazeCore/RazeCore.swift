import UIKit

public class RazeCore {
  
  /// Allows you to convert a 6 digit string into a UIColor instance
  /// - Warning: The "#" simbol is stripped out of the string
  /// - Parameters:
  ///   - hexString:A 6-digit haxadecimal string
  ///   - alpha: A number between 0.0 and 1.0 indicating transparancy
  /// - Returns: UIColor defined by hex string
  internal class func colorFromHexDecString(_ hexString: String, alpha: CGFloat = 1.0) -> UIColor {
    let r, g, b: CGFloat
    let offset = hexString.hasPrefix("#") ? 1 : 0
    let start = hexString.index(hexString.startIndex, offsetBy: offset)
    let hexColor = String(hexString[start...])
    let scanner = Scanner(string: hexColor)
    var hexNumber: UInt64 = 0
    if scanner .scanHexInt64(&hexNumber) {
      r = CGFloat((hexNumber & 0xff0000) >> 16) / 255
      g = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
      b = CGFloat((hexNumber & 0x0000ff)) / 255
      return UIColor(red: r, green: g, blue: b, alpha: alpha)
    }
    return UIColor(red: 0, green: 0, blue: 0, alpha: alpha)
  }
  
  /// The most eye pleasing color known to all humanity
  public static var razeColor: UIColor {
    return self.colorFromHexDecString("006736")
  }
}
