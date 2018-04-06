
import UIKit

class LoginNameController: UIViewController {

    var loginNameView: LoginNameView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }


    func setupView() {
        let mainView = LoginNameView(frame: self.view.frame)
        self.loginNameView = mainView
        loginNameView.backAction = backButtonPressed
        self.view.addSubview(loginNameView)
        loginNameView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }

    func backButtonPressed() {
        print("back pressed")
        //dismiss(animated: true, completion: nil)
    }

}



extension LoginNameView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            nameTextField.resignFirstResponder()
            onReturnPressed()
        } else {
            nameTextField.becomeFirstResponder()
        }
        return false
    }


    func onReturnPressed() {
        print("next screen please")
    }
}





