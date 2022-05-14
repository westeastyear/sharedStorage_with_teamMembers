//
//  ListCollectionViewCell.swift
//  collectionViewTest
//
//  Created by SeoDongyeon on 2022/05/13.
//

import UIKit

final class GridCollectionViewCell: UICollectionViewCell {
    
    static var identifier: String {
        return String(describing: self)
    }
    
    private lazy var productImage: UIImageView = {
        let view = UIImageView()
        return view
    }()
    
    private lazy var productTitle: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var productPrice: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var verticalStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [productImage, productTitle, productPrice])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.alignment = .center
        view.distribution = .fill
        view.axis = .vertical
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setCellView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setCellView() {
        contentView.addSubview(verticalStackView)
        NSLayoutConstraint.activate([
            verticalStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            verticalStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            verticalStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            verticalStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
    
    func configureImage(image: UIImage) {
        self.productImage.image = image
    }

    func configureTitle(text: String) {
        self.productTitle.text = text
    }

    func configurePrice(text: String) {
        self.productPrice.text = text
    }
}
