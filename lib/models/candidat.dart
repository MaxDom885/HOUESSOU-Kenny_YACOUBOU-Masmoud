class Candidat {
  String? name;
  String? surname;
  String? bio;
  String? parti;
  String? birthDate;

  Candidat({this.name, this.surname, this.bio, this.parti, this.birthDate});

  @override
  String toString() {
    return 'Candidat{name: $name, surname: $surname, description: $bio, sex: $parti}';
  }
}
