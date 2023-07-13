import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:myntra_clone/constants/const.dart';
import 'package:myntra_clone/product_data/home_data.dart';
import 'package:myntra_clone/common_widgets/cache_image.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SafeArea(
      child: Container(
        color: Colors.transparent,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.network(
                          insider13,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.add_box_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.search_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: HomeData.getTopbarAssets()
                      .map((e) => CachedImage(
                            url: e,
                            height: 60,
                            width: 60,
                          ))
                      .toList(),
                ),
              ),
              const CachedImage(
                url: featured_brands,
                height: 63,
                width: double.infinity,
              ),
              SizedBox(
                height: 360,
                child: Swiper(
                  duration: 500,
                  itemWidth: double.infinity,
                  pagination: const SwiperPagination(
                    builder: SwiperPagination.dots,
                  ),
                  itemCount: HomeData.getFeaturedBrands().length,
                  itemBuilder: (BuildContext context, int index) {
                    List<String> featuredBrands = HomeData.getFeaturedBrands();
                    return CachedImage(
                      url: featuredBrands[index],
                      height: 0,
                      width: 0,
                    );
                  },
                  autoplay: true,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                width: 50,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const CachedImage(
                url: banner1,
                height: 361,
                width: double.infinity,
              ),
              const CachedImage(
                url: free_shipping,
                height: 47,
                width: double.infinity,
              ),
              Row(
                children: [
                  CachedImage(
                    url: banner2,
                    width: (MediaQuery.of(context).size.width -
                            MediaQuery.of(context).padding.left -
                            MediaQuery.of(context).padding.right) *
                        0.50,
                    height: 360,
                  ),
                  CachedImage(
                    url: banner3,
                    width: (MediaQuery.of(context).size.width -
                            MediaQuery.of(context).padding.left -
                            MediaQuery.of(context).padding.right) *
                        0.50,
                    height: 360,
                  ),
                ],
              ),
              const CachedImage(
                url: biggest_offers,
                height: 63,
                width: double.infinity,
              ),
              SizedBox(
                height: 275,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: HomeData.getBiggestOffers()
                      .map((e) => Padding(
                            padding: const EdgeInsets.only(right: 5, left: 5),
                            child: CachedImage(
                              url: e,
                              height: 273,
                              width: 179,
                            ),
                          ))
                      .toList(),
                ),
              ),
              const CachedImage(
                url: best_offers,
                height: 63,
                width: double.infinity,
              ),
              buildOfferCard(context, kurta_offer, flipflop_offer, watch_offer,
                  loungewear_offer),
              const CachedImage(
                url: festive_deals,
                height: 63,
                width: double.infinity,
              ),
              buildOfferCard(
                  context, seventy_off, under_399, buy_1_get_1, sixty_off),
              const CachedImage(
                url: daily_deals,
                height: 63,
                width: double.infinity,
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 265,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: HomeData.getDailyDeals()
                      .map((e) => Padding(
                            padding: const EdgeInsets.only(right: 5, left: 5),
                            child: CachedImage(
                              url: e,
                              height: 260,
                              width: 171,
                            ),
                          ))
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                '"The great thing about fashion is that it always looks forward"',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Oscar De La Renta',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget buildOfferCard(BuildContext context, String offer1, String offer2,
      String offer3, String offer4) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CachedImage(
                  url: offer1,
                  height: 186,
                  width: (MediaQuery.of(context).size.width -
                          MediaQuery.of(context).padding.left -
                          MediaQuery.of(context).padding.right) *
                      0.45,
                ),
                CachedImage(
                  url: offer2,
                  height: 186,
                  width: (MediaQuery.of(context).size.width -
                          MediaQuery.of(context).padding.left -
                          MediaQuery.of(context).padding.right) *
                      0.45,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CachedImage(
                  url: offer3,
                  height: 186,
                  width: (MediaQuery.of(context).size.width -
                          MediaQuery.of(context).padding.left -
                          MediaQuery.of(context).padding.right) *
                      0.45,
                ),
                CachedImage(
                  url: offer4,
                  height: 186,
                  width: (MediaQuery.of(context).size.width -
                          MediaQuery.of(context).padding.left -
                          MediaQuery.of(context).padding.right) *
                      0.45,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
