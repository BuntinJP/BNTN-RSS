//
//  ArticleCell.swift
//  BNTN-RSS
//
//  Created by Takumi Aoki on 2022/9/4.
//

import UIKit

/// 記事表示用のセル
class ArticleCell: UITableViewCell {
    
    /// サムネイル画像
    @IBOutlet weak var articleImage: UIImageView!
    /// タイトル
    @IBOutlet weak var titleLable: UILabel!
    /// 日付
    @IBOutlet weak var pubDateLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
                
    }
    
}
