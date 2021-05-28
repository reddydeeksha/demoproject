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
  sliderModel.setDesc("©onverse will take you around the new world for Deaf-mute ");
  sliderModel.setTitle("Hi There..!");
  sliderModel.setImageAssetPath("assets/imgg1.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("©onverse uses mimix technology and TTS engine to make the interaction much more easier and predicts the sign languages");
  sliderModel.setTitle("About App ");
  sliderModel.setImageAssetPath("assets/2asl.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("TTS engine is a type of assistive technology that reads digital text aloud.TTS will take the message you type in text box and convert them into audio.");
  sliderModel.setTitle("Text-To-Speech ");
  sliderModel.setImageAssetPath("assets/textspeech.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  //4
  sliderModel.setDesc("By using Video Detection, you can process sign language images and videos inorder to identify the ASL.");
  sliderModel.setTitle("Video Detection ");
  sliderModel.setImageAssetPath("assets/videostreaming.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  //5
  sliderModel.setDesc("Using this feature you can make calls or send a text to someone incase of emergency.");
  sliderModel.setTitle("Emergency Alert");
  sliderModel.setImageAssetPath("assets/safety app.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  //6
  sliderModel.setDesc("Why to Depend on someone to go somewhere when you have your friend ' ©onverse with you always.Use me and know your destination by urself");
  sliderModel.setTitle("Maps.");
  sliderModel.setImageAssetPath("assets/maps1.jpeg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}