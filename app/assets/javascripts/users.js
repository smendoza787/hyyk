function User(id, name, email, hikes) {
  this.id = id;
  this.name = name;
  this.email = email;
  this.hikes = hikes;
}

User.prototype.displayUrlPath = function() {
  var str = '/users/' + this.id;
  return str;
}

User.prototype.displayNameOrEmail = function() {
  return this.name || this.email;
}
