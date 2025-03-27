import Foundation

func solution(_ s:String) -> Int {
    let str0 = s.replacingOccurrences(of: "zero", with: "0")
    let str1 = str0.replacingOccurrences(of: "one", with: "1")
    let str2 = str1.replacingOccurrences(of: "two", with: "2")
    let str3 = str2.replacingOccurrences(of: "three", with: "3")
    let str4 = str3.replacingOccurrences(of: "four", with: "4")
    let str5 = str4.replacingOccurrences(of: "five", with: "5")
    let str6 = str5.replacingOccurrences(of: "six", with: "6")
    let str7 = str6.replacingOccurrences(of: "seven", with: "7")
    let str8 = str7.replacingOccurrences(of: "eight", with: "8")
    let str9 = str8.replacingOccurrences(of: "nine", with: "9")
    
    return Int(str9)!
}