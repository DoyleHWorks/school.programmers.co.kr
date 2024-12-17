import Foundation

func solution(_ begin: String, _ target: String, _ words: [String]) -> Int {
    guard words.contains(target) else { return 0 } // 변환할 수 없는 경우 0을 return
    
    // graph 만들기
    var graph: [String:[String]] = [:]
    let allWords = [begin] + words
    
    func isDifferenceOneLetter(_ word1: String, _ word2: String) -> Bool {
        let array1 = Array(word1)
        let array2 = Array(word2)
        var diffCount = 0
        
        for i in 0..<array1.count {
            if array1[i] != array2[i] {
                diffCount += 1
            }
            if diffCount > 1 { return false }
        }
        return diffCount == 1
    }
    
    for i in 0..<allWords.count {
        let word1 = allWords[i]
        for j in 0..<allWords.count {
            let word2 = allWords[j]
            
            if isDifferenceOneLetter(word1, word2) {
                graph[word1, default: []].append(word2)
            }
        }
    }
    
    // BFS
    func bfs(_ begin: String, _ target: String, _ graph: [String:[String]]) -> Int {
        var visited: Set<String> = []
        var queue: [(word: String, depth: Int)] = []
        queue.append((begin, 0))
        visited.insert(begin)
        
        while !queue.isEmpty {
            let current = queue.removeFirst()
            let word = current.word
            let depth = current.depth
            
            if word == target {
                return depth
            }
            
            for nextWord in graph[word, default: []] {
                guard !visited.contains(nextWord) else { continue }
                visited.insert(nextWord)
                queue.append((nextWord, depth + 1))
            }
        }
        return 0
    }
    
    return bfs(begin, target, graph)
}