//
//  CryptoViewModel.swift
//  CryptoCrazyRxMVVM
//
//  Created by Yasemin salan on 18.04.2025.
//

import Foundation
import RxSwift
import RxCocoa


class CryptoViewModel{
    
       public let cryptos : PublishSubject<[Crypto]> = PublishSubject()
        public let loading: PublishSubject<Bool> = PublishSubject()
        public let error : PublishSubject<String> = PublishSubject()
    func requestData(){
        //fonksiyonun en başında bunu true yaparsak loading animasyonu çalışır.
        self.loading.onNext(true)
        let url = URL(string:"https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")!
        Webservice().downloadCurrencies(url: url){ result in
            self.loading.onNext(false)
            switch result {
                
            case .success(let cryptos):
                self.cryptos.onNext(cryptos)
            case .failure(let error):
                switch error {
                case .parsingEror:
                    self.error.onNext("Parsing Error")
                case .serverError:
                    self.error.onNext("Server Error")

                }
            }
        }

    }
}
