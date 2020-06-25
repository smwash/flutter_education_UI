class Study {
  String imageUrl;
  String courseDesc;
  String coursename;
  String lesson;

  Study({this.imageUrl, this.courseDesc, this.coursename, this.lesson});
}

List<Study> studies = [
  Study(
      imageUrl: 'images/programming.jpg',
      courseDesc: 'Develop Software',
      coursename: 'Programming',
      lesson: '3 of 7 lessons'),
  Study(
      imageUrl: 'images/accounts.jfif',
      courseDesc: 'Accounting',
      coursename: 'Account & CBA',
      lesson: '2 of 5 lessons'),
  Study(
      imageUrl: 'images/project mng.jpg',
      courseDesc: 'Manging projects',
      coursename: 'Project Management',
      lesson: '2 of 10 lessons'),
  Study(
      imageUrl: 'images/science.png',
      courseDesc: 'Deep Science',
      coursename: 'Physics',
      lesson: '3 of 12 lessons'),
  Study(
      imageUrl: 'images/writing.png',
      courseDesc: 'Writing Skills',
      coursename: 'Writing',
      lesson: '1 of 8 lessons'),
];
