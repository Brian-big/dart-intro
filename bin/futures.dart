Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'your order is $order';
}

Future<String> fetchUserOrder() =>
    Future.delayed(const Duration(seconds: 3), () => 'Large latte');

Future<void> main(List<String> args) async {
  print('fetching user orders...');
  print(await createOrderMessage());
}
