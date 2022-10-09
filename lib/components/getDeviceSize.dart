
import 'package:flutter/material.dart';

double getScreenWidth(BuildContext context){
  return MediaQuery.of(context).size.width;
}
double getScreenHeight(BuildContext context){
  return MediaQuery.of(context).size.height;
}
double getDrawerWidth(BuildContext context){
  return getScreenWidth(context)*0.6;
}

double getTitleWidth(BuildContext context){
  return getScreenWidth(context)*0.8;
}
double getTitleheight(BuildContext context){
  return getScreenWidth(context)*0.1;
}
double getDrawerHeight(BuildContext context){
  return getScreenHeight(context)*0.6;
}