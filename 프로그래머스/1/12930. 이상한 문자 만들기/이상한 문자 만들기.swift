func solution(_ str: String) -> String {
    var mutableString = ""
    var shouldCapitalize = true
    
    for char in str.lowercased() {
        if char.isWhitespace {
            mutableString.append(char)
            shouldCapitalize = true
        } else {
            shouldCapitalize ? mutableString.append(char.uppercased()) : mutableString.append(char)
            shouldCapitalize.toggle()
        }
    }
    return mutableString
}

