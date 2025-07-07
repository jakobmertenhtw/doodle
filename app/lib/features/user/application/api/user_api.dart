
enum CurrentSignedInUserType {
  student, 
  teacher
}

class CurrentSignedInUser {
  final String id;
  final CurrentSignedInUserType userType;

  CurrentSignedInUser(this.id, this.userType);
}

abstract class UserApi {

  Future<CurrentSignedInUser> getCurrentSignedInUserOrCrash();

}