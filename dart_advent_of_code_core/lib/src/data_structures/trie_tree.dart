import 'package:retrieval/trie.dart';

enum TrieLookUpResult {
  isPrefix,
  isWord,
  doesNotExist;
}

abstract class ITrieTree {
  void add(String token);

  bool contains(String token);

  bool containsPrefix(String token);

  TrieLookUpResult lookUp(String prefix) {
    if (containsPrefix(prefix)) {
      if (contains(prefix)) {
        return TrieLookUpResult.isWord;
      } else {
        return TrieLookUpResult.isPrefix;
      }
    } else {
      return TrieLookUpResult.doesNotExist;
    }
  }
}

class RetrievalTriePackage extends ITrieTree {
  final _trieTree = Trie();
  @override
  void add(String token) {
    _trieTree.insert(token);
  }

  @override
  bool contains(String token) {
    return _trieTree.has(token);
  }

  @override
  bool containsPrefix(String token) {
    return _trieTree.find(token).isNotEmpty;
  }
}

class HashMapTrieTree extends ITrieTree {
  final _nodes = <String, TrieTreeNode>{};

  @override
  void add(String token) {
    // TODO: implement contains
    throw UnimplementedError();
    // for (int i = 0; i < token.length; i++) {
    //   final letter = token[i];
    //   final isLastLetter = i == token.length - 1;
    //   _nodes.whenKeyIs(
    //     key: letter,
    //     absent: () {
    //       _nodes.put(
    //         letter,
    //         TrieTreeNode(
    //           isEndOfAWord: isLastLetter,
    //           value: letter,
    //         ),
    //       );
    //     },
    //     present: (node) {
    //       if (isLastLetter) {
    //         node.isEndOfAWord = true;
    //       }
    //     },
    //   );
    // }
  }

  @override
  bool contains(String token) {
    // TODO: implement contains
    throw UnimplementedError();
  }

  @override
  bool containsPrefix(String token) {
    // TODO: implement canCrawl
    throw UnimplementedError();
  }
}

class TrieTreeNode {
  bool isEndOfAWord;

  final String value;

  final children = <String, TrieTreeNode>{};

  TrieTreeNode({
    required this.isEndOfAWord,
    required this.value,
  });
}
