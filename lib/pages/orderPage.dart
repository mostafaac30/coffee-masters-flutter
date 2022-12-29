import 'package:flutter/material.dart';
import 'package:tender_app/service/dataManagers.dart';

import '../constants.dart';
import '../model/datamodel.dart';
import '../widgets/cart_item.dart';

class OrderPage extends StatefulWidget {
  final DataManager dataManager;
  const OrderPage({super.key, required this.dataManager});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    print(widget.dataManager.cart);
    if (widget.dataManager.cart.isEmpty) {
      return const Center(
        child: Icon(
          Icons.not_interested_rounded,
          size: 120,
          color: vermilion_10,
        ),
      );
    } else {
      return ListView.builder(
          itemCount: widget.dataManager.cart.length,
          itemBuilder: ((context, index) {
            var item = widget.dataManager.cart[index];
            return CartItemWidget(
                item: item,
                onAdd: (product) {
                  setState(() {
                    widget.dataManager.cartAdd(product);
                  });
                },
                onRemove: (product) {
                  setState(() {
                    widget.dataManager.cartRemove(product);
                  });
                });
          }));
    }
  }
}

class OrderItem extends StatelessWidget {
  final ItemInCart item;
  final Function onRemove;
  const OrderItem({Key? key, required this.item, required this.onRemove})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("${item.quantity}x"),
                )),
            Expanded(
                flex: 6,
                child: Text(
                  item.product.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
            Expanded(
                flex: 2,
                child: Text(
                    "\$${(item.product.price * item.quantity).toStringAsFixed(2)}")),
            Expanded(
                flex: 1,
                child: IconButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      onRemove(item.product);
                    },
                    icon: const Icon(Icons.delete)))
          ],
        ),
      ),
    );
  }
}
