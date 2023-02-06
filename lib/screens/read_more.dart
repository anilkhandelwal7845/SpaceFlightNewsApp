import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ReadMoreScreennn extends StatefulWidget {
  const ReadMoreScreennn({Key? key}) : super(key: key);

  @override
  State<ReadMoreScreennn> createState() => _ReadMoreScreennnState();
}

class _ReadMoreScreennnState extends State<ReadMoreScreennn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: const [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Help And Support",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ReadMoreText(
                    "Precise Location Information and How to Opt OutWhen you use one of our location-enabled services for example, when you access Services from a mobile device) we may "
                        "collect and process information about your mobile devices GPS location (including the latitude, longitude or altitude of your mobile device) and the time the location information is recorded to customize the Services with location-based information and features (for example,"
                        " to inform you about restaurants in your area or applicable promotions). Some of these services require"
                        " your personal data for the feature to work and we may associate location data with your device ID and other information we hold about you. We keep this data for no longer than is reasonably necessary for providing services to you."
                        " If you wish to use the particular feature, you will be asked to consent to your data being used for this purpose. You can withdraw your consent at any time by disabling the GPS or other location-tracking functions on your device, provided your device allows yPrecise Location Information and How to Opt OutWhen you use one of our location-enabled services for example, when you access Services from a mobile device) we may collect and process information about your mobile devices GPS location (including the latit"
                        "ude, longitude or altitude of your mobile device) and the time the location information is recorded to customize"
                        " the Services with location-based information and features (for example, to inform you about restaurants in your area or applicable promotions). Some of these services require your personal data for the feature to work and we may associate location data with your device ID and other information we hold about you. We keep this data for no longer than is reasonably necessary for providing services to you. If you wish to use th"
                        "e particular feature, you will be asked to"
                        " consent to your data being used for this purpose. You can withdraw your consent at any time by disabling the GPS or other location-tracking functions on your device, provided your device allows yPrecise Location Information and How to Opt OutWhen you use one of our location-enabled services for example, when you access Services from a mobile device) we may collect and pro"
                        " inform you about restaurants in your area or applicable promotions). Some of these services require your personal data for the feature to work and we may associate location data with your device ID and other information we hold about you. We keep this data for no longer than is reasonably necessary for providing services to you. If you wish to use the particular feature, you will be asked to consent to your data being used for this purpose. You can withdraw your consent at any time by disabling the GPS or other location-tracking functions on your device, provided your device allows you to do this. See your device manufacturers instructions for further details.",
                    style: TextStyle(color: Colors.black),
                    trimLines: 5,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Read More",
                    trimExpandedText: "Read Less",
                    moreStyle: TextStyle(color: Colors.red),
                    lessStyle: TextStyle(color: Colors.red),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Privacy policy ",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ReadMoreText(
                    "Precise Location Information and How to Opt OutWhen you use one of our location-enabled services for example, when you access Services from a mobile device) we may "
                        "collect and process information about your mobile devices GPS location (including the latitude, longitude or altitude of your mobile device) and the time the location information is recorded to customize the Services with location-based information and features (for example,"
                        " to inform you about restaurants in your area or applicable promotions). Some of these services require"
                        " your personal data for the feature to work and we may associate location data with your device ID and other information we hold about you. We keep this data for no longer than is reasonably necessary for providing services to you."
                        " If you wish to use the particular feature, you will be asked to consent to your data being used for this purpose. You can withdraw your consent at any time by disabling the GPS or other location-tracking functions on your device, provided your device allows yPrecise Location Information and How to Opt OutWhen you use one of our location-enabled services for example, when you access Services from a mobile device) we may collect and process information about your mobile devices GPS location (including the latit"
                        "ude, longitude or altitude of your mobile device) and the time the location information is recorded to customize"
                        " the Services with location-based information and features (for example, to inform you about restaurants in your area or applicable promotions). Some of these services require your personal data for the feature to work and we may associate location data with your device ID and other information we hold about you. We keep this data for no longer than is reasonably necessary for providing services to you. If you wish to use th"
                        "e particular feature, you will be asked to"
                        " consent to your data being used for this purpose. You can withdraw your consent at any time by disabling the GPS or other location-tracking functions on your device, provided your device allows yPrecise Location Information and How to Opt OutWhen you use one of our location-enabled services for example, when you access Services from a mobile device) we may collect and pro"
                        " inform you about restaurants in your area or applicable promotions). Some of these services require your personal data for the feature to work and we may associate location data with your device ID and other information we hold about you. We keep this data for no longer than is reasonably necessary for providing services to you. If you wish to use the particular feature, you will be asked to consent to your data being used for this purpose. You can withdraw your consent at any time by disabling the GPS or other location-tracking functions on your device, provided your device allows you to do this. See your device manufacturers instructions for further details.",
                    style: TextStyle(color: Colors.black),
                    trimLines: 5,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Read More",
                    trimExpandedText: "Read Less",
                    moreStyle: TextStyle(color: Colors.red),
                    lessStyle: TextStyle(color: Colors.red),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Security",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ReadMoreText(
                    "Precise Location Information and How to Opt OutWhen you use one of our location-enabled services for example, when you access Services from a mobile device) we may "
                        "collect and process information about your mobile devices GPS location (including the latitude, longitude or altitude of your mobile device) and the time the location information is recorded to customize the Services with location-based information and features (for example,"
                        " to inform you about restaurants in your area or applicable promotions). Some of these services require"
                        " your personal data for the feature to work and we may associate location data with your device ID and other information we hold about you. We keep this data for no longer than is reasonably necessary for providing services to you."
                        " If you wish to use the particular feature, you will be asked to consent to your data being used for this purpose. You can withdraw your consent at any time by disabling the GPS or other location-tracking functions on your device, provided your device allows yPrecise Location Information and How to Opt OutWhen you use one of our location-enabled services for example, when you access Services from a mobile device) we may collect and process information about your mobile devices GPS location (including the latit"
                        "ude, longitude or altitude of your mobile device) and the time the location information is recorded to customize"
                        " the Services with location-based information and features (for example, to inform you about restaurants in your area or applicable promotions). Some of these services require your personal data for the feature to work and we may associate location data with your device ID and other information we hold about you. We keep this data for no longer than is reasonably necessary for providing services to you. If you wish to use th"
                        "e particular feature, you will be asked to"
                        " consent to your data being used for this purpose. You can withdraw your consent at any time by disabling the GPS or other location-tracking functions on your device, provided your device allows yPrecise Location Information and How to Opt OutWhen you use one of our location-enabled services for example, when you access Services from a mobile device) we may collect and pro"
                        " inform you about restaurants in your area or applicable promotions). Some of these services require your personal data for the feature to work and we may associate location data with your device ID and other information we hold about you. We keep this data for no longer than is reasonably necessary for providing services to you. If you wish to use the particular feature, you will be asked to consent to your data being used for this purpose. You can withdraw your consent at any time by disabling the GPS or other location-tracking functions on your device, provided your device allows you to do this. See your device manufacturers instructions for further details.",
                    style: TextStyle(color: Colors.black),
                    trimLines: 5,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Read More",
                    trimExpandedText: "Read Less",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
