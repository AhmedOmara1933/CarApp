Map<String, dynamic> data = {
  "data":
  [
    {
      "name": "Mustang Shelby GT",
      "image":"images/Screenshot 2023-09-21 145126.png",
      "Gear_type": true,
      "seats": 3,
      "fuel_type": "Octane",
      "distance": 800,
      "time": "5 mins",
      "rating":4.9,
      "reviews":531,
      "max_power":2600,
      "fuel":30,
      "max_speed":230,
      "warning":2,
      "capacity":760,
      "color":"Red"
    },
    {
      "name": "BMW X5 Series",
      "image":"images/Screenshot 2023-09-21 223341.png",
      "Gear_type": true,
      "seats": 4,
      "fuel_type": "Octane",
      "distance": 500,
      "time": "2 mins",
      "rating":4.5,
      "reviews":705,
      "max_power":2900,
      "fuel":60,
      "max_speed":400,
      "warning":9,
      "capacity":348,
      "color":"Blue"
    },
    {
      "name": "Ferrari 488n",
      "image":"images/Screenshot 2023-09-21 223743.png",
      "Gear_type": false,
      "seats": 2,
      "fuel_type": "Octane",
      "distance": 900,
      "time": "6 mins",
      "rating":4.4,
      "reviews":965,
      "max_power":2400,
      "fuel":50,
      "max_speed":460,
      "warning":6,
      "capacity":318,
      "color":"White"
    },
  ]
};

class DataModel {
  List<Data>? data;

  DataModel({this.data});

  DataModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? name;
  String? image;
  bool? gearType;
  int? seats;
  String? fuelType;
  int? distance;
  String? time;
  double? rating;
  int? reviews;
  int? maxPower;
  int? fuel;
  int? maxSpeed;
  int? warning;
  int? capacity;
  String? color;

  Data(
      {this.name,
        this.image,
        this.gearType,
        this.seats,
        this.fuelType,
        this.distance,
        this.time,
        this.rating,
        this.reviews,
        this.maxPower,
        this.fuel,
        this.maxSpeed,
        this.warning,
        this.capacity,
        this.color});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    gearType = json['Gear_type'];
    seats = json['seats'];
    fuelType = json['fuel_type'];
    distance = json['distance'];
    time = json['time'];
    rating = json['rating'];
    reviews = json['reviews'];
    maxPower = json['max_power'];
    fuel = json['fuel'];
    maxSpeed = json['max_speed'];
    warning = json['warning'];
    capacity = json['capacity'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['Gear_type'] = this.gearType;
    data['seats'] = this.seats;
    data['fuel_type'] = this.fuelType;
    data['distance'] = this.distance;
    data['time'] = this.time;
    data['rating'] = this.rating;
    data['reviews'] = this.reviews;
    data['max_power'] = this.maxPower;
    data['fuel'] = this.fuel;
    data['max_speed'] = this.maxSpeed;
    data['warning'] = this.warning;
    data['capacity'] = this.capacity;
    data['color'] = this.color;
    return data;
    }
}
