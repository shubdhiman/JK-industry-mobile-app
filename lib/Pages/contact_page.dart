import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jk_industry/Utils/industry.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Industry.app_color,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Mobile:",
                    style: TextStyle(
                        fontSize: Industry.mediumText,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text("(+91)7404299390"),
              SizedBox(
                height: 4.0,
              ),
              Text("(+91)94169-35482"),
              Divider(),
              Divider(),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Industry.app_color,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Email:",
                    style: TextStyle(
                        fontSize: Industry.mediumText,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text("jkindustries8282@gmail.com"),
              Divider(),
              Divider(),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.chartArea,
                    color: Industry.app_color,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Address:",
                    style: TextStyle(
                        fontSize: Industry.mediumText,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text("Tehsil Road, Near Mikky Palace, Shahzadpur (Ambala)"),
              Divider(),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.52,
                child: WebView(
                  initialUrl: Uri.dataFromString(""" 
                                <html><meta charset="UTF-8">
                                <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
                                <meta http-equiv="X-UA-Compatible" content="ie=edge">
                                <body>
                                  <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13756.966578197738!2d77.031791!3d30.457593!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a4a619918275656!2sj%20k%20industries!5e0!3m2!1sen!2sin!4v1601468035724!5m2!1sen!2sin" style="width:100%;height:100%" frameborder="0" style="border:0;" allowfullscreen="false" aria-hidden="false" tabindex="0"></iframe>
                                </body></html>""", mimeType: 'text/html')
                      .toString(),
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              ),
            ],
          )),
    );
  }
}
