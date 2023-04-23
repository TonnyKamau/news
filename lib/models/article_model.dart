import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.views,
    required this.createdAt,
  });

  static List<Article> articles = [
    Article(
        id: '1',
        title: 'BTC Price Analysis: Bitcoin Breaks 50K, But Can It Hold?',
        subtitle:
            'Breaking above 50,000 is a big deal for Bitcoin, but can it hold? Here’s what the charts are saying.',
        body:
            'The federal government has been working on a plan to tax cryptocurrency transactions. With the IRS now sending out letters to crypto holders, the time to act is now. Here’s what you need to know.This week, the IRS sent out letters to 10,000 cryptocurrency holders, warning them that they may owe taxes on their crypto transactions. The letters were sent to holders of Bitcoin, Ethereum, and other cryptocurrencies, and they were sent to those who had not filed a tax return for 2013 or later. The letters were sent out as part of the IRS’s efforts to crack down on cryptocurrency tax evasion. The IRS has been working on a plan to tax cryptocurrency transactions since 2014, and the agency has been sending out letters to crypto holders since 2019. The letters are part of the IRS’s efforts to crack down on cryptocurrency tax evasion. The IRS has been working on a plan to tax cryptocurrency transactions since 2014, and the agency has been sending out letters to crypto holders since 2019. The letters are part of the IRS’s efforts to crack down on cryptocurrency tax evasion. The IRS has been working on a plan to tax cryptocurrency transactions since 2014, and the agency has been sending out letters to crypto holders since 2019. The letters are part of the IRS’s efforts to crack down on cryptocurrency tax evasion. The IRS has been working on a plan to tax cryptocurrency transactions since 2014, and the agency has been sending out letters to crypto holders since 2019. The letters are part of the IRS’s efforts to crack down on cryptocurrency tax evasion. The IRS has been working on a plan to tax cryptocurrency transactions since 2014, and the agency has been sending out letters to crypto holders since 2019. The letters are part of the IRS’s efforts to crack down on cryptocurrency tax evasion. The IRS has been working on a plan to tax cryptocurrency transactions since 2014, and the agency has been sending out letters to crypto holders since 2019. The letters are part of the IRS’s efforts to crack down on cryptocurrency tax evasion. The IRS has been working on a plan to tax cryptocurrency transactions since 2014, and the agency has been sending out letters to crypto holders since 2019. The letters are part of the IRS’s efforts to crack down on cryptocurrency tax evasion. The IRS has been working on a plan to tax cryptocurrency transactions since 2014, and the agency has been sending out letters to crypto holders since 2019. The letters are part of the IRS’s efforts to crack down on cryptocurrency tax evasion. The IRS has been working on a plan to tax cryptocurrency transactions since 2014, and',
        author: 'John Doe',
        authorImageUrl:
            'https://images.unsplash.com/photo-1546422904-90eab23c3d7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bmV3c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        category: 'Flutter',
        imageUrl:
            'https://images.unsplash.com/photo-1469474968028-56623f02e42e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        views: 100,
        createdAt: DateTime.now().subtract(const Duration(hours: 6))),
    Article(
        id: '2',
        title: 'How is Ethereum different from Bitcoin?',
        subtitle:
            'Ethereum is a decentralized, open-source blockchain with smart contract functionality.',
        body:
            'Ethereum is becoming increasingly popular as a platform for decentralized applications (dApps). Ether is the native cryptocurrency of the Ethereum blockchain. It is the second-largest cryptocurrency by market capitalization, after Bitcoin. Ethereum is a decentralized, open-source blockchain with smart contract functionality. Ethereum is becoming increasingly popular as a platform for decentralized applications (dApps). Ether is the native cryptocurrency of the Ethereum blockchain. It is the second-largest cryptocurrency by market capitalization, after Bitcoin. Ethereum is a decentralized, open-source blockchain with smart contract functionality. Ethereum is becoming increasingly popular as a platform for decentralized applications (dApps). Ether is the native cryptocurrency of the Ethereum blockchain. It is the second-largest cryptocurrency by market capitalization, after Bitcoin. Ethereum is a decentralized, open-source blockchain with smart contract functionality. Ethereum is becoming increasingly popular as a platform for decentralized applications (dApps). Ether is the native cryptocurrency of the Ethereum blockchain. It is the second-largest cryptocurrency by market capitalization, after Bitcoin. Ethereum is a decentralized, open-source blockchain with smart contract functionality. Ethereum is becoming increasingly popular as a platform for decentralized applications (dApps). Ether is the native cryptocurrency of the Ethereum blockchain. It is the second-largest cryptocurrency by market capitalization, after Bitcoin. Ethereum is a decentralized, open-source blockchain with smart contract functionality. Ethereum is becoming increasingly popular as a platform for decentralized applications (dApps). Ether is the native cryptocurrency of the Ethereum blockchain. It is the second-largest cryptocurrency by market capitalization, after Bitcoin. Ethereum is a decentralized, open-source blockchain with smart contract functionality. Ethereum is becoming increasingly popular as a platform for decentralized applications (dApps). Ether is the native cryptocurrency of the Ethereum blockchain. It is the second-largest cryptocurrency by market capitalization, after Bitcoin. Ethereum is a decentralized, open-source blockchain with smart contract functionality. Ethereum is becoming increasingly popular as a platform for decentralized applications (dApps). Ether is the native cryptocurrency of the Ethereum blockchain. It is the second-largest cryptocurrency by market capitalization, after Bitcoin. Ethereum is a decentralized, open-source blockchain with smart contract functionality. Ethereum is becoming increasingly popular as a platform for decentralized applications (dApps). Ether is the native cryptocurrency of the Ethereum blockchain. It is the second-largest cryptocurrency by market capitalization, after Bitcoin. Ethereum is a decentralized, open-source blockchain with smart contract functionality. Ethereum is becoming increasingly popular as a platform for decentralized applications (dApps). Ether is the native cryptocurrency of the Ethereum blockchain. It is the second-largest cryptocurrency by market capitalization, after Bitcoin. Ethereum is a decentralized, open-source blockchain with',
        author: 'Tom Doe',
        authorImageUrl:
            'https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmV3c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        category: 'Flutter',
        imageUrl:
            'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bmF0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        views: 100,
        createdAt: DateTime.now().subtract(const Duration(hours: 5))),
    Article(
        id: '2',
        title: 'How is Ethereum different from Bitcoin?',
        subtitle:
            'Ethereum is a decentralized, open-source blockchain with smart contract functionality.',
        body:
            'Ethereum is becoming increasingly popular as a platform for decentralized applications (dApps).',
        author: 'Tom Doe',
        authorImageUrl:
            'https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmV3c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        category: 'Flutter',
        imageUrl:
            'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bmF0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        views: 1000,
        createdAt: DateTime.now().subtract(const Duration(hours: 7))),
    Article(
        id: '2',
        title: 'How is Ethereum different from Bitcoin?',
        subtitle:
            'Ethereum is a decentralized, open-source blockchain with smart contract functionality.',
        body:
            'Ethereum is becoming increasingly popular as a platform for decentralized applications (dApps).',
        author: 'Tom Doe',
        authorImageUrl:
            'https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmV3c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        category: 'Flutter',
        imageUrl:
            'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bmF0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        views: 100,
        createdAt: DateTime.now().subtract(const Duration(hours: 8))),
  ];
  @override
  List<Object> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        views,
        createdAt,
      ];
}
