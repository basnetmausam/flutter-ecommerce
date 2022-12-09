import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category(this.name, this.imageUrl);

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    const Category(
      "Casual Shoes",
      "https://images.unsplash.com/photo-1544635350-0b6d55caf30e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
    ),
    const Category(
      "Basketball Shoes",
      "https://images.unsplash.com/photo-1612821745127-53855be9cbd1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
    ),
    const Category(
      "Sport Shoes",
      "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80",
    ),
    const Category(
      "Party Shoes",
      "https://images.unsplash.com/photo-1449505278894-297fdb3edbc1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80",
    ),
    const Category(
      "Lady Heels",
      "https://images.unsplash.com/photo-1590099033615-be195f8d575c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=986&q=80",
    )
  ];
}
