//import 'package:flutter/material.dart';
//import 'package:flutter_saas/model/model.dart';
//import 'package:flutter_saas/widget/NewsListWidget.dart';
//import 'package:flutter_saas/widget/ListImageTop.dart';
//import 'package:flutter_saas/widget/ActivityWidget.dart';
//import 'package:flutter_saas/widget/ListImageRight.dart';
//import 'package:flutter_saas/curiosityWebView.dart';
//import 'package:dio/dio.dart';
//import 'package:flutter_saas/widget/ColumnsListWidget.dart';
//import 'package:flutter_saas/model/model.dart';
//import 'package:flutter_saas/widget/NewsListWidget.dart';
//
//import '../curiosityWebView.dart';
//
/////http://app3.qdaily.com/app3/columns/index/8/0.json  横向列表图片卡片
/////http://app3.qdaily.com/app3/columns/index/59/0.json 横向书本图片列表
//class WidgetUtils {
//  static pushToCuriosityWebView(BuildContext context,int id)async{
//    Dio dio = new Dio();
//    Response response = await dio.get(
//        "http://app3.qdaily.com/app3/articles/detail/${id}.json");
//    String htmlBody = Reslut.fromJson(response.data).response.article.body;
//    Navigator.push(context, MaterialPageRoute(
//      builder: (context) => CuriosityWebView(htmlBody: htmlBody),
//    )
//    );
//  }
//  static Widget GetListItemWidget(BuildContext context, dynamic data) {
//    Widget widget;
//    if(data.runtimeType == Feed) {
//      if (data.indexType != null) {
//        widget = NewsListWidget(context, data);
//      } else if (data.type == 2) {
//        widget = ListImageTop(context, data);
//      } else if (data.type == 0) {
//        widget = ActivityWidget(context, data);
//      } else if (data.type == 1) {
//        widget = ListImageRight(context, data);
//      }
//    }else{
//      widget = ColumnsListWidget(id: data['id'],showType: data['showType'],);
//    }
//    return GestureDetector(
//      onTap: (){
//        WidgetUtils.pushToCuriosityWebView(context, data.post.id);
//      },
//      child: widget,
//    );
//  }
//}
//
