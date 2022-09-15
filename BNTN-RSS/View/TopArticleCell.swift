//
//  TopArticleCell.swift
//  BNTN-RSS
//
//  Created by Takumi Aoki on 2022/9/4.
//

import UIKit

/// トップの記事表示用のセル
class TopArticleCell: UITableViewCell {
    
    /// 日付
    @IBOutlet weak var pubDateLabel: UILabel!
    /// タイトル
    @IBOutlet weak var titleLable: UILabel!
    /// 記事画像
    @IBOutlet weak var articleImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
