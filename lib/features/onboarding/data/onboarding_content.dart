class OnboardingContent {
  String? title;
  String? description;
  String? image;
  OnboardingContent({
     this.title,
     this.description,
     this.image,
  });
}
List<OnboardingContent> contents = [
  OnboardingContent(
    title: 'Choose Your Product',
    description: 'Your perfect product is here',
    image: 'assets/images/onboarding1.gif',
  ),
  OnboardingContent(
    title: 'Add Your Product',
    description: 'Add your product to the cart',
    image: 'assets/images/onboarding2.gif',
  ),
  OnboardingContent(
    title: 'Get Your Product',
    description: 'Get your product at your door',
    image: 'assets/images/onboarding3.gif',
  ),
];