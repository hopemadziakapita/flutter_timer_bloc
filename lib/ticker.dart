//Class declaration
class Ticker {

  //constant constructor:::: instances of the class will be created at compile time
  const Ticker();

  //Methond to return stream of integers
  Stream<int> tick ({required int ticks}){
    return Stream.periodic(const Duration(seconds: 1), (x) => ticks - x -1).take(ticks);
  }
}