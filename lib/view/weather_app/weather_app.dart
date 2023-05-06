import 'package:appcom_task/controller/weather/weather_controller.dart';
import 'package:appcom_task/view/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widget/custom_tile.dart';
import 'widget/details_widget.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<WeatherController>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      provider.getWeather();
      provider.getLocation();
    });

    return Consumer<WeatherController>(
      builder: (context, homeController, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('Weather'),
            backgroundColor: Colors.black,
            centerTitle: true,
          
          ),
          body: homeController.isLoading == true ||
                  homeController.isLoading2 == true ||
                  homeController.isLoading3 == true
              ? const LoadingWidget()
              : SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.30),
                            )
                          ],
                          border: Border.all(
                              color: Colors.white.withOpacity(0.2), width: 1.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              dense: true,
                              title: Text(
                                "${homeController.weatherList?.location.name}, ${homeController.weatherList?.location.region}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              subtitle: Text(
                                "${homeController.weatherList?.location.country}",
                                style: const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  homeController.weatherList?.current.tempC
                                          .toStringAsFixed(0) ??
                                      "",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 60,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 16.0),
                                  child: Text("°C",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25)),
                                ),
                                const Spacer(),
                                homeController.isLoading == true
                                    ? const LoadingWidget()
                                    : Container(
                                        height: 100,
                                        width: 110,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                              "https:${homeController.weatherList?.current.condition.icon}",
                                            ),
                                          ),
                                        ),
                                      ),
                              ],
                            ),
                            Text(
                              homeController
                                      .weatherList?.current.condition.text ??
                                  '',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                     
                      PodcastTile(
                        text: "Humidity",
                        text2:
                            "${homeController.weatherList?.current.humidity}",
                        icon: Icons.water_sharp,
                      ),
                        PodcastTile(
                        text: "Wind",
                        text2:
                            "${homeController.weatherList?.current.windMph} km/h",
                        icon: Icons.air,
                      ),   PodcastTile(
                        text: "Cloud",
                        text2:
                            homeController.weatherList?.current.cloud
                                      .toString() ??
                                  '',
                        icon: Icons.cloud,
                      ),
                      
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DetialsWidgets(
                                title: 'wind Direction',
                                text: homeController
                                        .weatherList?.current.windDir
                                        .toString() ??
                                    '',
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              DetialsWidgets(
                                title: 'Temperature',
                                text:
                                    "${homeController.weatherList?.current.tempF} °F",
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DetialsWidgets(
                                title: 'Pressure',
                                text:
                                    "${homeController.weatherList?.current.pressureMb} mb"
                                    '',
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              DetialsWidgets(
                                title: 'UV',
                                text:
                                    "${homeController.weatherList?.current.uv}",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // floatingActionButton: FloatingActionButton.extended( onPressed: () {
                //   homeController.getLocation();
                // }, label: const Icon(Icons.restart_alt),),
        );
      },
    );
  }
}
