import '/models/bidder.dart';

import 'art.dart';

class Profile {
  String? imgUrl;
  String? name;
  String? twitter;
  String? desc;
  String? email;
  List<Art>? creations;
  List<Art>? collections;

  Profile({
    this.imgUrl,
    this.name,
    this.twitter,
    this.desc,
    this.email,
    this.creations,
    this.collections,
  });

  static Profile generateProfile() {
    return Profile(
        imgUrl: 'assets/images/pokeball_avatar.png',
        name: 'Byungsuk Choi',
        twitter: '@bchoi',
        desc: 'Trading Pokemon Art with Neighbors',
        email: 'jfk23@msn.com',
        creations: [
          Art(
            imgUrl: 'assets/images/mewtwo_mew.png',
            name: 'Mewtwo Tag Team',
            price: 30.00,
            desc: 'My son \'s all time favorite!',
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Art(
            imgUrl: 'assets/images/arceus_dialga_palkia.png',
            name: 'Arceus Dialga Combo',
            price: 25.00,
            desc: 'My son \'s second favorite piece',
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          
        ],
        collections: [
          Art(
            imgUrl: 'assets/images/mewtwo_mew.png',
            name: 'Mewtwo Tag Team',
            price: 30.00,
            desc: 'My son \'s all time favorite!',
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Art(
            imgUrl: 'assets/images/necrozma.png',
            name: 'Necrozma',
            price: 12.50,
            desc: 'Very rare, well-maintained piece',
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Art(
            imgUrl: 'assets/images/arceus_dialga_palkia.png',
            name: 'Arceus Dialga Combo',
            price: 25.00,
            desc: 'My son \'s second favorite piece',
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Art(
            imgUrl: 'assets/images/silvally.png',
            name: 'Silvally',
            price: 7.00,
            desc: 'Recently added piece, great price',
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
        ]);
  }
}
