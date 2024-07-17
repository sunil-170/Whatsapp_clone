import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';
import 'package:whatsappsaloon/res/components/Style_sheet.dart';

class Profile_screen extends StatefulWidget {
  const Profile_screen({super.key});

  @override
  State<Profile_screen> createState() => _Profile_screenState();
}

class _Profile_screenState extends State<Profile_screen> {
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: AppColors.white,
          title: Text(
            "Account",
            style: FontStyle().fs_20_Bold().copyWith(color: AppColors.white),
          ),
          elevation: 0,
          backgroundColor: AppColors.Dark_green),
      body: Column(
        children: [
          Gap(20),
          Center(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: imageFile == null
                      ? Container(
                          padding: EdgeInsets.all(9),
                          decoration: BoxDecoration(
                              color: AppColors.grey, shape: BoxShape.circle),
                          child: Icon(
                            Icons.person,
                            color: AppColors.white,
                            size: 90,
                          ))
                      : Image.file(
                          File(imageFile!.path),
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                ),
                Positioned(
                  bottom: 3,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) => imagePickerbottomsheet());
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: AppColors.green, shape: BoxShape.circle),
                      child: Icon(
                        Icons.camera_alt,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  getImageFormGallery() async {
    var getImage =
        await ImagePicker.platform.pickImage(source: ImageSource.gallery);

    if (getImage != null) {
      setState(() {
        imageFile = File(getImage.path);
      });
      Navigator.of(context).pop();
    }
  }

  getImageFormCamra() async {
    var getImage =
        await ImagePicker.platform.pickImage(source: ImageSource.camera);

    if (getImage != null) {
      setState(() {
        imageFile = File(getImage.path);
      });
      Navigator.of(context).pop();
    }
  }

  imagePickerbottomsheet() {
    return ClipRect(
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: Column(children: [
              Gap(15),
              Text(
                "Image Picker",
                // style:
                //     AppTextTheme.fs20SemiBold(),
              ),
              Gap(10),
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      getImageFormCamra();
                    });
                  },
                  icon: Icon(Icons.camera),
                  label: Text("Camera")),
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      getImageFormGallery();
                    });
                  },
                  icon: Icon(Icons.image),
                  label: Text("Gallery")),
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.cancel),
                  label: Text("Cancel"))
            ])));
  }
}
