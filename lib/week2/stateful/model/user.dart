class User {
  final String imageUrl;
  final String title;
  final String description;
  final String storyText;

  User(
      {required this.imageUrl,
      required this.title,
      required this.description,
      required this.storyText});

  factory User.fakeItem() {
    return User(
      imageUrl: 'https://picsum.photos/200/300',
      title: 'BK10',
      description: 'Flutter Developer',
      storyText:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    );
  }
}
