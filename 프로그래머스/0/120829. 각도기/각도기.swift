import Foundation

func solution(_ angle: Int) -> Int? {
    guard angle > 0, angle <= 180 else {
        print("0 < angle ≤ 180이어야 합니다.")
        return nil
    }
    
    switch angle {
    case 1..<90:
        return 1
    case 90:
        return 2
    case 91..<180:
        return 3
    case 180:
        return 4
    default:
        return nil
    }
}