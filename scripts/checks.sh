set -e
dart format .
flutter analyze
rm -rf coverage
flutter test --coverage
genhtml -o coverage coverage/lcov.info
flutter test test/coverage.dart