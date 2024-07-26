import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/blocs/home_bloc.dart';
import 'package:marvel_app/core/contracts/home_contract.dart';
import 'package:marvel_app/core/load_state.dart';
import 'package:marvel_app/inject/injector.dart';
import 'package:marvel_app/presentation/home/home_screen.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'home_screen_test.mocks.dart';

@GenerateMocks([HomeBloc])
void main() {
  late HomeBloc bloc;

  // Define a test. The TestWidgets function also provides a WidgetTester
  // to work with. The WidgetTester allows you to build and interact
  // with widgets in the test environment.
  Future<void> init() async {
    await configureInjection();
    bloc = MockHomeBloc();
  }

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: BlocProvider<HomeBloc>(
        create: (context) => bloc,
        child: const HomeScreen(),
      ),
    );
  }

  setUp(init);
  group("initialization", () {
    testWidgets('HomeScreen displays loading state initially',
        (WidgetTester tester) async {
      when(bloc.state).thenReturn(HomeData(loadState: LoadState.loading));

      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pumpAndSettle(); // Pump to trigger the BlocBuilder
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}
