import 'package:flutter/material.dart';


class SliderModel{

  String imageAssetPath;
  String title;
  String desc;
  
  SliderModel({this.imageAssetPath,this.title,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("Discover a Food Courner offering the best fast food near you");
  sliderModel.setTitle("Audio streaming(Speech to text)");
  sliderModel.setImageAssetPath("assets/1234.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("Our food plan is filled with delicious seasonal vegetables, whole grains, fast food , burgger , pizza etc.");
  sliderModel.setTitle("User Manual ");
  sliderModel.setImageAssetPath("assets/45678.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("Food delivery or pickup from local restaurants, Explore restaurants that deliver near you.");
  sliderModel.setTitle("User Notes");
  sliderModel.setImageAssetPath("assets/bd.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  //4
  sliderModel.setDesc("Our food plan is filled with delicious seasonal vegetables, whole grains, fast food , burgger , pizza etc.");
  sliderModel.setTitle("Image Detection");
  sliderModel.setImageAssetPath("assets/img.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  //5
  sliderModel.setDesc("Our food plan is filled with delicious seasonal vegetables, whole grains, fast food , burgger , pizza etc.");
  sliderModel.setTitle("Video Objection Detection ");
  sliderModel.setImageAssetPath("assets/ddl.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  //6
  sliderModel.setDesc("Our food plan is filled with delicious seasonal vegetables, whole grains, fast food , burgger , pizza etc.");
  sliderModel.setTitle("Asl Keyboard ");
  sliderModel.setImageAssetPath("assets/asl.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}