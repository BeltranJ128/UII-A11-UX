import 'package:flutter/material.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CustomIcon> customIcons = [
      CustomIcon(name: "Productos", icon: 'assets/quimicoss.jpg'),
      CustomIcon(name: "Conocenos", icon: 'assets/info.png'),
      CustomIcon(name: "Contactanos", icon: 'assets/telephone.png'),
      CustomIcon(name: "Más", icon: 'assets/plus.png'),
    ];
    List<CustomIcon> healthNeeds = [
      CustomIcon(name: "Productos", icon: 'assets/quimicoss.jpg'),
      CustomIcon(name: "Conocenos", icon: 'assets/info.png'),
      CustomIcon(name: "Contactanos", icon: 'assets/telephone.png'),
      CustomIcon(name: "Equipos", icon: 'assets/filtro.jpg'),
    ];
    List<CustomIcon> specialisedCared = [
      CustomIcon(name: "Calderas", icon: 'assets/caldera.jpg'),
      CustomIcon(name: "Timers", icon: 'assets/timer.jpg'),
      CustomIcon(name: "Bombas", icon: 'assets/bomba.jpg'),
      CustomIcon(name: "Filtros", icon: 'assets/filtro.jpg'),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(customIcons.length, (index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                if (index == customIcons.length - 1) {
                  showModalBottomSheet(
                    context: context,
                    showDragHandle: true,
                    builder: (context) {
                      return Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        height: 350,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // HEALTH NEEDS SECTION
                            Text(
                              "Principales",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                healthNeeds.length,
                                (index) {
                                  return Column(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        borderRadius: BorderRadius.circular(90),
                                        child: Container(
                                          width: 60,
                                          height: 50,
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primaryContainer
                                                .withOpacity(0.4),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            healthNeeds[index].icon,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(healthNeeds[index].name)
                                    ],
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: 20),
                            // SPECIALISED CARE SECTION

                            Text(
                              "Equipos de piscina",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                specialisedCared.length,
                                (index) {
                                  return Column(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        borderRadius: BorderRadius.circular(90),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primaryContainer
                                                .withOpacity(0.4),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            specialisedCared[index].icon,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(specialisedCared[index].name)
                                    ],
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                }
              },
              borderRadius: BorderRadius.circular(90),
              child: Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  customIcons[index].icon,
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(customIcons[index].name)
          ],
        );
      }),
    );
  }
}

class CustomIcon {
  final String name;
  final String icon;

  CustomIcon({
    required this.name,
    required this.icon,
  });
}
