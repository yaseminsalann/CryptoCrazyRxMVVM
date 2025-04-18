//
//  ViewController.swift
//  CryptoCrazyRxMVVM
//
//  Created by Yasemin salan on 18.04.2025.
//

import UIKit
import RxSwift
import RxCocoa
class ViewController: UIViewController,UITableViewDelegate {
    
    @IBOutlet var indicatorView: UIActivityIndicatorView!
    

    @IBOutlet weak var tableView: UITableView!
    let crytoVM = CryptoViewModel()
    var cryptoList = [Crypto]()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.delegate = self
       // tableView.dataSource = self
        
        //tableView işini RxSwifte vermiş oluyoruz.
        tableView.rx.setDelegate(self).disposed(by: disposeBag)
        setupBindings()
        crytoVM.requestData()
        // Do any additional setup after loading the view.
    }
    
    private func setupBindings(){
        crytoVM
            .loading
            .bind(to: self.indicatorView.rx.isAnimating)
            .disposed(by: disposeBag)
        
        crytoVM
            .error
            .observe(on: MainScheduler.asyncInstance)
            .subscribe { errorString in
                print(errorString)
            }
            .disposed(by: disposeBag)
        
        /*crytoVM
            .cryptos
            .observe(on: MainScheduler.asyncInstance)
            .subscribe {cryptos in
                self.cryptoList = cryptos
                self.tableView.reloadData()
            }
            .disposed(by: disposeBag)*/
        crytoVM
            .cryptos
            .observe(on: MainScheduler.asyncInstance)
            .bind(to: tableView.rx.items(cellIdentifier: "cryptoCell", cellType: CryptoTableViewCell.self)){row,item,cell in
                
                cell.item = item
            }
            .disposed(by: disposeBag)
    }
   /* func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cryptoList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = cryptoList[indexPath.row].currency
        content.secondaryText = cryptoList[indexPath.row].price
        cell.contentConfiguration = content
        return cell
    }*/

}

