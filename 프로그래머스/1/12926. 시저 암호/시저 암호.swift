func solution(_ str: String, _ num: Int) -> String {
    let shiftedChars = str.map { char -> Character in
        guard char.isLetter, let scalar = char.unicodeScalars.first else { 
            return char 
        }
        
        let isUppercase = (65...90).contains(scalar.value)
        let isLowercase = (97...122).contains(scalar.value)
        
        let base = isUppercase ? 65 : (isLowercase ? 97 : 0)
        let alphabetCount = 26
        
        if base > 0 {
            let shiftedValue = Int(scalar.value) - base + num
            let wrappedValue = (shiftedValue % alphabetCount + alphabetCount) % alphabetCount + base
            return Character(Unicode.Scalar(wrappedValue)!)
        }
        
        return char
    }
    
    return String(shiftedChars)
}