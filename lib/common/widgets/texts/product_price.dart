import 'package:flutter/material.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText({
    required this.currency,
    required this.price,
    this.newPrice,
    this.maxLines = 1,
    this.isLarge = true,
    this.lineThrough = false,
    super.key,
  });

  final String? currency, price, newPrice;
  final int maxLines;
  final bool isLarge, lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      TextSpan(
        children: [
          TextSpan(
            text: currency! + price!,
            style: isLarge
                ? Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null)
                : Theme.of(context).textTheme.titleLarge!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null),
          ),
          if (newPrice != null)
            TextSpan(
              text: ' ' + newPrice! + currency!,
              style: isLarge ? Theme.of(context).textTheme.headlineMedium : Theme.of(context).textTheme.titleLarge,
            ),
        ],
      ),
    );
  }
}
