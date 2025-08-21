# 🍎 Apple Market App

> **Flutter로 구현한 중고거래 마켓플레이스 앱**

<div align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" />
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" />
  <img src="https://img.shields.io/badge/Riverpod-0175C2?style=for-the-badge&logo=flutter&logoColor=white" />
</div>

---

## 📱 앱 소개

**Apple Market**은 당근마켓 스타일의 중고거래 앱입니다.

### ✨ 주요 기능

| 기능 | 설명 |
|------|------|
| 🏠 **메인 페이지** | 판매 중인 상품들을 카드 형태로 한눈에 확인 |
| 🔍 **상품 상세** | 상품 이미지, 설명, 가격, 판매자 정보를 자세히 조회 |
| 👤 **판매자 정보** | 판매자 프로필과 매너온도 시스템 |
| 🔔 **알림 기능** | 클릭하면 스낵바 메시지 도출 |

---

## 🏗️ 프로젝트 아키텍처

### 📁 프로젝트 구조
```
lib/
├── 📄 main.dart              # 앱 진입점
├── 📂 screens/               # 화면 UI 파일들
│   ├── main_page.dart        # 메인 홈 화면
│   └── detail_page.dart      # 상품 상세 화면
├── 📂 models/                # 데이터 모델
│   └── product.dart          # 상품 모델 클래스
├── 📂 viewmodels/            # 비즈니스 로직
│   └── home_viewmodel.dart   # 홈 화면 상태 관리
├── 📂 data/                  # 데이터 레이어
│   └── products_data.dart    # 샘플 상품 데이터
└── 📂 assets/                # 이미지 리소스
    ├── sample0.jpg
    ├── sample1.png
    └── ... (sample10.png까지)
```

### 🎯 설계 패턴
- **MVVM (Model-View-ViewModel)** 패턴 적용
- **Riverpod**을 통한 상태관리

---

## 🛠️ 기술 스택

### Core
- **Flutter SDK** `^3.8.1` - 크로스플랫폼 UI 프레임워크
- **Dart** - 메인 프로그래밍 언어

### 상태관리 & 아키텍처
- **flutter_riverpod** `^2.6.1` - 상태관리 라이브러리
- **StateNotifier** - 상태 변화 관리

### UI/UX
- **Material Design** - 구글의 디자인 시스템
- **Cupertino Icons** `^1.0.8` - iOS 스타일 아이콘

### 유틸리티
- **intl** `^0.19.0` - 국제화 및 숫자 포맷팅

### 개발도구
- **flutter_lints** `^5.0.0` - 코드 품질 관리
- **flutter_test** - 테스팅 프레임워크

---

## 🚀 개발 과정

### 1단계: 프로젝트 초기화
```bash
flutter create applemarket_app
cd applemarket_app
```

### 2단계: 사용 패키지
```yaml
dependencies:
  flutter_riverpod: ^2.6.1  # 상태관리
  intl: ^0.19.0             # 숫자 포맷팅
```

### 3단계: 아키텍처 설계
- **Model**: `Product` 클래스로 상품 데이터 구조화
- **ViewModel**: `HomeViewModel`로 비즈니스 로직 분리  
- **View**: `MainPage`와 `ProductDetailScreen`로 UI 구현

### 4단계: 핵심 기능 구현
1. **상품 목록 화면**: ListView.builder로 동적 리스트 구현
2. **상품 상세 화면**: 상세 정보와 판매자 정보 표시
3. **네비게이션**: Navigator.push로 화면 전환
4. **상태 관리**: Riverpod Provider로 전역 상태 관리

### 5단계: UI/UX 최적화
- **반응형 레이아웃**: 다양한 화면 크기 대응
- **그림자 효과**: BoxShadow로 카드 입체감 구현

---

## 📸 스크린샷
<img width="300" height="600" alt="Simulator Screenshot - iPhone 16 Plus - 2025-08-21 at 22 56 38" src="https://github.com/user-attachments/assets/3928426c-a467-4190-89e4-dd74a52ce54c" />
<img width="300" height="600" alt="Simulator Screenshot - iPhone 16 Plus - 2025-08-21 at 22 56 40" src="https://github.com/user-attachments/assets/39cd6376-1fd8-427f-a129-dced1192ef45" />
<img width="300" height="600" alt="Simulator Screenshot - iPhone 16 Plus - 2025-08-21 at 23 23 34" src="https://github.com/user-attachments/assets/4ef53f92-2bdd-4559-b8f7-d08de2e18be1" />

### 메인 화면
- 상품 카드 리스트 형태로 표시
- 상품명, 위치, 가격 정보 제공
- 채팅 수, 관심상품 수 표시
- 상단 알림 버튼으로 사용자 인터랙션

### 상품 상세 화면  
- 풀스크린 상품 이미지
- 판매자 프로필과 매너온도
- 상품 제목과 상세 설명
- 하단 가격정보와 채팅하기 버튼

