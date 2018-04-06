
import UIKit

class LoginNameView: UIView {

    var backAction: (() -> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    func setup() {

        backgroundColor = .white

        addSubview(backButton)
        backButton.setAnchor(width: 80, height: 100)


        let stackView = createStackView(views: [inputLabel,
                                                nameTextField,
                                                errorTextField])

        addSubview(stackView)
        nameTextField.delegate = self
        stackView.setAnchor(width: self.frame.width - 60, height: 140)
        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }


    let inputLabel: UILabel = {
        let tl = UILabel(text: "What would you like to be called?")
        return tl
    }()

    let errorTextField: UITextField = {
        let tf = UITextField(placeHolder: "")
        tf.isUserInteractionEnabled = false
        tf.backgroundColor = .white
        tf.textAlignment = .center
        tf.textColor = .red
        return tf
    }()


    let nameTextField: UITextField = {
        let tf = UITextField(placeHolder: "John")
        tf.returnKeyType = UIReturnKeyType.next
        return tf
    }()


    let backButton: UIButton = {
        let button = UIButton()
        let image = UIImage(named: "back1.png") as UIImage?
        button.setImage(image, for: .normal)
        button.addTarget(self, action: #selector(handleBack), for: .touchUpInside)
        return button
    }()



    @objc func handleBack() {
        backAction?()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}


