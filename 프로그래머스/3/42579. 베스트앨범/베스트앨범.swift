import Foundation

func solution(_ genres: [String], _ plays: [Int]) -> [Int] {
	// 곡 정보 (Key: 곡 고유번호, Value: (장르, 재생 수))
    var songInfo = Dictionary(uniqueKeysWithValues: zip(genres.indices, zip(genres, plays)))
    
    // 장르별 재생수 취합 (Key: 장르, Value: 재생수)
    var totalPlaysByGenre: [String: Int] = [:]
    for info in songInfo.values {
        let genre = info.0, plays = info.1
        totalPlaysByGenre[genre, default: 0] += plays
    }
    
    // 장르 순위
    let genreRank = totalPlaysByGenre.keys.sorted {
    	totalPlaysByGenre[$0]! > totalPlaysByGenre[$1]!
    }
    
    // 곡 순위
    let songSorted = songInfo
        .sorted { $0.key < $1.key } // 고유 번호 정렬
        .sorted { $0.value.1 > $1.value.1 } // 재생 수 정렬
        .sorted { genreRank.firstIndex(of: $0.value.0)! < genreRank.firstIndex(of: $1.value.0)! } // 장르 순위 정렬

	// 베스트앨범 추출
    var resultAlbum: [Int] = []
    var genrePicked: [String:Int] = [:]
    
    for (key, value) in songSorted {
        let genre = value.0
        if genrePicked[genre, default: 0] < 2 {
            resultAlbum.append(key)
            genrePicked[genre, default: 0] += 1 
        }
    }
    
    return resultAlbum
}