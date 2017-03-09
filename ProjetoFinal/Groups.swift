//
//  Animal.swift
//  ExemploTableView
//
//  Created by Tiago - Eldorado on 12/9/16.
//  Copyright © 2016 Tiago - Eldorado. All rights reserved.
//

import Foundation

// 1) Classe que define um Animal
class Groups {
    // 2) Properties: são os atributos da classe
    let nome: String
    let informacoes: String
    
    let nomeDaFoto: String
    
    // 3) Método de inicalização da classe
    // Com ele que instanciamos novos objetos
    init(nome: String, informacoes: String, nomeDaFoto: String) {
        self.nome = nome
        self.informacoes = informacoes
        
        self.nomeDaFoto = nomeDaFoto
    }
    
}

// 4) Classe de acesso aos dados
class GroupsDAO {
    
    // 5) Método de classe para retornar uma lista de animais
    static func getList() -> [Groups] {
        // Retornamos uma lista com animais
        return [
            Groups(nome: "Bel", informacoes: "Cachorro", nomeDaFoto: "cachorro"),
            Groups(nome: "Nat", informacoes: "Cisne", nomeDaFoto: "cisne"),
            Groups(nome: "Rob", informacoes: "Periquito", nomeDaFoto: "periquito"),
            Groups(nome: "Pete", informacoes: "Dromedário", nomeDaFoto: "dromedario"),
            Groups(nome: "Willy", informacoes: "Wallaby", nomeDaFoto: "wallaby")
        ]
    }
    
}
