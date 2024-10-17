//
//  ViewController.swift
//  ATMConsultoria
//
//  Created by João Bueno on 17/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    } ()
    
    private lazy var clienteImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "menu_cliente")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    } ()
    
    private lazy var contatoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "menu_contato")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    } ()
    
    private lazy var empresaImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "menu_empresa")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    } ()
    
    private lazy var servicoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "menu_servico")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    } ()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        
        setupView()
    }

    private func setupView() {
        setHierarchy()
        setConstrants()
    }
    
    private func setHierarchy() {
        view.addSubview(logoImageView)
        view.addSubview(clienteImageView)
        view.addSubview(contatoImageView)
        view.addSubview(empresaImageView)
        view.addSubview(servicoImageView)
    }
    
    private func setConstrants() {
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            logoImageView.heightAnchor.constraint(equalToConstant: 300),
            
            clienteImageView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor),
            clienteImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            clienteImageView.trailingAnchor.constraint(equalTo: contatoImageView.leadingAnchor, constant: -2),
            clienteImageView.heightAnchor.constraint(equalToConstant: 150),
            clienteImageView.widthAnchor.constraint(equalTo: contatoImageView.widthAnchor),
            
            contatoImageView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor),
            contatoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            contatoImageView.heightAnchor.constraint(equalToConstant: 150),
            contatoImageView.widthAnchor.constraint(equalTo: clienteImageView.widthAnchor),
            
            empresaImageView.topAnchor.constraint(equalTo: clienteImageView.bottomAnchor, constant: 10),
            empresaImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            empresaImageView.trailingAnchor.constraint(equalTo: servicoImageView.leadingAnchor, constant: -2),
            empresaImageView.heightAnchor.constraint(equalToConstant: 150),
            empresaImageView.widthAnchor.constraint(equalTo: servicoImageView.widthAnchor),
            
            servicoImageView.topAnchor.constraint(equalTo: contatoImageView.bottomAnchor,constant: 10),
            servicoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            servicoImageView.heightAnchor.constraint(equalToConstant: 150),
            servicoImageView.widthAnchor.constraint(equalTo: empresaImageView.widthAnchor)
            
        ])

    }
}

