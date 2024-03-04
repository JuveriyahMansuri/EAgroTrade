import 'package:flutter/material.dart';
import 'package:wholesaler_frontend/lib/wholesaler/add_auction.dart';
import 'package:wholesaler_frontend/lib/wholesaler/auction_completed.dart';
import 'package:wholesaler_frontend/lib/wholesaler/notify_retailer2.dart';
import 'package:wholesaler_frontend/lib/wholesaler/order_status.dart';
import 'package:wholesaler_frontend/lib/wholesaler/dashboard.dart';
import 'package:wholesaler_frontend/lib/wholesaler/splash_authentication.dart';

import 'package:wholesaler_frontend/lib/wholesaler/my_auctions.dart';
import 'package:wholesaler_frontend/lib/wholesaler/bids.dart';
import 'package:wholesaler_frontend/lib/wholesaler/orders.dart';
import 'package:wholesaler_frontend/lib/wholesaler/payment.dart';
import 'package:wholesaler_frontend/lib/wholesaler/my_products.dart';
import 'package:wholesaler_frontend/lib/wholesaler/notification_screen.dart';
import 'package:wholesaler_frontend/lib/wholesaler/second_authentication.dart';
import 'package:wholesaler_frontend/lib/wholesaler/add_product.dart';
import 'package:wholesaler_frontend/lib/wholesaler/third_authentication.dart';

import 'package:wholesaler_frontend/lib/wholesaler/sample.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Third_authentication(),
  ));
}

