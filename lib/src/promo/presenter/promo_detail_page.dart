import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PromoDetailPage extends StatefulWidget {
  const PromoDetailPage({Key? key}) : super(key: key);

  @override
  State<PromoDetailPage> createState() => _PromoDetailPageState();
}

class _PromoDetailPageState extends State<PromoDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Detalhes'),
    );
  }
}
