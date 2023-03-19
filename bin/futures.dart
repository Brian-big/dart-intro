String createOrderMessage() {
  var order = fetchUserOrder();
  return 'your order is $order';
}

Future<String> fetchUserOrder() => 
    Future.delayed(const Duration(seconds: 39), () => 'Large latte');

void main(List<String> args) {
  print(createOrderMessage());
}
