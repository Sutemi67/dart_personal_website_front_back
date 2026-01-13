import 'package:dart_personal_website_server/presentation/common_components/app_styles.dart';
import 'package:dart_personal_website_server/presentation/common_components/appear_page_animation.dart';
import 'package:flutter/material.dart';

class TrainPage extends StatelessWidget {
  const TrainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppearPageAnimation(
      child: Column(
        children: [
          Text('Train page', style: context.titleStyle),
          Text('Let\'s get better together!', style: context.bodyStyle),
          SizedBox(
            // height: MediaQuery.of(context).size.width / 2.8,
            child: Card(
              margin: const EdgeInsets.all(20),
              elevation: 2,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: ClipOval(
                          child: const Image(
                            image: AssetImage('assets/me.jpg'),
                            fit: .cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Sport is an integral part of my life. Regular training helps me to stay in shape, develop discipline and find a balance between work and personal life. I am happy to help those who want to keep me company.',
                        style: context.descriptionStyle,
                        textAlign: .center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(20),
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: .min,
                  children: [
                    ListTile(
                      title: Text('Running'),
                      subtitle: Text(
                        'desc of running and may otherand may otherand may otherand may otherand may otherand may other',
                      ),
                      leading: CircleAvatar(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/me.jpg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text('Aikido'),
                      subtitle: Text('desc of aiki'),
                      leading: CircleAvatar(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/me.jpg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text('GYM'),
                      subtitle: Text('desc of gym'),
                      leading: CircleAvatar(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/me.jpg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            color: context.cardColor,
          ),
          Card(
            margin: const EdgeInsets.all(20),
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: Image(image: AssetImage('assets/dco1.webp'))),
                  Expanded(child: Image(image: AssetImage('assets/dco2.webp'))),
                  Expanded(child: Image(image: AssetImage('assets/dco3.webp'))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
