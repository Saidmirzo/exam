import 'package:exam/config/constants/assets.dart';
import 'package:exam/features/fines/data/models/fines_model.dart';
import 'package:exam/features/news/data/models/news_model.dart';
import 'package:exam/features/ticket/data/models/quetion_model.dart';

import '../../features/statistics/presentation/widgets/custom_line_chart.dart';

List<QuetionModel> listQuetions = [
  QuetionModel(
    listAnswers: [
      'Bo’lak oxiri',
      'Og’ir vaznli va yirik o’lchamdagiyuklarni tashuvchi yo’l,',
      "Uzunligi yuk bilan yoki 20 metrdan ortiq bo’lgan transport vositasi yo’li"
    ],
    correctAnswer:  'Bo’lak oxiri',
    quetion: "Ushbu yo’l belgisiga to’g’ri tarifni belgilang:",
    image: Assets.images.testPic,

  ),
];

List<NewsModel> listNews = List.generate(
  10,
  (index) => NewsModel(
    title:
        'Vazirlar Mahkamasining 3-apreldagi 140-sonli qaroriga binoan, Yoʻl harakati qoidalariga oʻzgarish kiritildi',
    time: '7 Aprel 2023',
    views: 340,
    isNew: index % 2 == 0,
    image: Assets.images.news,
    describe:
        '''“Yo‘l harakati xavfsizligi to‘g‘risida”gi O‘zbekiston Respublikasi Qonunining ijrosini ta’minlash, shuningdek, 1968-yildagi Yo‘l harakati to‘g‘risidagi Vena Konvensiyasi talablari hamda ilg‘or xorijiy tajribaga muvofiq Yo‘l harakati qoidalarini yanada takomillashtirish, yo‘l-transport hodisalarining oldini olish, yo‘l harakati xavfsizligini nazorat qilish va samaradorligini oshirish maqsadida Vazirlar Mahkamasi qaror qiladi:
1. Shunday tartib o‘rnatilsinki, unga muvofiq:
a) aholi punktlarida transport vositalarining tezligini soatiga 70 kilometrdan, maktab va maktabgacha ta’lim tashkilotlari atrofidagi yo‘llarda 300 metrgacha bo‘lgan masofada 30 kilometrdan, turar joy dahalari va yondosh hududlarda (uy-joy binolari orasidagi yer uchastkasida) esa soatiga 20 kilometrdan oshirmasdan harakatlanishga ruxsat etiladi.
Bunda O‘zbekiston Respublikasi Prezidentining “Avtomobil yo‘llarida inson xavfsizligini ishonchli ta’minlash va o‘lim holatlarini keskin kamaytirish chora-tadbirlari to‘g‘risida” 2022-yil 4-apreldagi PQ-190-son qarori bilan tashkil etilgan Yo‘l harakati xavfsizligini ta’minlash sohasidagi respublika komissiyasining qarori asosida Toshkent va Nukus shaharlari hamda viloyatlar markazlaridagi yo‘l harakati qatnovi yuqori bo‘lgan va aholi gavjum hududlarda transport vositalari harakatlanishining yuqori tezligi soatiga 60 kilometr etib belgilanishi mumkin;
b) yengil avtomobillarda yuk tashishga ularning tom qismiga o‘rnatilgan yukxonadagi yukning balandligi 1 metrdan (maxsus moslamalar bilan mustahkamlangan holda velosipedlarni tashish bundan mustasno) va uzunligi avtomobilning gabaritidan 0,5 metrdan oshmagan taqdirda yo‘l qo‘yiladi;
v) yuk avtomobillari, Yo‘l harakati qoidalarida belgilangan ayrim istisnolardan tashqari barcha holatlarda, yo‘lning faqat o‘ng qatnov qismidan harakatlanishi shart;
g) transport vositalarining qayrilib olish joylarida va unga 30 metr yetmasdan yoki o‘tib to‘xtash taqiqlanadi;
d) sutkaning qorong‘i vaqtida va yetarlicha ko‘rinmaydigan sharoitda velosiped yo‘lkasi bo‘lmagan holda yo‘lning qatnov qismida harakatlanayotgan velosipedchilar nur qaytargichli kamzulda yoki nur qaytaruvchi elementlar bo‘lgan ustki kiyimda bo‘lishi shart.
Bunda ushbu nur qaytaruvchi elementlar boshqa haydovchilarga ko‘rinadigan bo‘lishi kerak.
2. Yangi tahrirdagi Yo‘l harakati qoidalari 1-ilovaga muvofiq tasdiqlansin va 2022-yil 1-maydan boshlab amalga kiritilsin.
3. O‘zbekiston Respublikasi Ichki ishlar vazirligi:
fuqarolarning, ayniqsa, bolalarning yo‘l-transport hodisalari hamda oqibatlaridan himoyalanganligini ta’minlash maqsadida aholi hamda haydovchilar o‘rtasida 7 yoshgacha bo‘lgan bolalarni maxsus bolalar o‘rindig‘ida, 7 yoshdan 12 yoshgacha bo‘lgan bolalarni maxsus ushlab turuvchi moslamali xavfsizlik kamarini taqqan holda tashish, transport vositasining orqa o‘rindig‘idagi yo‘lovchilar ham xavfsizlik kamarlarini taqib olishlari, shuningdek, sutkaning qorong‘i vaqtida va yetarlicha ko‘rinmaydigan sharoitda yo‘lni kesib o‘tishda va yo‘l yoqalaridan yoki qatnov qismining chetidan harakatlanishda, piyodalarning ustki kiyimida nur qaytaruvchi elementlar bo‘lishi inson hayotini saqlab qolish uchun muhim ekanligini keng targ‘ib qilish bo‘yicha manzilli chora-tadbirlarni amalga oshirsin;
Yo‘l harakati qoidalari, jumladan, unga kiritilgan o‘zgarishlarning mazmun-mohiyatini ommaviy axborot vositalari, ijtimoiy tarmoqlar va rasmiy veb-saytda keng yoritilishi tashkil etilishini ta’minlasin;
manfaatdor vazirlik va idoralar bilan birgalikda o‘zlari qabul qilgan normativ-huquqiy hujjatlarni bir oy muddatda ushbu qarorga muvofiqlashtirsin.
4. O‘zbekiston Respublikasi Hukumatining 2-ilovaga muvofiq ayrim qarorlari 2022-yil 1-maydan boshlab o‘z kuchini yo‘qotgan deb hisoblansin.
5. Mazkur qarorning bajarilishini nazorat qilish O‘zbekiston Respublikasi ichki ishlar vaziri P.R. Bobojonov zimmasiga yuklansin.
O‘zbekiston Respublikasining Bosh vaziri A. ARIPOV''',
  ),
);

List<Coordinate> listCoordinate = [
  Coordinate(0, 55),
  Coordinate(4, 46),
  Coordinate(11, 45),
  Coordinate(13, 33),
  Coordinate(17, 28),
  Coordinate(24, 44),
  Coordinate(29, 40),
  Coordinate(33, 43),
  Coordinate(38, 38),
  Coordinate(41, 47),
  Coordinate(45, 48),
  Coordinate(48, 67),
  Coordinate(52, 71),
  Coordinate(58, 30),
  Coordinate(61, 36),
  Coordinate(64, 31),
  Coordinate(67, 68),
  Coordinate(70, 68),
  Coordinate(72, 45),
  Coordinate(75, 49),
  Coordinate(77, 40),
  Coordinate(80, 45),
  Coordinate(81, 21),
  Coordinate(84, 40),
  Coordinate(87, 40),
];

List<String> listRoads = [
  Assets.images.sign1,
  Assets.images.sign2,
  Assets.images.sign3,
  Assets.images.sign4,
  Assets.images.sign5,
  Assets.images.sign6,
];
List<FinesModel> listFines = [
  FinesModel(
    number: 125,
    info:
        '''Haydovchilarning transport vositalarini boshgarish va yo'lovchilar tashishda xavfsizlik kamaridan foydalanish qoidalariga, xuddi shuningdek mototsikl va mopedlar haydovchilarining motoshlemlardan foydalanish qoidalariga rioya etmasligi .''',
    cost: 135000,
  ),
  FinesModel(
    number: 125,
    info:
        '''Haydovchilarning belgilangan tartibda ro'yxatdan o'tkazilmagan yoki majburiy texnik ko’rikdan o'tkazilmagan yoxud foydalanish man etiladigan darajada nosozligi bo'lgan yoki qonun hujjatlarida belgilangan tartibda favqulodda vaziyatda oynani sindirish uchun foydalaniladigan bolg’acha bilan jihozlanmagan, o’t o'chirgich, tibbiyot qutichasi, avariya holatida to’xtaganligini bildiruvchi belgi va nur qaytargichli kamzul bilan butlanmagan, xuddi shuningdek ishlayotganida tashqariga chigarayotgan ifloslantiruvchi moddalarning miqdori, shuningdek shovgain darajasi belgilangan normalardan ortiq bo‘lgan transport vositalarini boshgarishi''',
    cost: 135000,
  )
];
