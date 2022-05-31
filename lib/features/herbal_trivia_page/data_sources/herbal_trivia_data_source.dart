class HerbalTriviaMockedDataSource {
  Future<List<Map<String, dynamic>>?> getHerbalTrivia() async {
    return [{
      'id': 1,
      'contents': 'contents',
      'answer': 'answer',
    },
    {
      'id': 2,
      'contents': 'contents2',
      'answer': 'answer2',
    },
    ];
  }
}
