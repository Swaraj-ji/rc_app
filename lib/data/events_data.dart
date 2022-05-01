Map<String, String> eventImage = {
  "synergia": "https://rcmmm.s3.ap-south-1.amazonaws.com/posters/syn.jpg",
  "4_year": "https://rcmmm.s3.ap-south-1.amazonaws.com/posters/4_year.jpg",
  "robomania": "https://rcmmm.s3.ap-south-1.amazonaws.com/posters/rm.jpg",
  "CTC":
      "https://rcmmm.s3.ap-south-1.amazonaws.com/posters/claddingthecode.jpg",
  "WebD": "https://rcmmm.s3.ap-south-1.amazonaws.com/posters/webd.jpg",
  "EnggWeek":
      "https://rcmmm.s3.ap-south-1.amazonaws.com/posters/Engineers_Week.jpg"
};

class Frame {
  String title;
  String description;
  String image;
  String aboutevent;
  String eventlist;
  String eventnumber;
  String knowmore;
  int calories;
  int carbo;
  int protein;
  int index;

  Frame(
      this.title,
      this.description,
      this.image,
      this.aboutevent,
      this.eventlist,
      this.knowmore,
      this.eventnumber,
      this.calories,
      this.carbo,
      this.protein,
      this.index);
}

Frame getRobomania() {
  return Frame(
      "Robomania",
      "Campus Event",
      eventImage["robomania"].toString(),
      "Robomania is an annual technical event organized by Robotics Club, MMMUT "
          "The club carries forward its vision and ideas by continuously ceating"
          "hotspots where pool of technical knowledge meets via workshops and "
          "an anually organized event ROBOMANIA where the club members pesent"
          "events to the students which require plethora of practical implementation "
          "of concepts. The event is an amalgam of technical extravaganza which provides"
          "its participants a platform to showcase their technical as well as "
          "non-technical skills.",
      " .Robowars \n .Laser Strike \n .Electro Tekken \n .Electro NFS \n .Electro Chess \n .Bomb Diffusion \n .Circuitwizard \n .Sherlocked \n .Reflex \n .Turing \n .Electronics Art \n .Informals - Roadies, Techmate etc. \n .Tambola Night ",
      "ROBOWARS \n \nWith the increasing popularity of robotic combat sports such as RoboWars(Battle of Bots), many students think about building a fighting robot of their own. If you are crazy enough, then you can build your own fighting machine following the guidelines for RoboWars, conducted by the Robotics Club."
          "\n \nLASER STRIKE \n \nAn arena based event with two teams to hunt and eleminate their opponents using laser guns. The team which eleminates every member of opponent team wins.\n \n"
          "ELECTRO TEKKEN\n \nEver imagined to play the fight games virtually as  if you are playing at the fight arena?"
          "Robotics Club presents an all new and different concept of virtual gaming. Experience Tekken at your hands."
          "\n \nELECTRO NFS \n \nThere is a great Need For Speed everywhere, in everything you do.This event provides you an opportunity to play NFS in the virtual way,"
          " in college.\n \nELECTRO CHESS\n \nElectronic chess includes both hardware and software capable of playing chess.Electronic chess provides opportunities for analysis, entertainment and training."
          "\n \nBOMB DIFFUSION\n \nExperience the perfect combination of tightness, rigidity, scuffle and adreline rush in this"
          "prodigious struggle of diffusing a bomb.\n \nCIRCUITWIZARD\n \nWant to be a wizard of circuit components? Circuit Wizard ensures proper knowledge"
          "and minute details of the electric components.\n \nSHERLOCKED \n \nServer Based event comprising of three rounds. So, it is the time to awaken the detective inside you.As there is a "
          "murder mystery waiting for you to solve\n \nREFLEX \n \nLet the paper be your kinddom and yu be the ruler.Check your proficiency in quant and general knowledge. The event"
          "comprises of two rounds. \n \nTURING \n \nOnline story based mystery all set to be solved.\n \nELECTRONICS ART \n \nAre you a Gadget Guru? Well Electronics Art"
          "helps you to showcase your talent.\n \nINFORMALS\n \nArena based event comprising of various tasks to be completed by the participant."
          "\n \nTAMBOLA NIGHT\n \nA housie schedued at the end of the Robomania, with amazing prize worth thousands to be won.  ",
      "",
      2019,
      13,
      10,
      1);
}

Frame getSynergia() {
  return Frame(
      "Synergia",
      "Online Event",
      eventImage["synergia"].toString(),
      "In this twenty first cnetury, the evolution in technology"
          "and trends is so rapid that if we don't keep pace with them and brush up our skills frequently, we will be left far "
          "behind in this quotidian of life. And quarantine is the best place to ameliorate our expertise. Thus the Robotics Club brings"
          "forth to you 'Synergia' a series of events to make your quarantine happening",
      ".Sherlocked \n.Web Quest \n.Code Flash \n.Circuit E Zar \n.Web O Fiesta \n.Digi Frame \n.Chessperados",
      "SHERLOCKED \n \nOur mind can never resist the curiosity. Let's conquer with our mind,"
          " unvelithe mystery and explore the potential of the cosmos. Robotics Club brings you Sherlocked under Synergia to fulfil your quest for mystery and puzzles. This is an online event. \n \nWEB QUEST \n \nWebDevelopment is the process of building websites and applications for the Internet,"
          " or for a private network knows as Internet. This is the event to show case your web development skills in the quiz.\n \nCODE FLASH \n \nCoding is not only about what you know about a particular language. It is about figuring out the best possible solution for the problems. Robotics Club "
          "brings to yoh Code Flash Under synergia to test your coding skills. Its provides you the platform to prepare yourself for the placements and check where you lag behind.\n \nCIRCUIT E ZAR \n \nFor all the technocrats out there we team of Robotics Club brings forth to you Ciruit-e-zar to test you knowledge "
          "of circuits and theri workings.\n \nWEB O FIESTA\n \nTo create your own first project there,s no better starting point than a professional neat and easy to navigate web project. Robotics Club MMMUT presents you a web development event Web-o-fiesta. In which you have to design a interactive website.\n \nDIGI FRAME\n \nTechnocrats are the people who "
          "play and enjoy with technology, for them technology in not a work its actually fun. So for all technocrats RC brings you Digi Frame to present you ideas on science and technology\n \nCHESSPERADOS\n \nChess is one of the most leading games to improve your cognitive skills, problem solving attention span and memory capacity. So"
          " to utilise your time effectively during this quarantine time Robotics Club MMMUT presents you to the event Chessperados.",
      "",
      2020,
      7,
      5,
      2);
}

Frame getEngWeek() {
  return Frame(
      "Engineer's Week",
      "Online Event",
      eventImage["EnggWeek"].toString(),
      "When you think of doing something interesting,it has already been done by an engineer."
          "The one who can pass an exam by one night study, the one who can organize world class events without any training, the "
          "one who can party all night still manages to pass, the one who can make and construct things which no one can even think of, "
          "is an enhineer.Being an engineer is not simple, its the way of living a unique and enticing lifestyle."
          "To celebrate the joy of engineering and the pride of ebgineers we the Robotics Club brings forth to you, for the first time in the"
          "history of Madan Mohan Malaviya University of Technology, a seven day fiesta The Engineer's Week",
      ".Techquisition \n.Tech Manch \n.Enquiz",
      "TECHQUISITION\n \nEngineering is a passion, a glory and an attitude for an individual. An engineering is always in hunt for new inventions and innovation. This is a boundless procedure. They initiate the use of laid down scientific theories and laws, carried with extensive"
          " practical works. The Robotics Club, MMMUT during Engineers Week, invites dignitaries, alumni, professors, scientists and engineers to throw a glimpse of their work, research to the younger generation.\n \nTECHMANCH\n \nThe event is open to all the engineers.The project shall be made completely by the participant.Judgement will be done by the honorable faculties of MMMUT.Certificate of participation will be awarded to"
          " all the participants while the top three participants will receive the certificate of merit.\n \nENQUIZ\n \nThe Engineers Week, brings forth to you an engineering quiz,  to test and widen your knowledge "
          "about engineers.This is an online event, open to all.There is no participation fee.The quiz will consist of 40 questions to be solved in 30 minutes.Top 3"
          " participants will receive Certificate of Merit ",
      "",
      2020,
      3,
      5,
      3);
}

Frame getCladdingTheCode() {
  return Frame(
      "Cladding the Code",
      "Online Event",
      eventImage["CTC"].toString(),
      "Programming is defined as the process of designing and building a robust piece of code to accomplish a specific task but for"
          " a Codegeek programming is no less than a roller coaster ride from testing bugs. ",
      ".Round 1:- This round will be held on the Codechef platform where the participants will be provided with 6 buggy codes and the participant"
          " need to debug the code and arrange the it in necessary order to pass all the test cases\n \n.Round 2:- In this Round the participants will have to write the codes for the problems statements provided by us on"
          " the Codechef platform.",
      "Round 1 rules:- \n \n The number of submissions on a single problem will be limited to 50. \n \nParticipants can write the debugged code only in C or C++. No other language option will be available.\n \nThe total time is the sum of "
          "the time consumed for each problem solved. The time-consumed for solved problem is that time elapsed from the beginning of the contest to the submission of the first accepted run plus 20 penalty minutes for every previously "
          "rejected run for that problem there is no time consumed for a problem that is not solved.\n \nParticipants will be penalized for changing the entire problems solutions for writing their own solution completely different from the buggy code as "
          "prescribed in the problem statement\n \nROUND 2 rules:-\n \nParticipants will receive 1 point for a problem passing all test cases(no partial credit)\n \nFor solving question only four programming languages will be made available i.e. C++, Java ,Python,C.\n \nTotal time"
          " is the sum if time consumed for each solved problem. The time consumed for a solved problem in the time elapsed from beginning of contest to the submittal of first accepted run plus 20 penalty minutes for every previously rejected run of that problem.\n \nThe number"
          " of submissions on a single problem will be limited to 50",
      "hello",
      2020,
      2,
      1,
      4);
}

Frame getWebDev() {
  return Frame(
      "Web Development",
      "Workshop",
      eventImage["WebD"].toString(),
      "Web development is the building and maintenance of websites; it's the work that happens behind the scenes to make a website look great, "
          "work fast and perform well with a seamless user experience. Web developers, or 'devs', do this by using a variety of coding languages, here with Robotics Club one can easily masters in HTML, CSS, JAVASCRIPT, REACT etc.The workshop consits of approx 250+ students.",
      " .Web Deveopment Event ",
      "WEB DEVELOPMENT EVENT\n \nOne can participate individually or as a team(maximum 2)"
          "in the web development event.The Website design is done on spot and judged on various categories.Winners receive cash prize or goodies",
      "",
      2020,
      1,
      1,
      5);
}

Frame getFourYearChallenge() {
  return Frame(
      "Four Year Challenge",
      "Online Event",
      eventImage["4_year"].toString(),
      "The challenge involves Facebook users sharing a throwback photo"
          "from four years ago next to a photo from this year i.e. 2020. The aim is to draw attention on how much have you changed as well as "
          "demonstrating just how much 'glowed up'. \n \n STEPS : \n Find the pictures \n Open a collage maker \n Upload and arrange the photos.\n  \nRULES\n After editing the picture inbox it to our event's official facebook page, Robomania"
          "link : https://www.fb.com/robomania.mmmut, with your respective details : \n  \n Name \n Branch \n Year \n \n No offensive comments are allowed. \n"
          "There is no restriction on the number of times a participant can participate ",
      ".Four Year Challenge",
      "FOUR YEAR CHALLENGE\n \nThe winner is judged on the basis of maximum likes.",
      "",
      2020,
      1,
      1,
      6);
}

// List<Frame> getFrames() {
//   return <Frame>[
//     Frame(
//         "Robomania",
//         "Campus Event",
//         "assets/images/robomania.jpg",
//         "Robomania is an annual technical event organized by Robotics Club, MMMUT "
//             "The club carries forward its vision and ideas by continuously ceating"
//             "hotspots where pool of technical knowledge meets via workshops and "
//             "an anually organized event ROBOMANIA where the club members pesent"
//             "events to the students which require plethora of practical implementation "
//             "of concepts. The event is an amalgam of technical extravaganza which provides"
//             "its participants a platform to showcase their technical as well as "
//             "non-technical skills.",
//         " .Robowars \n .Laser Strike \n .Electro Tekken \n .Electro NFS \n .Electro Chess \n .Bomb Diffusion \n .Circuitwizard \n .Sherlocked \n .Reflex \n .Turing \n .Electronics Art \n .Informals - Roadies, Techmate etc. \n .Tambola Night ",
//         "ROBOWARS \n \nWith the increasing popularity of robotic combat sports such as RoboWars(Battle of Bots), many students think about building a fighting robot of their own. If you are crazy enough, then you can build your own fighting machine following the guidelines for RoboWars, conducted by the Robotics Club."
//             "\n \nLASER STRIKE \n \nAn arena based event with two teams to hunt and eleminate their opponents using laser guns. The team which eleminates every member of opponent team wins.\n \n"
//             "ELECTRO TEKKEN\n \nEver imagined to play the fight games virtually as  if you are playing at the fight arena?"
//             "Robotics Club presents an all new and different concept of virtual gaming. Experience Tekken at your hands."
//             "\n \nELECTRO NFS \n \nThere is a great Need For Speed everywhere, in everything you do.This event provides you an opportunity to play NFS in the virtual way,"
//             " in college.\n \nELECTRO CHESS\n \nElectronic chess includes both hardware and software capable of playing chess.Electronic chess provides opportunities for analysis, entertainment and training."
//             "\n \nBOMB DIFFUSION\n \nExperience the perfect combination of tightness, rigidity, scuffle and adreline rush in this"
//             "prodigious struggle of diffusing a bomb.\n \nCIRCUITWIZARD\n \nWant to be a wizard of circuit components? Circuit Wizard ensures proper knowledge"
//             "and minute details of the electric components.\n \nSHERLOCKED \n \nServer Based event comprising of three rounds. So, it is the time to awaken the detective inside you.As there is a "
//             "murder mystery waiting for you to solve\n \nREFLEX \n \nLet the paper be your kinddom and yu be the ruler.Check your proficiency in quant and general knowledge. The event"
//             "comprises of two rounds. \n \nTURING \n \nOnline story based mystery all set to be solved.\n \nELECTRONICS ART \n \nAre you a Gadget Guru? Well Electronics Art"
//             "helps you to showcase your talent.\n \nINFORMALS\n \nArena based event comprising of various tasks to be completed by the participant."
//             "\n \nTAMBOLA NIGHT\n \nA housie schedued at the end of the Robomania, with amazing prize worth thousands to be won.  ",
//         "",
//         2019,
//         13,
//         10,
//         1),
//     Frame(
//         "Synergia",
//         "Online Event",
//         "assets/images/synergia.jpg",
//         "In this twenty first cnetury, the evolution in technology"
//             "and trends is so rapid that if we don't keep pace with them and brush up our skills frequently, we will be left far "
//             "behind in this quotidian of life. And quarantine is the best place to ameliorate our expertise. Thus the Robotics Club brings"
//             "forth to you 'Synergia' a series of events to make your quarantine happening",
//         ".Sherlocked \n.Web Quest \n.Code Flash \n.Circuit E Zar \n.Web O Fiesta \n.Digi Frame \n.Chessperados",
//         "SHERLOCKED \n \nOur mind can never resist the curiosity. Let's conquer with our mind,"
//             " unvelithe mystery and explore the potential of the cosmos. Robotics Club brings you Sherlocked under Synergia to fulfil your quest for mystery and puzzles. This is an online event. \n \nWEB QUEST \n \nWebDevelopment is the process of building websites and applications for the Internet,"
//             " or for a private network knows as Internet. This is the event to show case your web development skills in the quiz.\n \nCODE FLASH \n \nCoding is not only about what you know about a particular language. It is about figuring out the best possible solution for the problems. Robotics Club "
//             "brings to yoh Code Flash Under synergia to test your coding skills. Its provides you the platform to prepare yourself for the placements and check where you lag behind.\n \nCIRCUIT E ZAR \n \nFor all the technocrats out there we team of Robotics Club brings forth to you Ciruit-e-zar to test you knowledge "
//             "of circuits and theri workings.\n \nWEB O FIESTA\n \nTo create your own first project there,s no better starting point than a professional neat and easy to navigate web project. Robotics Club MMMUT presents you a web development event Web-o-fiesta. In which you have to design a interactive website.\n \nDIGI FRAME\n \nTechnocrats are the people who "
//             "play and enjoy with technology, for them technology in not a work its actually fun. So for all technocrats RC brings you Digi Frame to present you ideas on science and technology\n \nCHESSPERADOS\n \nChess is one of the most leading games to improve your cognitive skills, problem solving attention span and memory capacity. So"
//             " to utilise your time effectively during this quarantine time Robotics Club MMMUT presents you to the event Chessperados.",
//         "",
//         2020,
//         7,
//         5,
//         2),
//     Frame(
//         "Engineer's Week",
//         "Online Event",
//         "assets/images/engineersweek.jpg",
//         "When you think of doing something interesting,it has already been done by an engineer."
//             "The one who can pass an exam by one night study, the one who can organize world class events without any training, the "
//             "one who can party all night still manages to pass, the one who can make and construct things which no one can even think of, "
//             "is an enhineer.Being an engineer is not simple, its the way of living a unique and enticing lifestyle."
//             "To celebrate the joy of engineering and the pride of ebgineers we the Robotics Club brings forth to you, for the first time in the"
//             "history of Madan Mohan Malaviya University of Technology, a seven day fiesta The Engineer's Week",
//         ".Techquisition \n.Tech Manch \n.Enquiz",
//         "TECHQUISITION\n \nEngineering is a passion, a glory and an attitude for an individual. An engineering is always in hunt for new inventions and innovation. This is a boundless procedure. They initiate the use of laid down scientific theories and laws, carried with extensive"
//             " practical works. The Robotics Club, MMMUT during Engineers Week, invites dignitaries, alumni, professors, scientists and engineers to throw a glimpse of their work, research to the younger generation.\n \nTECHMANCH\n \nThe event is open to all the engineers.The project shall be made completely by the participant.Judgement will be done by the honorable faculties of MMMUT.Certificate of participation will be awarded to"
//             " all the participants while the top three participants will receive the certificate of merit.\n \nENQUIZ\n \nThe Engineers Week, brings forth to you an engineering quiz,  to test and widen your knowledge "
//             "about engineers.This is an online event, open to all.There is no participation fee.The quiz will consist of 40 questions to be solved in 30 minutes.Top 3"
//             " participants will receive Certificate of Merit ",
//         "",
//         2020,
//         3,
//         5,
//         3),
//     Frame(
//         "Cladding the Code",
//         "Online Evenst",
//         "assets/images/cladding.jpg",
//         "Programming is defined as the process of designing and building a robust piece of code to accomplish a specific task but for"
//             " a Codegeek programming is no less than a roller coaster ride from testing bugs. ",
//         ".Round 1:- This round will be held on the Codechef platform where the participants will be provided with 6 buggy codes and the participant"
//             " need to debug the code and arrange the it in necessary order to pass all the test cases\n \n.Round 2:- In this Round the participants will have to write the codes for the problems statements provided by us on"
//             " the Codechef platform.",
//         "Round 1 rules:- \n \n The number of submissions on a single problem will be limited to 50. \n \nParticipants can write the debugged code only in C or C++. No other language option will be available.\n \nThe total time is the sum of "
//             "the time consumed for each problem solved. The time-consumed for solved problem is that time elapsed from the beginning of the contest to the submission of the first accepted run plus 20 penalty minutes for every previously "
//             "rejected run for that problem there is no time consumed for a problem that is not solved.\n \nParticipants will be penalized for changing the entire problems solutions for writing their own solution completely different from the buggy code as "
//             "prescribed in the problem statement\n \nROUND 2 rules:-\n \nParticipants will receive 1 point for a problem passing all test cases(no partial credit)\n \nFor solving question only four programming languages will be made available i.e. C++, Java ,Python,C.\n \nTotal time"
//             " is the sum if time consumed for each solved problem. The time consumed for a solved problem in the time elapsed from beginning of contest to the submittal of first accepted run plus 20 penalty minutes for every previously rejected run of that problem.\n \nThe number"
//             " of submissions on a single problem will be limited to 50",
//         "hello",
//         2020,
//         2,
//         1,
//         4),
//     Frame(
//         "Web Development",
//         "Workshop",
//         "assets/images/webd.jpg",
//         "Web development is the building and maintenance of websites; it's the work that happens behind the scenes to make a website look great, "
//             "work fast and perform well with a seamless user experience. Web developers, or 'devs', do this by using a variety of coding languages, here with Robotics Club one can easily masters in HTML, CSS, JAVASCRIPT, REACT etc.The workshop consits of approx 250+ students.",
//         " .Web Deveopment Event ",
//         "WEB DEVELOPMENT EVENT\n \nOne can participate individually or as a team(maximum 2)"
//             "in the web development event.The Website design is done on spot and judged on various categories.Winners receive cash prize or goodies",
//         "",
//         2020,
//         1,
//         1,
//         5),
//     Frame(
//         "Four Year Challenge",
//         "Online Event",
//         "assets/images/fouryear.jpg",
//         "The challenge involves Facebook users sharing a throwback photo"
//             "from four years ago next to a photo from this year i.e. 2020. The aim is to draw attention on how much have you changed as well as "
//             "demonstrating just how much 'glowed up'. \n \n STEPS : \n Find the pictures \n Open a collage maker \n Upload and arrange the photos.\n  \nRULES\n After editing the picture inbox it to our event's official facebook page, Robomania"
//             "link : https://www.fb.com/robomania.mmmut, with your respective details : \n  \n Name \n Branch \n Year \n \n No offensive comments are allowed. \n"
//             "There is no restriction on the number of times a participant can participate ",
//         ".Four Year Challenge",
//         "FOUR YEAR CHALLENGE\n \nThe winner is judged on the basis of maximum likes.",
//         "",
//         2020,
//         1,
//         1,
//         6),
//   ];
// }

class Frame2 {
  String title;
  String description;
  String image;
  int calories;
  int carbo;
  int protein;

  Frame2(this.title, this.description, this.image, this.calories, this.carbo,
      this.protein);
}

List<Frame2> getFrames2() {
  return <Frame2>[
    Frame2("Robomania '21", "Campus Event", "assets/images/robomania21.jpeg",
        2021, 12, 6),
    Frame2("Synergia '21", "Online Event", "assets/images/synergia21.jpeg",
        2021, 6, 5),
    Frame2("Engineer's Week '21", "Online Event",
        "assets/images/engineersweek.jpg", 2021, 4, 5),
    Frame2("Web Development '21", "Workshop", "assets/images/web21.jpeg", 2021,
        0, 2),
    Frame2("Four Year Challenge", "Online Event", "assets/images/fouryear.jpg",
        2021, 1, 1),
  ];
}
