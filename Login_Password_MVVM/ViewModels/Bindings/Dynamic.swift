//
//  Dynamic.swift
//  MVVM Practice
//
//  Created by Dzhami on 05.10.2023.
//

import Foundation

class Dynamic<T> {
    typealias Listner = (T) -> Void
    private var listener: Listner?
    
    func bind(_ listener: Listner?) { // обновляет значение глобальной переменной новым значением
        self.listener = listener // привязка замыкания (слушателя) к данному свойству
    }
    
    var value: T {
        didSet {
            listener?(value) // будет устанавливаться при каждом изменении
        }
    }
    
    init(_ v: T) {
        value = v
    }
}
