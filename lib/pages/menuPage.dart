import 'package:flutter/material.dart';
import 'package:tender_app/service/dataManagers.dart';
import 'package:tender_app/widgets/product_item.dart';

import '../constants.dart';

class MenuPage extends StatelessWidget {
  final DataManager dataManager;
  const MenuPage({super.key, required this.dataManager});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: dataManager.getMenu(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          //the future has finshed.data is ready
          var categories = snapshot.data!;
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(categories[index].name,
                        style: const TextStyle(
                          color: Colors.black45,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 1.6,
                        )),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: categories[index].products.length,
                      itemBuilder: ((context, proadIndex) {
                        var product = categories[index].products[proadIndex];
                        return ProductItemWidget(
                          product: product,
                          onAdd: (addedProduct) {
                            print(addedProduct.name);
                            print(addedProduct.id);
                            dataManager.cartAdd(addedProduct);
                          },
                        );
                      }))
                ],
              );
            },
          );
        } else {
          if (snapshot.hasError) {
            //Data is not there,beacause there is error
            return const Text("there was an error");
          } else {
            return const Center(
              child: CircularProgressIndicator.adaptive(
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation(Color(colorPrimary)),
              ),
            );
          }
        }
      },
    );
  }
}

// class ProductItem extends StatelessWidget {
//   final Product product;
//   final Function onAdd;
//   const ProductItem({super.key, required this.product, required this.onAdd});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(right: 30, left: 30, top: 8, bottom: 8),
//       child: Card(
//           elevation: 4,
//           child: Column(
//             children: [
//               Image.network(
//                 product.imageUrl,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           product.name,
//                           style: const TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text("\$ ${product.price.toStringAsFixed(2)}"),
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 8),
//                     child: ElevatedButton(
//                         onPressed: () {
//                           onAdd(product);
//                         },
//                         child: const Text("Add")),
//                   )
//                 ],
//               )
//             ],
//           )),
//     );
//   }
// }
