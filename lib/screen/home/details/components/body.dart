import 'package:app_shop/screen/home/details/components/product_title_with_image.dart';
import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../../../models/product.dart';
import 'color_and_size.dart';
import 'decription.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({required Key key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  //height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(children: <Widget>[
                    ColorAndSize(product: product),
                    Description(product: product),
                    CartCounter(),
                  ]),
                ),
                ProductTitleWithImage(product: product)
              ],
            ))
      ]),
    );
  }
}

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlinedButton(
          icon: Icons.remove,
          press: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            "01",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlinedButton(icon: Icons.add, press: () {}),
      ],
    );
  }

  SizedBox buildOutlinedButton(
      {required IconData icon, required Function press}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlinedButton(
          onPressed: () {},
          child: Icon(icon),
        ));
  }
}
