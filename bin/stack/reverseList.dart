void reverseList(List<int> list) {
  for (int i = list.length - 1; i >= 0; i--) {
    print(list[i]);
  }
}

void main(){
  List<int> numbers = [1, 2, 3, 4, 5];
  print('Printing list in reverse:');
  reverseList(numbers);

}