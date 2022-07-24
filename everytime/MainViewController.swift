//
//  MainViewController.swift
//  everytime
//
//  Created by 차윤범 on 2022/07/19.
//

import Foundation
import UIKit

final class MainViewController : UITableViewController {
    
    
    private let texts: Array = [
        """
        쿠팡 채용 관심 있으신 분 지원 부탁드립니다
        http://saram.in/s/7QR214Gw3
        """,
        """
        컴공 2학년인데 공부를 어떻게 해야될지 모르겠어서 질문 남겨봅니당..
        현재 C Python Java랑 웹프로그래밍 살짝 다룰 줄 알고(그냥 딱 학부 수준으로만) 노드.js, 장고, 루비, 유니티, 리엑트..? 등등 아직 뭔지도 모르는게 너무 많고 실제 프로젝트나 해커톤은 해본적 없어서 어떤 지식이 어떻게 필요한지도 잘 모릅니다,,

        1. 개발자가 목표긴 한데 그냥 딱 관심있는 한 분야만 정해서 그쪽 언어만 공부하는게 맞을까요? 아니면 지금 모르는것들도 일단 다 공부를 해두는게 좋을까요?

        2. 제가 현재 다룰 줄 아는 언어만 가지고도 해커톤 참여가 가능할까요?? 그리고 혹시 부족한게 있다면 무엇을 따로 더 공부해야 할까요

        조금이라도 답변해주시면 감사하겠습니다!
        """,
        """
        졸업증 받는 기간 아시는 분?!
        일주일 전인가 종강하고 졸업요건 다 채웠는데 졸업증 받는 기간이나 방법을 잘 모르겠...
        학적과나 교무과나 학생지원처에 전화해서 물어봐야할까...???
        """,
        """
        신입은 아니고 직장다닌지 1년 좀 넘었는데
        수영복 사진 프사하면 오바인가?
        """,
        """
        it 신입 오퍼때 원천 6천으로 보고 갔는데
        300은 뻥튀기 한거였네... 낚였다
        """,
        """
        ㅈㅈㅌ 반도체 관련 기업 취업준비 하는데 독취사같은 카페 이외에도 채용공고 확인할 수 있는곳이 있을까요? 독취사에서는 일일이 반도체 관련 기업 찾는게 힘들어서요 ㅠㅠ
        """,

    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = ""
        self.navigationItem.titleView = NavigationTitleView()
        
        self.tableView.separatorStyle = .none
        self.tableView.register(MainCell.self, forCellReuseIdentifier: "MainCell")
        self.tableView.reloadData()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "more_title"), style: .plain, target: self, action: nil)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        texts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! MainCell   // MainCell로 형 변환
        let text = texts[indexPath.item]
        cell.setupData(data: text)
        return cell
        
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = DetailViewController()
        self.navigationController?.pushViewController(detailViewController, animated: true)
          
    }
}
