import Foundation

func solution(_ friends: [String], _ gifts: [String]) -> Int {
    
    // 선물지수 딕셔너리
    var friendGiftPowers = friends.reduce(into: [String: Int]()) { dict, friend in
        dict[friend] = 0
    }
    
    // 주고받음 딕셔너리
    var friendGifts: [[String]:Int] = [:]
    for i in 0..<friends.count {
        for j in (i + 1)..<friends.count {
            friendGifts[ [friends[i], friends[j]] ] = 0
        }
    }
    
    // 받을선물 딕셔너리
    var friendGiftsComing = friends.reduce(into: [String: Int]()) { dict, friend in
        dict[friend] = 0
    }
    
    // 선물지수 & 주고받음 측정
    for gift in gifts {
        let giftArray = gift.components(separatedBy: .whitespaces)
        for key in friendGiftPowers.keys { // 선물지수 측정
            if key == giftArray[0] { friendGiftPowers[key]! += 1 }
            if key == giftArray[1] { friendGiftPowers[key]! -= 1 }
        }
        for key in friendGifts.keys { // 주고받음 측정
            if key[0] == giftArray[0] && key[1] == giftArray[1] { friendGifts[key]! += 1 }
            if key[0] == giftArray[1] && key[1] == giftArray[0] { friendGifts[key]! -= 1 }
        }
    }
    
    print(friendGiftPowers)
    print(friendGifts)
    
    // 받을선물 측정
    for key in friendGifts.keys {
        if friendGifts[key] == 0 {
            if friendGiftPowers[key[0]]! > friendGiftPowers[key[1]]! {
                friendGiftsComing[key[0]]! += 1
            } else if friendGiftPowers[key[0]]! < friendGiftPowers[key[1]]! {
                friendGiftsComing[key[1]]! += 1
            }
        } else if friendGifts[key]! > 0 {
            friendGiftsComing[key[0]]! += 1
        } else if friendGifts[key]! < 0 {
            friendGiftsComing[key[1]]! += 1
        }
    }
    
    print(friendGiftsComing)

    // 가장많이받는수 측정
    let result = friendGiftsComing.values.max()!
    return result
}
