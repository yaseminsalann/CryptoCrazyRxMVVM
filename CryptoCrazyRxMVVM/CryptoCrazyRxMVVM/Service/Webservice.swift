//
//  Webservice.swift
//  CryptoCrazyRxMVVM
//
//  Created by Yasemin salan on 18.04.2025.
//

import Foundation

public enum CryptoError : Error {
    case serverError
    case parsingEror
}
class Webservice {
    
    func downloadCurrencies(url:URL,completion:@escaping (Result<[Crypto],CryptoError>)->()) {
        URLSession.shared.dataTask(with:url){data, response, error in
            
            if let error = error {
                print("Error: \(error)")
                //döndürebilmek için completion çalıştırıldı içerisinde bizim yazdığımız error yapısı kullanıldı.
                completion(.failure(.serverError))
                return
            } else if let data = data {
                
               let cryptoList = try? JSONDecoder().decode([Crypto].self, from:data)
                if let cryptoList = cryptoList {
                    completion(.success(cryptoList))
                }else{
                    completion(.failure(.parsingEror))
                }
            }
            
            
            
        }.resume() 
    }
}
