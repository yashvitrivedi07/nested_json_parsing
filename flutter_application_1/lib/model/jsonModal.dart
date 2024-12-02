class AlbumbModal {
  String? title;
  int? userId, id;

  AlbumbModal({this.id, this.title, this.userId});

  factory AlbumbModal.MapToModal(Map m1) {
    return AlbumbModal(id: m1['id'], title: m1['title'], userId: m1['userId']);
  }
}


class CommentModal {
  int? postId, id;

  String? name, email, body;

  CommentModal({this.body, this.email, this.id, this.name, this.postId});

  factory CommentModal.MapToModal(Map m1) {
    return CommentModal(
        body: m1['body'],
        email: m1['email'],
        id: m1['id'],
        name: m1['name'],
        postId: m1['postId']);
  }
}

class PhotoModal {
  int? albumId, id;
  String? title, url, thumbnailUrl;

  PhotoModal({this.albumId, this.id, this.thumbnailUrl, this.title, this.url});

  factory PhotoModal.MapToModal(Map m1) {
    return PhotoModal(
      albumId: m1['albumId'],
      id: m1['id'],
      thumbnailUrl: m1['thumbnailUrl'],
      title: m1['title'],
      url: m1['url'],
    );
  }
}

class PostModal {
  int? userId, id;
  String? title, body;

  PostModal({this.body, this.id, this.title, this.userId});

  factory PostModal.MapToModal(Map m1) {
    return PostModal(
        body: m1['body'],
        id: m1['id'],
        title: m1['title'],
        userId: m1['userId']);
  }
}

class TodoModal {
  int? userId, id;
  String? title;
  bool? completed;

  TodoModal({this.completed, this.id, this.title, this.userId});

  factory TodoModal.MapToModal(Map m1) {
    return TodoModal(
        completed: m1['completed'],
        id: m1['id'],
        title: m1['title'],
        userId: m1['userId']);
  }
}

class UserModal {
  int? id;
  String? name, username, email, phone, website;
  AddressModal? addressModal;
  CompanyModal? companyModal;

  UserModal(
      {this.email,
      this.id,
      this.name,
      this.phone,
      this.username,
      this.website,
      this.addressModal,
      this.companyModal});

  factory UserModal.MapToModal(Map m1) {
    return UserModal(
        addressModal: AddressModal.MapToModal(m1['address']),
        companyModal: CompanyModal.MapToModal(m1['company']),
        email: m1['email'],
        id: m1['id'],
        name: m1['name'],
        phone: m1['phone'],
        username: m1['username'],
        website: m1['website']);
  }
}

class AddressModal {
  String? street, suite, city, zipcode;
  GeoModal? geoModal;

  AddressModal(
      {this.city, this.geoModal, this.street, this.suite, this.zipcode});

  factory AddressModal.MapToModal(Map m1) {
    return AddressModal(
        city: m1['city'],
        geoModal: GeoModal.MapToModal(m1['geo']),
        street: m1['street'],
        suite: m1['suite'],
        zipcode: m1['zipcode']);
  }
}

class GeoModal {
  String? lat, lng;

  GeoModal({this.lat, this.lng});
  factory GeoModal.MapToModal(Map m1) {
    return GeoModal(lat: m1['lat'], lng: m1['lng']);
  }
}

class CompanyModal {
  String? name, catchPhrase, bs;
  CompanyModal({this.bs, this.catchPhrase, this.name});

  factory CompanyModal.MapToModal(Map m1) {
    return CompanyModal(
        bs: m1['bs'], catchPhrase: m1['catchPhrase'], name: m1['name']);
  }
}
