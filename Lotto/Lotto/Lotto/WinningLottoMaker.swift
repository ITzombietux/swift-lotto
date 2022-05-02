//
//  WinningLottoMaker.swift
//  Lotto
//
//  Created by 카카오VX on 2022/05/01.
//

import Foundation

protocol WinningLottoMakable {
    func makeWinningLotto() -> WinningLotto
}

struct WinningLottoMaker: WinningLottoMakable {
    private let lastWeekWinningNumber: String
    private let bonusNumber: Int
    
    init(lastWeekWinningNumber: String, bonusNumber: Int) {
        self.lastWeekWinningNumber = lastWeekWinningNumber
        self.bonusNumber = bonusNumber
    }
    
    func makeWinningLotto() -> WinningLotto {
        let lottoNumbers = StringUtiltity.splitLottoNumbers(to: lastWeekWinningNumber).map { LottoNumber(number: $0) }
        return WinningLotto(numbers: lottoNumbers, bonusNumber: bonusNumber)
    }
}
