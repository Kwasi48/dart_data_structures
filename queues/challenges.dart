import 'deque.dart';
import 'queue.dart';

void main(){

//challenge 1 Stack vs. Queue
// a Stack has all the elements placed on top of each other and 
//elements can be removed or added from the top whiles queue
// have elements added from the bottom and removed from the front.
//Real World Examples
//Stack: a gun magazine 
//Queue: Car assembly plants

//challenge two
//Step by Step Diagrams
//solved in my notebook 😂😂😊🤣

//challenge three



//challenge four 
final queue = StackDequeue<String>();
  queue.enqueue('Ray',Direction.front);
  queue.enqueue('Brian',Direction.back);
  queue.enqueue('Eric',Direction.front);
  print(queue);

  queue.dequeue(Direction.back);
  print(queue);

  queue.peek;
  print(queue);

}