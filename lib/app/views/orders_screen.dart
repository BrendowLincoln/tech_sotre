import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/app/providers/orders_provider.dart';
import 'package:shop/app/widgets/app_drawer.dart';
import 'package:shop/app/widgets/order_widget.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final Orders orders = Provider.of<Orders>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Pedidos'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: orders.itemsCount,
          itemBuilder: (context, index) {
            return OrderWidget(order: orders.items[index],);
          }
      ),
    );
  }
}
