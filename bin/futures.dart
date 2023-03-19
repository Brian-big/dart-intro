String createOrderMessage() {
  var order = fetchUserOrder();
  return 'your order is $order';
}

Future<void> fetchUserOrder() =>
    Future.delayed(const Duration(seconds: 3), () => print('Large latte'));

void main(List<String> args) {
  fetchUserOrder();
  print('fetching user orders');
}
