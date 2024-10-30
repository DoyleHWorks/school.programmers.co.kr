func solution(_ num:Int) -> String {
    guard num != 0 else {
        return "Even"
    }
    return ((num % 2) == 0) ? "Even" : "Odd"
}