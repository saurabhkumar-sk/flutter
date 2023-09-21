class RandomUser {
  final int id;
  final Name name;
  final String gender;
  final String userName;
  final Dob dateOfBirth;
  final String phone;
  final String website;
  final Address address;
  // final Company company;
  final Picture picture;

  RandomUser({
    required this.id,
    required this.name,
    required this.userName,
    required this.dateOfBirth,
    required this.gender,
    required this.phone,
    required this.website,
    required this.address,
    // required this.company,
    required this.picture,
  });
  factory RandomUser.fromJson(Map<String, dynamic> json) {
    return RandomUser(
      id: json['id'],
      name: Name.fromJson(json['name']),
      userName: json['username'],
      dateOfBirth: Dob.fromJson(json['date']),
      gender: json['gender'],
      phone: json['phone'],
      website: json['website'],
      address: Address.fromJson(json['address']),
      // company: Company.fromJson(json['company']),
      picture:Picture.fromJson(json['picture']),
    );
  }
}

class Dob {
  final String date;
  final String age;

  Dob({required this.date, required this.age});
  factory Dob.fromJson(Map<String, dynamic> json) {
    return Dob(
      date: json['date'],
      age: json['age'],
    );
  }
}

class Name {
  final String title;
  final String first;
  final String last;

  Name({
    required this.title,
    required this.first,
    required this.last,
  });
  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      title: json['title'],
      first: json['first'],
      last: json['last'],
    );
  }
}

class Picture {
  final String large;
  final String medium;
  final String thumbnail;

  Picture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });
  factory Picture.fromJson(Map<String, dynamic> json) {
    return Picture(
      large: json['large'],
      medium: json['medium'],
      thumbnail: json['thumbnail'],
    );
  }
}

// class Company {
//   final String name;
//   final String catchPhrase;
//   final String

// }

class Address {
  final Street street;
  final String city;
  final String state;
  final String country;
  final String zipcode;

  Address({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.zipcode,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'],
      city: json['city'],
      state: json['state'],
      country: json['country'],
      zipcode: json['zipcode'],
    );
  }
}

class Street {
  final String number;
  final String name;

  Street({
    required this.number,
    required this.name,
  });
  factory Street.fromJson(Map<String, dynamic> json) {
    return Street(
      number: json['number'],
      name: json['name'],
    );
  }
}
