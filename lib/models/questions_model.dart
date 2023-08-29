class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sampleData = [
  {
    "id": 1,
    "question":
        "Inserting an item into the stack when the stack is not full is called…….. Operation and deletion of an item from the stack, when the stack is not empty is called ...........operation.",
    "options": ['push, pop', 'pop, push', 'insert, delete', 'delete, insert'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question":
        "When searching for the key value 60 in a binary search tree, nodes containing the key values 10, 20, 40, 50, 70 80, 90 are traversed, not necessarily in the order given. How many different orders are possible in which these key values can occur on the search path from the root to the node containing the value 60?",
    "options": ['140', '80', '5080', '35'],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question": "Within a switch statement, you can use—",
    "options": [
      'Continue but not break',
      'Break but not continue',
      'Both continue and break',
      'Neither continue nor break'
    ],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question":
        "Which operator is used to invert all the digits in a binary representation of a number?",
    "options": ['~', '<<<', '>>>', '^'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "The Default Parameter passing mechanism is",
    "options": [
      'Call by reference',
      'Call by value result',
      'Call by value',
      'None of the above'
    ],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question":
        "Which one of the following is an application of Stack Data Structure?",
    "options": [
      'Managing function calls',
      'The stock span problem',
      '	Arithmetic expression evaluation',
      '	All of the above'
    ],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question":
        "Which of the following sorting algorithms can be used to sort a random linked list with minimum time complexity?",
    "options": ['Insertion Sort', 'Quick Sort', 'Merge Sort', 'Heap Sort'],
    "answer_index": 2,
  },
  {
    "id": 8,
    "question":
        "Suppose the numbers 7, 5, 1, 8, 3, 6, 0, 9, 4, 2 are inserted in that order into an initially empty binary search tree. The binary search tree uses the usual ordering on natural numbers. What is the in-order traversal sequence of the resultant tree?",
    "options": [
      '	7 5 1 0 3 2 4 6 8 9',
      '	0 2 4 3 1 6 5 9 8 7',
      '0 1 2 3 4 5 6 7 8 9',
      '	9 8 6 4 2 3 0 1 5 7'
    ],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question":
        "The order of an internal node in a B+ tree index is the maximum number of children it can have. Suppose that a child pointer takes 6 bytes, the search field value takes 14 bytes, and the block size is 512 bytes. What is the order of the internal node?",
    "options": ['25', '26', '24', '27'],
    "answer_index": 1,
  },
  {
    "id": 10,
    "question":
        "Given a hash table T with 25 slots that stores 2000 elements, the load factor α for T is __________",
    "options": ['80', '0.0125', '8000', '1.25'],
    "answer_index": 0,
  },
];
