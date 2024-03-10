class User {
  final String title;
  final String description;
  final String imageUrl;
  final String storyText;

  User(
      {required this.title,
      required this.description,
      required this.imageUrl,
      required this.storyText});

  factory User.fakeItems() {
    return User(
        title: 'BK10',
        description: 'Flutter Developer',
        imageUrl: 'https://picsum.photos/200/300',
        storyText:
            'descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription');
  }
}
