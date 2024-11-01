import Foundation

func solution(_ price: Int, _ money: Int, _ count: Int) -> Int64{
    guard (1...2500).contains(price) else { print("1 ≤ (이용료) ≤ 2,500이어야 합니다.") ; return -1 }
    guard (1...1000000000).contains(money) else { print("1 ≤ (소지금액) ≤ 1,000,000,000이어야 합니다.") ; return -1 }
    guard (1...2500).contains(count) else { print("1 ≤ (이용횟수) ≤ 2,500이어야 합니다.") ; return -1 }
    
    // Algorithm 1
    /*
    var totalCost: Int64 = 0 

    for i in 1...count {
        totalCost += Int64(price * i)
    }

    let deficit = totalCost - Int64(money)
    return deficit > 0 ? deficit : 0
    */
    
    // Algorithm 2 - 등차수열의 합
    let totalCost: Int64 = ( Int64(count) * Int64(price) * (Int64(count) + 1) ) / 2
    let deficit = totalCost - Int64(money)
    
    return deficit > 0 ? deficit : 0
}