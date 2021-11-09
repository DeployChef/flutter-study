import 'package:flutter_mvvm/model/picsum_model.dart';
import 'package:flutter_mvvm/services/service.dart';

class ListPictureViewModel{
  List<PictureViewModel>? pictures;

  Future<void> fetchPictures() async{
    final pictureResult = await Service().fetchPicturesApi(); 
    pictures = pictureResult.map((e) => PictureViewModel(e)).toList();
  }
}

class PictureViewModel {
  final PicSumModel? picSumModel;

  PictureViewModel(this.picSumModel);
}