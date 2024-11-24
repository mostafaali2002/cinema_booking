class MoviesModel {
  final String poster, title, gener, synosis, duration;
  final double rating;

  const MoviesModel(
      {required this.poster,
      required this.rating,
      required this.duration,
      required this.title,
      required this.gener,
      required this.synosis});
}

List<MoviesModel> items = [
  const MoviesModel(
      poster:
          "https://image.tmdb.org/t/p/w1280/qWD9E0Wgn8w6nMMutCNFAUiSHrX.jpg",
      rating: 9.0,
      duration: "120 minutes",
      title: "Blade Runner 2049",
      gener: "Action",
      synosis:
          "The film takes place thirty years after the events of the first film , and after the collapse of the Tyrell Corporation and the collapse of the world order in mid-2020, the new Blade Runner Officer K discovers a long-buried secret, and this discovery leads him to search for Rick, who has been missing for thirty years. K visits the Wallace Corporation (the successor to the Tyrell Corporation), a notoriously corrupt company that specializes in the manufacture of replicants, genetically engineered human beings .  He matches the DNA of the company's archives to find that Rachel is an experimental replicant."),
  const MoviesModel(
      poster:
          "https://moviebuzzers.com/wp-content/uploads/2013/07/Despicable-Me-2-poster.jpg",
      rating: 8.3,
      duration: "110 minutes",
      title: "Minions : Despicable Me 2",
      gener: "Comedy",
      synosis:
          "Despicable Me 2 is a 2013 American animated comedy film produced by Universal Pictures and Illumination Entertainment, and distributed by Universal. It is the sequel to Despicable Me (2010) and the second installment in the Despicable Me franchise. The film was directed by Chris Renaud and Pierre Coffin, produced by Chris Meledandri and Janet Healy, and written by the writing team of Cinco Paul and Ken Daurio. It stars the voices of Steve Carell, Kristen Wiig, Benjamin Bratt, Miranda Cosgrove, Russell Brand, and Ken Jeong. The film follows retired supervillain Gru as he is recruited by secret agent Lucy Wilde to investigate the theft of a powerful mutagen by El Macho, a supervillain who seeks to achieve world domination."),
  const MoviesModel(
      poster:
          "https://comic-cons.xyz/wp-content/uploads/marvel-cinematic-universe-the-avengers-endgame-movie-poster-830x1230.jpg",
      rating: 8.0,
      duration: "130 minutes",
      title: "Avengers",
      gener: "Action",
      synosis:
          "The Avengers are a team of fictional superheroes and the protagonists of the Marvel Cinematic Universe (MCU) media franchise, based on the Marvel Comics team of the same name created by Stan Lee and Jack Kirby in 1963. Founded by S.H.I.E.L.D. Director Nick Fury, the team is a United States–based organization composed primarily of superpowered and gifted individuals, described as Earth's Mightiest Heroes, who are committed to the world's protection from a variety of threats. The Avengers are depicted as operating in the state of New York: originally from the Avengers Tower in Midtown Manhattan and subsequently in the Avengers Compound in Upstate New York. "),
  const MoviesModel(
      poster:
          "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/c58b4681277211.5cfa6e54a6d3d.jpg",
      rating: 8.9,
      duration: "140 minutes",
      title: "Joker (2019)",
      gener: "Criminal",
      synosis:
          "Joker is a 2019 American psychological thriller film directed by Todd Phillips from a screenplay he co-wrote with Scott Silver. The film stars Joaquin Phoenix and is loosely based on DC Comics characters, including the Joker."),
  const MoviesModel(
      poster:
          "https://image.tmdb.org/t/p/original/mXLOHHc1Zeuwsl4xYKjKh2280oL.jpg",
      rating: 7.5,
      duration: "150 minutes",
      title: "Blue Beetle",
      gener: "Drama",
      synosis:
          "Blue Beetle is a 2023 American superhero film based on the DC Comics character Jaime Reyes / Blue Beetle. Directed by Ángel Manuel Soto and written by Gareth Dunnet-Alcocer, it is the 14th film in the DC Extended Universe (DCEU). Xolo Maridueña stars as Reyes, a recent college graduate who is bestowed with an armor that grants him superpowers after being accidentally chosen by an ancient alien relic known as the Scarab. Adriana Barraza, Damián Alcázar, Raoul Max Trujillo, Susan Sarandon, and George Lopez also star in the film."),
];
