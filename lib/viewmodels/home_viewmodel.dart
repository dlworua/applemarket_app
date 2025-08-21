import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../models/product.dart';
import '../data/products_data.dart' as product_data;

// 홈 화면의 상품 목록과 기본 기능들을 관리하는 ViewModel
class HomeViewModel extends StateNotifier<HomeState> {
  HomeViewModel() : super(HomeState());

  // 상품 데이터 접근
  List<Product> get productList => product_data.products;
  int get productCount => productList.length;

  Product? getProductAt(int index) {
    if (index < 0 || index >= productList.length) return null;
    return productList[index];
  }

  // UI 유틸리티
  String formatPrice(int price) => '${NumberFormat('#,###').format(price)}원';
  bool shouldShowDivider(int index) => index < productList.length - 1;

  // 알림 표시
  void showNotification(
    BuildContext context, {
    String message = '알림이 도착했습니다!',
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), duration: Duration(seconds: 2)),
    );
  }
}

// 홈 화면의 상태 클래스
class HomeState {
  final int selectedIndex;
  HomeState({this.selectedIndex = -1});
  HomeState copyWith({int? selectedIndex}) {
    return HomeState(selectedIndex: selectedIndex ?? this.selectedIndex);
  }
}

// HomeViewModel Provider
final homeViewModelProvider = StateNotifierProvider<HomeViewModel, HomeState>((
  ref,
) {
  return HomeViewModel();
});
