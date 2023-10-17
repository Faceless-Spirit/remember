import 'package:flutter/material.dart';

List<Map> recentSmallCards = [recentlyPlayed[0], recentlyPlayed[3]];

List<Map> songs = [
  {
    'id': 1,
    'name': 'Lòng xào dưa',
    'artist': '500k',
    'album': 'Temporary',
    'albumArt':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1696151583/remember/nuocloc_pcphkg.jpg',
    'isLiked': false,
    'isExplicit': false
  },
  {
    'id': 2,
    'name': 'Nghệ xào tỏi',
    'artist': '200k',
    'album': 'Ie+',
    'albumArt':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1696151170/remember/bia_spdmtd.jpg',
    'isLiked': true,
    'isExplicit': false
  },
  {
    'id': 3,
    'name': "khô mực",
    'artist': '20k',
    'album': 'love is not dying',
    'albumArt':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1696151169/remember/wine_wxvq5i.jpg',
    'isLiked': true,
    'isExplicit': false
  },
  {
    'id': 4,
    'name': "Bia",
    'artist': '900k',
    'album': 'World War Joy',
    'albumArt':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1696151169/remember/coca_lts0sa.png',
    'isLiked': true,
    'isExplicit': true
  },
  {
    'id': 5,
    'name': "Lẩu cua đồng",
    'artist': '500k',
    'album': 'Sunoh',
    'albumArt':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1696151169/remember/bo_ery6th.jpg',
    'isLiked': true,
    'isExplicit': false
  },
  {
    'id': 6,
    'name': "Lợn quay",
    'artist': '350k',
    'album': 'But Us',
    'albumArt':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1696151169/remember/heo_v1bt6z.jpg',
    'isLiked': true,
    'isExplicit': false
  },
  {
    'id': 7,
    'name': "Heo quay",
    'artist': '351k',
    'album': 'Follow',
    'albumArt':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1696151169/remember/tom_qfmcqa.jpg',
    'isLiked': false,
    'isExplicit': false
  },
  {
    'id': 8,
    'name': "Vịt quay",
    'artist': '200k',
    'album': 'The Lost Youth',
    'albumArt':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1696151168/remember/be_z2ilwl.jpg',
    'isLiked': true,
    'isExplicit': false
  },
  {
    'id': 9,
    'name': "Ếch nhảy",
    'artist': '230k',
    'album': 'High Tide',
    'albumArt':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1696151168/remember/be_z2ilwl.jpg',
    'isLiked': true,
    'isExplicit': false
  },
  {
    'id': 10,
    'name': "Gỏi cá đuối",
    'artist': '679k',
    'album': 'Runaway Kids',
    'albumArt':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1696151168/remember/lau_tgdb23.jpg',
    'isLiked': false,
    'isExplicit': false
  },
  {
    'id': 11,
    'name': "Gỏi cá rô phi",
    'artist': '299k',
    'album': 'Another Step',
    'albumArt':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1696151168/remember/khaivi_boupeu.jpg',
    'isLiked': false,
    'isExplicit': false
  },
  {
    'id': 12,
    'name': "Cháo trắng",
    'artist': '10k',
    'album': 'PSYCHO',
    'albumArt':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1696151168/remember/dau_fakk95.jpg',
    'isLiked': false,
    'isExplicit': true
  },
];

List<Map> madeForUser = [
  {
    'id': 1,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'name': '',
    'description': 'Ghi chú',
    'duration': '2h 40min',
    'songs': songs,
    'colors': [const Color(0xFF98e4d8), Colors.transparent]
  },
  {
    'id': 2,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'name': '',
    'description': 'Ghi chú',
    'duration': '2h 40min',
    'songs': songs,
    'colors': [const Color(0xFFf6c8ca), Colors.transparent]
  },
  {
    'id': 3,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'name': '',
    'description': 'Ghi chú',
    'duration': '2h 40min',
    'songs': songs,
    'colors': [const Color(0xFFb5dcba), Colors.transparent]
  },
  {
    'id': 4,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'name': '',
    'description': 'Ghi chú',
    'duration': '2h 40min',
    'songs': songs,
    'colors': [const Color(0xFFdc799f), Colors.transparent]
  },
  {
    'id': 5,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'name': '',
    'description': 'Ghi chú',
    'duration': '2h 40min',
    'songs': songs,
    'colors': [const Color(0xFFf8c46b), Colors.transparent]
  },
  {
    'id': 6,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'name': '',
    'description': 'Ghi chú',
    'duration': '2h 40min',
    'songs': songs,
    'colors': [const Color(0xFF93b5c1), Colors.transparent]
  },
  {
    'id': 7,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'name': '',
    'description':
        '.',
    'duration': '2h 40min',
    'songs': songs,
    'colors': [const Color(0xFF364974), Colors.transparent]
  },
  {
    'id': 8,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'name': '',
    'description':
        '.',
    'duration': '2h 40min',
    'songs': songs,
    'colors': [const Color(0xFFcacaca), Colors.transparent]
  },
];

List<Map> recentlyPlayed = [
  {
    'id': 1,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1696177912/table/ban1_co1qbr.jpg',
    'title': 'Bàn 1',
    'type': 'Liked',
    'songs': songs,
    'colors': [const Color(0xFF523ba0), Colors.transparent],
    'isPinned': true
  },
  {
    'id': 2,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1696177912/table/ban3_xczmed.jpg',
    'title': 'Bàn 2',
    'name': 'Hóa đơn nè fen ơi',
    'description': 'Ghi chú ',
    'duration': '2h 40 phút',
    'type': 'VIP',
    'songs': songs,
    'colors': [const Color.fromARGB(255, 26, 176, 61), Colors.transparent],
    'isPinned': true
  },
  {
    'id': 3,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1696177912/table/ban2_w0iu7m.jpg',
    'title': 'Bàn 6',
    'type': 'President',
    'artist': 'Bàn 6',
    'colors': [const Color(0xFF523ba0), Colors.transparent],
    'artistAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'year': '2018',
    'date': 'June 8',
    'copyright': '',
    'songs': [
      {'title': "", 'artists': 'Ban 4'},
      {'title': "", 'artists': ''},
      {'title': "", 'artists': 'Ban 4'},
      {'title': "", 'artists': 'Ban 4'},
      {'title': "", 'artists': ''},
    ]
  },
  {
    'id': 4,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1696177911/table/ban7_ffr2rq.jpg',
    'title': 'Bàn 5',
    'type': 'President',
    'artist': 'Bàn 5',
    'colors': [const Color(0xFF523ba0), Colors.transparent],
    'artistAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'year': '2022',
    'date': 'May 13',
    'copyright': '',
    'songs': [
      {'title': "Heo", 'artists': '500k'},
      {'title': "Hổ", 'artists': '699k'},
      {'title': "Tôm đất", 'artists': '499k'},
      {'title': "Tôm sú", 'artists': '399k'},
      {'title': "Bò lạc", 'artists': '199k'},
      {'title': "Gà", 'artists': '400k'},
    ]
  },
  {
    'id': 5,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1696177911/table/ban4_iecyxm.jpg',
    'title': 'Bàn 3',
    'type': 'Normal',
    'artist': 'SIDEPIECE',
    'colors': [const Color(0xFF523ba0), Colors.transparent],
    'artistAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'year': '2021',
    'date': 'April 30',
    'copyright': '',
    'songs': [
      {'title': "Acrobatic", 'artists': ''}
    ]
  },
  {
    'id': 6,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1696177911/table/ban9_aandt9.jpg',
    'title': 'Bàn 3',
    'type': 'Normal',
    'colors': [const Color(0xFF523ba0), Colors.transparent],
    'artist': 'Osrin',
    'artistAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'year': '2019',
    'date': 'April 26',
    'copyright': '',
    'songs': [
      {'title': "Not That Complicated", 'artists': ''}
    ]
  },
];

List<Map> vietnamBest = [
  {
    'id': 1,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'description': 'Ghi chú',
    'name': '',
    'colors': [const Color(0xFFccf368), Colors.transparent],
    'likes': '263,222',
    'duration': '2h 40min',
    'by': 'Bàn',
    'byAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'songs': songs,
  },
  {
    'id': 2,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'description':
        '.',
    'name': '',
    'colors': [const Color(0xFFff4632), Colors.transparent],
    'by': 'Bàn',
    'byAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id': 3,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'description': 'Ghi chú',
    'name': '',
    'colors': [const Color(0xFF5ef550), Colors.transparent],
    'by': 'Bàn',
    'byAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id': 4,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'description':
        '',
    'name': '',
    'colors': [const Color(0xFFf36ebd), Colors.transparent],
    'by': 'Bàn',
    'byAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id': 5,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'description': 'Ghi chú',
    'name': 'Bàn',
    'colors': [const Color(0xFFf9e14a), Colors.transparent],
    'by': 'Bàn',
    'byAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
];

List<Map> charts = [
  {
    'id': 1,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1696177912/table/ban3_xczmed.jpg',
    'description':
        'Ghi chú của bàn này',
    'name': 'Bàn 3',
    'title': 'Bàn 3',
    'colors': [const Color(0xFF1e3264), Colors.transparent],
    'by': 'Tổng bill',
    'byAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '12,263,222',
    'type': 'VIP'
  },
  {
    'id': 2,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'description':
        '',
    'name': 'Bàn',
    'colors': [const Color(0xFF0e6e51), Colors.transparent],
    'by': 'Bàn',
    'byAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id': 3,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'description': 'Ghi chú',
    'name': 'Bàn',
    'colors': [const Color(0xFFfea32a), Colors.transparent],
    'by': 'Bàn',
    'byAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id': 4,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'description': 'Ghi chú',
    'name': 'Bàn',
    'colors': [const Color(0xFFe9142a), Colors.transparent],
    'by': 'Bàn',
    'byAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
];

List<Map> moods = [
  {
    'id': 1,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'description': 'VIP!',
    'name': "",
    'colors': [const Color(0xFF529df2), Colors.transparent],
    'by': 'Bàn',
    'byAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id': 2,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'description': 'Ghi chú',
    'name': "",
    'colors': [const Color(0xFF261d44), Colors.transparent],
    'by': 'Bàn',
    'byAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id': 3,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'description': 'Ghi chú',
    'name': "Feel Good Piano",
    'colors': [const Color(0xFF22379d), Colors.transparent],
    'by': 'Bàn',
    'byAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id': 4,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'description':
        '',
    'name': "",
    'colors': [const Color(0xFF2a1815), Colors.transparent],
    'by': 'Bàn',
    'byAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id': 5,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'description': 'Ghi chú',
    'name': "",
    'colors': [const Color(0xFF4d6e71), Colors.transparent],
    'by': 'Bàn',
    'byAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id': 6,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'description': 'Ghi chú',
    'name': "",
    'colors': [const Color(0xFF8a8ca4), Colors.transparent],
    'by': 'Bàn',
    'byAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
];

List<Map> newReleases = [
  {
    'id': 1,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'title': null,
    'description':
        '',
    'duration': '2h 40min',
    'type': 'VIP',
    'songs': songs,
    'name': 'Bàn',
    'colors': [const Color(0xFFcacaca), Colors.transparent]
  },
  {
    'id': 2,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'title': 'Bàn 3',
    'description': 'Ghi chú',
    'type': '',
    'artist': '',
    'colors': [const Color(0xFFac86e2), Colors.transparent],
    'artistAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'year': '2022',
    'date': 'November 25',
    'copyright': '',
    'songs': [
      {'title': "", 'artists': ''}
    ]
  },
  {
    'id': 3,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'title': 'Bàn 3',
    'description': 'Ghi chú',
    'type': 'President',
    'artist': '',
    'colors': [const Color(0xFF3c3c3c), Colors.transparent],
    'artistAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'year': '2022',
    'date': 'December 2',
    'copyright': '',
    'songs': [
      {'title': "", 'artists': ''},
      {'title': "", 'artists': ''},
      {'title': "", 'artists': ''},
      {'title': "", 'artists': ''},
      {'title': "", 'artists': ''},
      {'title': "", 'artists': ''}
    ]
  },
  {
    'id': 4,
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'title': 'Bàn12',
    'description': 'Ghi chú',
    'type': 'Normal',
    'artist': 'Bàn thường',
    'colors': [const Color(0xFF545454), Colors.transparent],
    'artistAvatar':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
    'year': '2022',
    'date': 'December 2',
    'copyright':
        '',
    'songs': [
      {'title': "Bàn 12", 'artists': ''}
    ]
  },
];

List<Map> searchCategories = [
  {
    "title": "Bia",
    "image":
        "https://res.cloudinary.com/drpatrit3/image/upload/v1696151170/remember/bia_spdmtd.jpg",
    "color": const Color(0xFF8400E7)
  },
  {
    "title": "Rượu",
    "image":
        "https://res.cloudinary.com/drpatrit3/image/upload/v1696151169/remember/wine_wxvq5i.jpg",
    "color": const Color(0xFF1E3164)
  },
  {
    "title": "Nước ngọt",
    "image":
        "https://res.cloudinary.com/drpatrit3/image/upload/v1696151169/remember/coca_lts0sa.png",
    "color": const Color(0xFFB02797)
  },
  {
    "title": "Nước lọc",
    "image":
        "https://res.cloudinary.com/drpatrit3/image/upload/v1696151583/remember/nuocloc_pcphkg.jpg",
    "color": const Color(0xFF8C67AB)
  },
  {
    "title": "Các món lợn",
    "image":
        "https://res.cloudinary.com/drpatrit3/image/upload/v1696151169/remember/heo_v1bt6z.jpg",
    "color": const Color(0xFF148A06)
  },
  {
    "title": "Các món bò",
    "image":
        "https://res.cloudinary.com/drpatrit3/image/upload/v1696151169/remember/bo_ery6th.jpg",
    "color": const Color(0xFFBA5D08)
  },
  {
    "title": "Các món tôm",
    "image":
        "https://res.cloudinary.com/drpatrit3/image/upload/v1696151169/remember/tom_qfmcqa.jpg",
    "color": const Color(0xFFD74000)
  },
  {
    "title": "Các món bê",
    "image":
        "https://res.cloudinary.com/drpatrit3/image/upload/v1696151168/remember/be_z2ilwl.jpg",
    "color": const Color(0xFFE8105B)
  },
  {
    "title": "Lẩu",
    "image":
        "https://res.cloudinary.com/drpatrit3/image/upload/v1696151168/remember/lau_tgdb23.jpg",
    "color": const Color(0xFF8C67AB)
  },
  {
    "title": "Món khai vị",
    "image":
        "https://res.cloudinary.com/drpatrit3/image/upload/v1696151168/remember/khaivi_boupeu.jpg",
    "color": const Color(0xFFAF2796)
  },
  {
    "title": "Tráng miệng",
    "image":
        "https://res.cloudinary.com/drpatrit3/image/upload/v1696151168/remember/trangmieng_dpeiqk.jpg",
    "color": const Color(0xFFE91528)
  },
  {
    "title": "Dê",
    "image":
        "https://res.cloudinary.com/drpatrit3/image/upload/v1696151168/remember/de_s3dhwc.jpg",
    "color": const Color(0xFF056852)
  },
  {
    "title": "Cua",
    "image":
        "https://res.cloudinary.com/drpatrit3/image/upload/v1696151168/remember/cua_zbxlio.jpg",
    "color": const Color(0xFF8400E7)
  },
  {
    "title": "Các món đậu",
    "image":
        "https://res.cloudinary.com/drpatrit3/image/upload/v1696151168/remember/dau_fakk95.jpg",
    "color": const Color(0xFF4F3750)
  },
  {
    "title": "Hải sản",
    "image":
        "https://res.cloudinary.com/drpatrit3/image/upload/v1696151168/remember/haisan_qkzfto.jpg",
    "color": const Color(0xFF777777)
  },
];

List<Map> library = [
  recentlyPlayed[0],
  recentlyPlayed[1],
  {
    'id': 3,
    'type': 'Bình dân',
    'title': 'Bàn 10',
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
  },
  charts[0],
  recentlyPlayed[3],
  recentlyPlayed[2],
  newReleases[3],
  {
    'id': 3,
    'type': 'Bình dân',
    'title': 'Bàn 7',
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
  },
  {
    'id': 5,
    'type': 'Bàn tổng thống',
    'title': 'Bàn 8',
    'imageUrl':
        'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg',
  },
];

Map nowPlaying = {
  "title": "iPad",
  "artists": "The Chainsmokers",
  "album": "So Far So Good",
  "imageUrl":
      "https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg",
  "color": const Color(0xFF372A46),
  "playerColor": const Color(0xFFBD94ED),
  "playerColor2": const Color.fromARGB(255, 151, 127, 180)
};

List settingOptions = [
  "Tài khoản",
  "Thống kê doanh thu",
  "Ngôn ngữ",
  "Quản lý bếp",
  "Quản lý kho",
  "Tùy chọn thay đổi món theo thời giá",
  "Phân quền nhân viên",
  "Lịch sử nhập hàng",
  "Thông báo",
  "Về quán của chúng tôi"
];
