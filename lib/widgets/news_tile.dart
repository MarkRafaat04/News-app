import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile();
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.max, children: [
      ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image(
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
            image: AssetImage(
              'assets/news_one.jpg',
            ),
          )),
      const SizedBox(
        height: 12,
      ),
      Text(
        '[City, Country] – In a major advancement for the renewable energy sector, scientists have achieved a new record in solar power efficiency, pushing the boundaries of how much energy can be harnessed from the sun. The breakthrough, announced by researchers at the National Institute of Energy, has the potential to revolutionize how solar energy is used globally, making it a more viable alternative to traditional fossil fuels.',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Text(
        'The teams innovation is based on a new blend of perovskite materials, which are inexpensive to produce and more sustainable than the silicon-based cells currently used in most solar panels. The multi-junction structure of the cells also allows them to harness energy across various wavelengths of light, including those that are typically lost in traditional solar cells.',
        maxLines: 2,
        style: const TextStyle(color: Colors.grey, fontSize: 14),
      )
    ]);
  }
}
