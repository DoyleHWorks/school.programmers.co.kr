func solution(_ str: String, _ num: Int) -> String {
    let shiftedChars = str.map { char -> Character in
        if char.isLetter {
            if let scalar = char.unicodeScalars.first {
                let shiftedValue = scalar.value + UInt32(num)
                if (65...90).contains(scalar.value) {
                    if shiftedValue > 90 { return Character(Unicode.Scalar(shiftedValue - 26)!) }
                } else if (97...122).contains(scalar.value) {
                    if shiftedValue > 122 { return Character(Unicode.Scalar(shiftedValue - 26)!) }
                }
                return Character(Unicode.Scalar(shiftedValue)!)
            }
        }
        return char
    }
    
    return String(shiftedChars)
}
