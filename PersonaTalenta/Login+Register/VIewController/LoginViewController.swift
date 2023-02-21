//
//  LoginViewController.swift
//  PersonaTalenta
//
//  Created by Chrismanto Natanail Manik on 21/02/23.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}



 
class ReusableImage: UIImageView{
    enum ImageStyle{
        case loginLogo
        case registerLogo
    }
    
    public private(set) var style: ImageStyle
    public private(set) var imgName: String?
    public private(set) var imgUrl: String?
    
    init(style: ImageStyle, imgName: String? = nil, imgUrl: String? = nil) {
        self.style = style
        self.imgName = imgName
        self.imgUrl = imgUrl
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init code has not been implemented")
    }
    
    func configureImageView(){
        if let name = imgName{
            self.image = UIImage(named: name)
        }
    }
    
    func configureImgStyle(){
        self.translatesAutoresizingMaskIntoConstraints = false
        switch style {
        case .loginLogo:
            self.widthAnchor.constraint(equalToConstant: 100).isActive = true
            self.heightAnchor.constraint(equalToConstant: 100).isActive = true
        case .registerLogo:
            self.widthAnchor.constraint(equalToConstant: 80).isActive = true
            self.heightAnchor.constraint(equalToConstant: 80).isActive = true
        }
    }
}
