
import UIKit

class LoginOperationController: UIViewController {

    var loginOperationView: LoginOperationView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }


    func setupView() {
        let mainView = LoginOperationView(frame: self.view.frame)
        self.loginOperationView = mainView
        loginOperationView.backAction = backButtonPressed
        self.view.addSubview(loginOperationView)
        loginOperationView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }

    func backButtonPressed() {
        print("back pressed")
        //dismiss(animated: true, completion: nil)
    }

}



extension LoginOperationView: UITextFieldDelegate {
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





