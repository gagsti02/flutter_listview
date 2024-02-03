import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_listview/routes/autoroutes.gr.dart';

@RoutePage()
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Cars> cars = [];
    cars.add(Cars(
        brand: "Toyota",
        color: Colors.red,
        img:
            "https://upload.wikimedia.org/wikipedia/commons/0/06/2014_Toyota_Corolla_1.8_LE_(ZRE172),_front_left.jpg"));
    cars.add(Cars(
        brand: "Honda",
        color: Colors.blue,
        img:
            "https://images.hgmsites.net/hug/2021-honda-civic-sdn_100756987_h.jpg"));
    cars.add(Cars(
        brand: "Mitsubishi",
        color: Colors.yellow,
        img:
            "https://mediacloud.carbuyer.co.uk/image/private/s--RQz5sO3n--/v1584466082/carbuyer/car_images/mitsubishi-asx-suv-cutout-2019.jpg"));
    cars.add(Cars(
        brand: "Ferari",
        color: Colors.brown,
        img:
            "https://www.wired.com/wp-content/uploads/2015/02/Ferrari-488-GTB-01.jpg"));
    cars.add(Cars(
        brand: "Susuki",
        color: Colors.cyan,
        img:
            "https://s3.caradvice.com.au/wp-content/uploads/2016/04/Suzuki-Vitara-Turbo-1-.jpg"));
    // List<String> cars = ["Toyota", "Honda", "Mitsubishi", "Ferari", "Susuki"];
    // List<MaterialColor> boxColor = [
    //   Colors.red,
    //   Colors.blue,
    //   Colors.yellow,
    //   Colors.brown,
    //   Colors.cyan
    // ];

    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: cars.length,
              itemBuilder: (c, i) {
                return InkWell(
                  onTap: () => context.router
                      .navigate(SecondRoute(brand: cars[i].brand)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Center(child: Image.network(cars[i].img))),
                );
              }),
        )
      ],
    ));
  }
}

class Cars {
  String brand;
  MaterialColor color;
  String img;
  Cars({required this.brand, required this.color, required this.img});
}
