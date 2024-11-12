import Foundation

func solution(_ t: String, _ p: String) -> Int {

//     var mutableT = t
//     var resultCount = 0
//     let intP = Int(p)!
    
//     while mutableT.count != p.count {
//         var numString = ""
        
//         for char in mutableT {
//             numString.append(char)
//             if numString.count == p.count { break }
//         }
        
//         if Int(numString)! <= intP { resultCount += 1 }
        
//         mutableT.removeFirst()
//     }
    
//     if Int(mutableT)! <= intP { resultCount += 1 }
    
//     return resultCount
    
    let intP = Int(p)!
    let pCount = p.count
    var resultCount = 0
    
    for i in 0...(t.count - pCount) {
        let startIndex = t.index(t.startIndex, offsetBy: i)
        let endIndex = t.index(startIndex, offsetBy: pCount)
        let substring = String(t[startIndex..<endIndex])
        
        if let intSubstring = Int(substring), intSubstring <= intP {
            resultCount += 1
        }
    }
    
    return resultCount

}