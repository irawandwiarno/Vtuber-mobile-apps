import 'dart:ui';

class Idol {
  final String nama;
  final String gender;
  final String jargon;
  final String des;
  final Color color;
  final String imageLink;
  final String imageFull;
  final int vote;

  Idol({
    required this.nama,
    required this.gender,
    required this.jargon,
    required this.des,
    required this.color,
    required this.imageLink,
    required this.imageFull,
    required this.vote,
  });
}

var idolList = [
  Idol(
      nama: "Vestia Zeta",
      gender: "Female",
      jargon: "\"Mission Start! Halo namaku Vestia Zeta secret agent dari Hololive ID Gen 3\"",
      des: "Dia adalah rekrutan misterius ke-7 dari unit arsip rahasia yang memiliki lisensi penuh untuk mengumpulkan data virtual. Meskipun dia adalah seorang pemula yang menjanjikan, yang juga dikenal sebagai codename V.7, dia menjadi kikuk ketika segala sesuatunya tidak berjalan sesuai dengan manual. Itu awalnya adalah misi sendiri untuk menyusup ke dunia virtual, tetapi sekarang dia telah menemukan kenyamanan disini. Akankah misi ini berakhir dengan membawanya ke takdir yang baru?",
      color: Color(0xFF9A9FAD),
      imageLink: "asset/img/zeta.jpg",
      imageFull: "asset/img/vestia-zeta.webp",
      vote: 5780),
 Idol(
     nama: "Kobo Kanaeru",
     gender: "Female",
     jargon: "\"Bo Kobo Kobo Kanaeru at your service, let me be your shine to shine your day ehe!\"",
     des: "Dia adalah rekrutan misterius ke-7 dari unit arsip rahasia yang memiliki lisensi penuh untuk mengumpulkan data virtual. Meskipun dia adalah seorang pemula yang menjanjikan, yang juga dikenal sebagai codename V.7, dia menjadi kikuk ketika segala sesuatunya tidak berjalan sesuai dengan manual. Itu awalnya adalah misi sendiri untuk menyusup ke dunia virtual, tetapi sekarang dia telah menemukan kenyamanan disini. Akankah misi ini berakhir dengan membawanya ke takdir yang baru?",
     color: Color(0xFF78D6EA),
     imageLink: "asset/img/kobo.jpg",
     imageFull: "asset/img/kobo-kanaeru.webp",
     vote: 9608),
 Idol(
     nama: "Kaela Kovalskia",
     gender: "Female",
     jargon: "\"Hi Semuanya!\"",
     des: "Setelah mengambil alih bengkel guru pandai besinya, dia merasakan kurangnya kebahgiaan / kegembiraan dalam hidupnya. Jadi, dia memutuskan untuk bebas dan melakukan perjalanan untuk menemukan bahan pandai besi yang langka, salah satunya dikabarkan berada di bawah bangunan 'Group Idola' tertentu di kota. Dia juga suka menantang dirinya dan memiliki selera yang aneh dalam hal makanan!",
     color: Color(0xFFE62E2D),
     imageLink: "asset/img/kaela.jpg",
     imageFull: "asset/img/kaela-kolvalskia.webp",
     vote: 2680),
 Idol(
     nama: "Kureiji Ollie",
     gender: "Female",
     jargon: "\"ZOMBANWA!! SUPER KAWAII ZOMBIE IDOL, KU KU KU KUREIJI OLLIE DESU~!!\"",
     des: "Setelah mengambil alih bengkel guru pandai besinya, dia merasakan kurangnya kebahgiaan / kegembiraan dalam hidupnya. Jadi, dia memutuskan untuk bebas dan melakukan perjalanan untuk menemukan bahan pandai besi yang langka, salah satunya dikabarkan berada di bawah bangunan 'Group Idola' tertentu di kota. Dia juga suka menantang dirinya dan memiliki selera yang aneh dalam hal makanan!",
     color: Color(0xFFC72735),
     imageLink: "asset/img/ollie.jpg",
     imageFull: "asset/img/kureiji-ollie.webp",
     vote: 4720),
 Idol(
     nama: "Ayunda Risu",
     gender: "Female",
     jargon: "\"Hewwrroo everyone~!! Purupuru ganbari Risu ~\"",
     des: "Seorang gadis tupai dari hutan ajaib. Dia tersesat di dunia manusia, tetapi karena keadaan tertentu, dia akhirnya tinggal di rumah seorang kakak perempuan yang baik hati. Untuk membalas budi, dia memutuskan untuk menjadi VTuber. Dia suka melakukan lelucon pada orang, pemalu dengan orang baru, dan suka menggoda penontonnya. Tawanya juga merupakan salah satu ciri khasnya.",
     color: Color(0xFFE5919B),
     imageLink: "asset/img/risu.jpg",
     imageFull: "asset/img/ayunda-risu.webp",
     vote: 8569),
 Idol(
     nama: "Anya Melfissa",
     gender: "Female",
     jargon: "\"Good day! This is Anya Melfissa from hololive ID 2nd Generation\"",
     des: "Senjata kuno yang dikenal sebagai 'Keris', dia diberikan bentuk manusia melalui ritual mistis yang dilakukan oleh tuannya. Dia hampir selalu tidur atau bermain game. Hidup sendirian begitu lama telah membuatnya cenderung apatis terhadap hal-hal dan orang-orang yang tidak dia minati, tetapi ketika berbicara tentang hal-hal yang dia sukai, dia bisa sangat kekanak-kanakan dan bersemangat. Kepribadian dasarnya sebenarnya apatis, terutama terhadap manusia. Jangan biarkan penampilan membodohimu - itulah yang selalu dikatakan oleh setiap manusia bodoh pada diri mereka sendiri.",
     color: Color(0xFFF8E100),
     imageLink: "asset/img/anya.jpg",
     imageFull: "asset/img/anya-melfisa.webp",
     vote: 14638),
];
