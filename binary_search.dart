class Node {
  final String data;
  Node? left;
  Node? right;

  Node(this.data);
}

class BinarySearchTree {
  late final Node root;

  BinarySearchTree(String rootData) {
    root = Node(rootData);
  }

  void insert(String value) {
    _insertNode(root, value);
  }

  void _insertNode(Node current, String value) {
    // If value <= current.data, go left (as per problem instructions)
    if (value.compareTo(current.data) <= 0) {
      if (current.left == null) {
        current.left = Node(value);
      } else {
        _insertNode(current.left!, value);
      }
    } else {
      if (current.right == null) {
        current.right = Node(value);
      } else {
        _insertNode(current.right!, value);
      }
    }
  }

  List get sortedData {
    final List result = [];
    _inOrderTraversal(root, result);
    return result;
  }

  void _inOrderTraversal(Node? node, List result) {
    if (node == null) return;
    _inOrderTraversal(node.left, result);
    result.add(node.data);
    _inOrderTraversal(node.right, result);
  }
}
