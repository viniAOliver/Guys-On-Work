import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:guys_on_work/design/app_theme.dart';
import 'package:guys_on_work/modules/initial_pages/welcome_page/models/animations_page_model.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  // Create an animation controller for the Lottie animation.
  late final AnimationController _animationController;

  // Create a list of animation models to be created by pageFactory.
  late final RxList<AnimationsPageModel> _animationModels =
      <AnimationsPageModel>[].obs;

  @override
  void initState() {
    super.initState();

    // Hide both the status bar and the navigation bar.
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    // Set the initial animation models that will appear on the screen.
    _animationModels.value = [
      AnimationsPageModel(
        inRevealAnimation: 'assets/images/animations/talk_in_reveal.json'.obs,
        onTapAnimation: 'assets/images/animations/talk_conversation.json'.obs,
        title: 'Bem-vindo ao\nGuys on Work!',
        subtitle:
            'Desperte o Melhor em sua Equipe com Nossa Plataforma Exclusiva de Gestão, Colaboração e Desempenho. Juntos, Vamos Alcançar Novos Patamares no Mundo Profissional.',
      ),
      AnimationsPageModel(
        inRevealAnimation: 'assets/images/animations/target_in_reveal.json'.obs,
        onTapAnimation: 'assets/images/animations/target_aim.json'.obs,
        title: 'Nosso objetivo',
        subtitle:
            'Ajudar as pessoas a se desenvolverem profissionalmente, gerenciando suas carreiras e projetos de forma eficiente, com foco em resultados e alta performance.',
      ),
      AnimationsPageModel(
        inRevealAnimation: 'assets/images/animations/heart_in_reveal.json'.obs,
        onTapAnimation: 'assets/images/animations/heart_popup.json'.obs,
        title: 'Obrigado por\nchegar até aqui!',
        subtitle:
            'Agora que você já conhece um pouco sobre nós, vamos começar a usar a plataforma?',
      ),
    ];

    // Initialize the animation controller.
    _animationController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    // Show both the status bar and the navigation bar when disposed.
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );

    // Dispose the animation controller.
    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Create a page controller for the PageView and SmoothPageIndicator.
    PageController pagesController = PageController(initialPage: 0);

    // Create an animation controller for the Lottie animation.
    Future.delayed(
      const Duration(milliseconds: 600),
      () {
        _animationController
          ..duration = const Duration(seconds: 1)
          ..forward();
      },
    );

    /// Create a factory to build the pages.
    /// To create a new page, just add a new AnimationsPageModel to the _animationModels list.
    pageFactory({
      required BuildContext context,
      required AnimationsPageModel animationModel,
    }) {
      return Center(
        child: SizedBox(
          width: context.width,
          height: context.height,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    animationModel.inRevealAnimation.value =
                        animationModel.onTapAnimation.value;
                    _animationController
                      ..reset()
                      ..duration = const Duration(seconds: 2)
                      ..forward();
                  },
                  child: Obx(
                    () => LottieBuilder.asset(
                      animationModel.inRevealAnimation.value,
                      controller: _animationController,
                      width: 180,
                      repeat: false,
                    ),
                  ),
                ),
                Text(
                  animationModel.title,
                  textAlign: TextAlign.start,
                  style: AppTheme.darkTheme.textTheme.titleLarge,
                ),
                Text(
                  animationModel.subtitle,
                  textAlign: TextAlign.start,
                  style: AppTheme.darkTheme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      );
    }

    // Create a list of pages to be displayed in the PageView.
    List<Widget> pages = List.generate(
      _animationModels.length,
      (index) => pageFactory(
        context: context,
        animationModel: _animationModels[index],
      ),
    );

    // Create a boolean to check if the current page is the last page.
    RxBool isLastPage = false.obs;

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pagesController,
            children: pages,
            onPageChanged: (value) {
              isLastPage.value = (pages.length - 1) == value;
              _animationController
                ..reset()
                ..duration = const Duration(seconds: 2)
                ..forward();
            },
          ),
          Align(
            alignment: const Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Create a button to skip the welcome screen.
                TextButton(
                  onPressed: () {
                    isLastPage.value
                        ? null
                        // Navigate to the home screen.
                        : Navigator.of(context)
                            .pushReplacementNamed('/loginPage');
                  },
                  child: Obx(
                    () => Text(
                      isLastPage.value ? '' : 'Pular',
                      style: AppTheme.darkTheme.textTheme.bodyMedium,
                    ),
                  ),
                ),

                // Create a SmoothPageIndicator to display the current page.
                SmoothPageIndicator(
                  controller: pagesController,
                  count: pages.length,
                  effect: const WormEffect(
                    activeDotColor: AppTheme.secondaryColor,
                    dotColor: AppTheme.tertiaryColor,
                  ),
                ),

                // Create a button to navigate to the next page.
                TextButton(
                  onPressed: () {
                    isLastPage.value =
                        (pages.length - 1) == pagesController.page;
                    isLastPage.value
                        // Navigate to the home screen.
                        ? Navigator.of(context).pushReplacementNamed(
                            '/loginPage',
                          )
                        // Navigate to the next page.
                        : pagesController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                  },
                  child: Text(
                    'Proximo',
                    style: AppTheme.darkTheme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
