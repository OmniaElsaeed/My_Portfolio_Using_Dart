class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}
// ###############
// WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/oop.jpg',
    title: 'C++&OOP Project',
    subtitle:
    ' OOP Project That implement different concepts like inheritance,...',
    webLink: 'https://github.com/OmniaElsaeed/C-OOP-Project',
  ),
  ProjectUtils(
    image: 'assets/Algorithm.PNG',
    title: 'Algorithm Project',
    subtitle:
    'This is an implementation on the  Algorithm heap sort',
    webLink: 'https://github.com/OmniaElsaeed/Algorithm.git',
  ),
  ProjectUtils(
    image: 'assets/headphone.PNG',
    title: 'Headphones Website',
    subtitle:
        'headphones website using html,css,javascript',
    webLink: 'https://github.com/OmniaElsaeed/hearmeout.git',
  ),
];





// ###############
// Activities
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/instructor.jpg',
    title: 'Programming Instructor',
    subtitle:
    'C instructor at mansoura robotics hackathon .8',
    webLink: 'https://www.linkedin.com/in/omnia-elsaeed-045891296/details/certifications/1762020687047/single-media-viewer/?profileId=ACoAAEetX_UByqAzVoMPjRIumsk2QQR7WuxkhSM',

  ),
  ProjectUtils(
    image: 'assets/nti.PNG',
    title: 'Digital-Marketing',
    subtitle: 'Competition OF Digital Marketing AT NTI',
    webLink: 'https://www.linkedin.com/in/omnia-elsaeed-045891296/details/certifications/1762020687047/single-media-viewer/?profileId=ACoAAEetX_UByqAzVoMPjRIumsk2QQR7WuxkhSM',
  ),
  ProjectUtils(
    image: 'assets/testing.PNG',
    title: 'Testing Engineer',
    subtitle: 'Competition of manual and automation Testing AT DEPI',
    webLink: 'https://www.linkedin.com/in/omnia-elsaeed-045891296/edit/forms/position/2674648255/?profileFormEntryPoint=PROFILE_SECTION',
  ),
  ProjectUtils(
    image: 'assets/projects/mrorg.jpg',
    title: 'Organizing At Hackathon',
    subtitle:
    'Participated at Organizing the hackathon at M.R',
    webLink:'https://www.linkedin.com/in/omnia-elsaeed-045891296/details/certifications/1762020687047/single-media-viewer/?profileId=ACoAAEetX_UByqAzVoMPjRIumsk2QQR7WuxkhSM',

  ),
  ProjectUtils(
      image: 'assets/projects/levelone.PNG',
      title: 'Problem Solving Level one',
      subtitle:
      'Complete Concepts of Level one in PS At ICPC Mansoura',
    webLink:'https://www.linkedin.com/in/omnia-elsaeed-045891296/details/certifications/1762020687047/single-media-viewer/?profileId=ACoAAEetX_UByqAzVoMPjRIumsk2QQR7WuxkhSM',

  ),
  ProjectUtils(
    image: 'assets/projects/tot.PNG',
    title: 'Training Of Trainers',
    subtitle:
    'Training for presentation skills,public speaking',
    webLink:'https://www.linkedin.com/in/omnia-elsaeed-045891296/details/certifications/1762020687047/single-media-viewer/?profileId=ACoAAEetX_UByqAzVoMPjRIumsk2QQR7WuxkhSM',


  ),
  ProjectUtils(
    image: 'assets/projects/coderefine.PNG',
    title: 'Code-Refine Competition',
    subtitle: 'Competition on PS And System Design at IEEE',
    webLink: 'https://www.linkedin.com/in/omnia-elsaeed-045891296/details/certifications/1762020687047/single-media-viewer/?profileId=ACoAAEetX_UByqAzVoMPjRIumsk2QQR7WuxkhSM',
  ),

];