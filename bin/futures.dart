Future<String> createOrderMessage() async {
  print('awaiting user orders...');
  var order = await fetchUserOrder();
  return 'your order is $order';
}

Future<String> fetchUserOrder() =>
    Future.delayed(const Duration(seconds: 3), () => 'Large latte');

void main(List<String> args) async {
  print('fetching user orders...');
  await countSeconds(3);
  print(await createOrderMessage());
}

Future<void> countSeconds(int s) async {
  for (var i = 1; i <= s; i++) {
    Future.delayed(
        Duration(
          seconds: i,
        ),
        () => print(i));
  }
}
