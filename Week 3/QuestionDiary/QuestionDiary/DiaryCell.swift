//
//  MainViewControllerCellTableViewCell.swift
//  QuestionDiary
//
//  Created by 권준상 on 2021/09/29.
//

import UIKit

class DiaryCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var regdateLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var cellContainView: UIView!
    
    var isSelect = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setContainView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setContainView() {
        cellContainView.clipsToBounds = true
        cellContainView.backgroundColor = .white
        cellContainView.layer.borderColor = UIColor.black.cgColor
        cellContainView.layer.borderWidth = 2
        cellContainView.layer.cornerRadius = 8
    }
    
    @IBAction func likeButtonDidTap(_ sender: Any) {
        if !isSelect {
            likeButton.isSelected = true
            isSelect = true
        } else {
            likeButton.isSelected = false
            isSelect = false
        }
    }
    
    
}
