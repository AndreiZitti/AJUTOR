import Combine

class MovieApi: BaseAPI {
    
    func searchMovie(movieName: String) -> AnyPublisher<[MovieSearch], Error> {
            let params = [
                "query": movieName
            ]
            return request(method: .get, endpoint: "/search/movie", params: params) { json in
                return json["results"].arrayValue.map { movie in
                    return MovieSearch(id: movie["id"].intValue,
                                       title: movie["title"].stringValue,
                                       originalTitle: movie["original_title"].stringValue,
                                       adult: movie["adult"].boolValue,
                                       image: movie["poster_path"].stringValue)
                }
            }.eraseToAnyPublisher()
        }
    
}
