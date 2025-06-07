class User {
  final String username;
  final String profileImageUrl;
  final String subscribers;

  const User({
    required this.username,
    required this.profileImageUrl,
    required this.subscribers,
  });
}

const User currentUser = User(
  username: 'Boris W',
  profileImageUrl: 'assets/images/boris_w.jpeg',
  subscribers: '100K',
);

class Video {
  final String id;
  final User author;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;
  final String likes;
  final String dislikes;

  const Video({
    required this.id,
    required this.author,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.timestamp,
    required this.viewCount,
    required this.likes,
    required this.dislikes,
  });
}

final List<Video> videos = [
  Video(
    id: 'x606y4QWrxo',
    author: currentUser,
    title: 'YOU - AYO ALABI FT TOPE ALABI (official video)',
    thumbnailUrl:
        'https://i.ytimg.com/vi/s_Io0fWjtiE/hq720.jpg?sqp=-…RhyIE0oPjAP&rs=AOn4CLCNw4J7Nix54eArNaGHj0s8m1sEew',
    duration: '8:20',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '10K',
    likes: '958',
    dislikes: '4',
  ),
  Video(
    author: currentUser,
    id: 'vrPk6LB9bjo',
    title:
        'Build Flutter Apps Fast with Riverpod, Firebase, Hooks, and Freezed Architecture',
    thumbnailUrl: 'https://i.ytimg.com/vi/vrPk6LB9bjo/0.jpg',
    duration: '22:06',
    timestamp: DateTime(2021, 2, 26),
    viewCount: '8K',
    likes: '485',
    dislikes: '8',
  ),
  Video(
    id: 'ilX5hnH8XoI',
    author: currentUser,
    title: 'Résumé de FC Barcelona / Real Madrid - LaLiga 2024-25 (J35)',
    thumbnailUrl:
        'https://i.ytimg.com/vi/mBjcljwwzlU/hqdefault.jpg?s…AFwAcABBg==&rs=AOn4CLCRBQsDy815aHsokNSCFc5YbEJdTw',
    duration: '10:53',
    timestamp: DateTime(2020, 7, 12),
    viewCount: '18K',
    likes: '1k',
    dislikes: '4',
  ),
  Video(
    id: 'ilX5hnH8XoI',
    author: currentUser,
    title: 'Lomé secouée par des manifestations et arrestations',
    thumbnailUrl:
        'https://i.ytimg.com/vi/SZ-lxfR_3Cg/hq720.jpg?sqp=-…RhlIGAoVzAP&rs=AOn4CLAgLr5MZgA8GYhUdKDzdCawq0CEUw',
    duration: '10:53',
    timestamp: DateTime(2020, 7, 12),
    viewCount: '18K',
    likes: '1k',
    dislikes: '4',
  ),
  Video(
    id: 'ilX5hnH8XoI',
    author: currentUser,
    title: 'Clash Trump-Musk : le président américain se dit "très déçu" par Musk "le fou" • FRANCE 24',
    thumbnailUrl:
        'https://i.ytimg.com/vi/N0KpKilyc10/hq720.jpg?sqp=-…BACGAY4AUAB&rs=AOn4CLAy-sBE_IWuO5yS_tUrcOrZpOgxCQ',
    duration: '10:53',
    timestamp: DateTime(2020, 7, 12),
    viewCount: '18K',
    likes: '1k',
    dislikes: '4',
  ),
];

final List<Video> suggestedVideos = [
  Video(
    id: 'rJKN_880b-M',
    author: currentUser,
    title: 'Flutter Netflix Clone Responsive UI Tutorial | Web and Mobile',
    thumbnailUrl: 'https://i.ytimg.com/vi/rJKN_880b-M/0.jpg',
    duration: '1:13:15',
    timestamp: DateTime(2020, 8, 22),
    viewCount: '32K',
    likes: '1.9k',
    dislikes: '7',
  ),
  Video(
    id: 'HvLb5gdUfDE',
    author: currentUser,
    title: 'Flutter Facebook Clone Responsive UI Tutorial | Web and Mobile',
    thumbnailUrl: 'https://i.ytimg.com/vi/HvLb5gdUfDE/0.jpg',
    duration: '1:52:12',
    timestamp: DateTime(2020, 8, 7),
    viewCount: '190K',
    likes: '9.3K',
    dislikes: '45',
  ),
  Video(
    id: 'h-igXZCCrrc',
    author: currentUser,
    title: 'Flutter Chat UI Tutorial | Apps From Scratch',
    thumbnailUrl: 'https://i.ytimg.com/vi/h-igXZCCrrc/0.jpg',
    duration: '1:03:58',
    timestamp: DateTime(2019, 10, 17),
    viewCount: '358K',
    likes: '20k',
    dislikes: '85',
  ),
];
