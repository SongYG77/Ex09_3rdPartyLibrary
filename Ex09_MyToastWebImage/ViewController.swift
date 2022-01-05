//
//  ViewController.swift
//  Ex09_MyToastWebImage
//
//  Created by 송윤근 on 2022/01/05.
//



// 3rd party library(즉 내가 만든건 1st, apple 제공은 2nd, 제3자 만듬 3rd)사용
// 대표적으로 깃험의 라이브러리를 이용하는것(오픈소스)

// Cocoa Pod : 3rd party 라이브러리를 사용하기 위해 공통적으로 사용하고 있는 라이브러리 공유 틀.
// xcode에서 지원하는 것이 아닌  commend line interface가 제공(Terminal , Dos)

// Swift 스타일의 토스트 창 (토스트 팝업 기능은 안드로이드에서만 제공 하는 개념이다)
// SDWeb Image : http통신으로 서버상에 있는 이미지를 다운하고 ImageView에 동적으로 로딩까지 해준다.캐시까지 지원.
// Cocoa Pod 이용순서

//0. 기본 xcodeproj프로젝트 닫기
//1. 파인더에서 프로젝트 폴더 오른쪽 클릭해서 현재폴더에서 터미널 열기
//2. Cocoa Pod 유틸 설치
//   명령어 : sudo gem install cocoapods 엔터
//   Cocoa Pod 업데이트
//   명령어 : pod repo update 엔터
//3. 프로젝트 초기화
//   명령어 : pod init
//4. 라이브러리 설치
//   명령어: pod install
//5. 프로젝트 열기 : xcodeproj -> xcworkspace 열기
//   워크스페이스 열기 : 더블클릭 하거나 터미널 open 프로젝트이름.xcworkspace
//6. xcode에서 pod 파일을 편집하기( 라이브러리 목록 기술)
//7. 터미널에서 pod install 한번 더하기.


import UIKit
import Toast_Swift
import SDWebImage

class ViewController: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.makeToast("토스트 창입니다.", duration : 5.0, position : .bottom)
        
        
        let url:URL = URL(string: "https://lh3.googleusercontent.com/pw/ACtC-3cMOMyYK9YwfT2cTWA3jwxNYA8Af6nE8l0MgTME_DZZP7KzdYTCAVtxpJq8_ooM0aumpqZHGM00uhoYOOW58PLChirSAlH-3_t-nyZ604esEQ0EKm3H8lyrancAOd2uyYlsh0F_gm_Lv1VGoUh7tnsOlg=s766-no")!
        self.imageview.sd_setImage(with: url, completed: nil)
    }


}

