func solution(_ genres: [String], _ plays: [Int]) -> [Int] {
    var songInfo = Dictionary(uniqueKeysWithValues: zip(genres.indices, zip(genres, plays)))
    var totalPlaysByGenre: [String: Int] = [:]
    
    for info in songInfo.values {
        let genre = info.0, plays = info.1
        totalPlaysByGenre[genre, default: 0] += plays
    }
    
    let genreByPlays = totalPlaysByGenre
        .sorted(by: { $0.value > $1.value })
        .map({ $0.key })
    
    let genreRank = Dictionary(uniqueKeysWithValues: zip(genreByPlays, genreByPlays.indices))
    
    let songSorted = songInfo
        .sorted { $0.key < $1.key }
        .sorted { $0.value.1 > $1.value.1 }
        .sorted { genreRank[$0.value.0, default: -1] < genreRank[$1.value.0, default: -1] }

    var resultAlbum: [Int] = []
    var genrePicked1: Set<String> = []
    var genrePicked2: Set<String> = []
    for (key, value) in songSorted {
        let genre = value.0
        if !genrePicked1.contains(genre) {
            resultAlbum.append(key)
            genrePicked1.insert(genre)
        } else if !genrePicked2.contains(genre) {
            resultAlbum.append(key)
            genrePicked2.insert(genre)
        } else { continue }
    }
    return resultAlbum
}