import '../../../../allpackages.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({Key? key}) : super(key: key);

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 120,
          child: Container(
            height: 200,
            width: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Constants.outerpurple),
          ),
        ),
        Positioned(
          bottom: 100,
          child: Container(
            margin: const EdgeInsets.all(10),
            height: 200,
            width: 160,
            //color: Color.fromARGB(255, 136, 62, 150),
            child: Column(
              children: [
                Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5)),
                    color: Constants.buttonColor,
                  ),
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Container(
                          height: 40,
                          width: 30,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/images/crown.png')),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Text(
                          '75%',
                          style: commonFunction.buildTextStyle(
                              15,
                              FontWeight.bold,
                              Constants.primaryColor,
                              FontStyle.normal),
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset('assets/images/kk.jpg')
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 130,
            left: 10,
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 160,
              decoration: BoxDecoration(
                  color: Constants.yolet.withOpacity(0.5),
                  borderRadius:
                      const BorderRadius.only(topLeft: Radius.circular(10))),
              child: Text(
                'Harry',
                style: commonFunction.buildTextStyle(15, FontWeight.bold,
                    Constants.primaryColor, FontStyle.normal),
              ),
            )),
        Positioned(
          bottom: 120,
          left: 190,
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(10),
            height: 200,
            width: 170,
            decoration: BoxDecoration(
                color: Constants.primaryColor,
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About',
                  style: commonFunction.buildTextStyle(
                      15, FontWeight.bold, Constants.yolet, FontStyle.normal),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: const CircleAvatar(
                    backgroundColor: Constants.likesiconcolor,
                    radius: 15,
                    child: Icon(
                      Icons.edit_calendar_outlined,
                      size: 15,
                      color: Constants.blackColor,
                    ),
                  ),
                ),
                Text(
                  '''Lorem ipsum dolor sit amet,consectetur adipisicing elt. sed viae tellus facilities,euismod ourus non,ultrrice magnaAligquam lectus lorem,rhoncus eget Consectetur eget,fermentum vitae nisl''',
                  style: commonFunction.buildTextStyle(
                      11, FontWeight.normal, Constants.yolet, FontStyle.normal),
                ),
                Container(
                    height: 30,
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      'assets/images/loading.png',
                    ))
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 20,
            left: 30,
            right: 30,
            child: InkWell(
              onTap: () {
                Get.to(  FollowUi());
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Constants.yolet),
                child: Text(
                  'Tagged challenges',
                  style: commonFunction.buildTextStyle(15, FontWeight.bold,
                      Constants.primaryColor, FontStyle.normal),
                ),
              ),
            ))
      ],
    );
  }
}