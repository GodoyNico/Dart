import 'pessoa.dart';

class Aluno {
  Pessoa dadosPessoais;
  double _nota;
  String _status;

  bool _fezProva;

  double get nota => _nota;
  String get status => _status;

  Aluno(this.dadosPessoais) {
    _nota = 0;
    _status = 'Não definido';
    _fezProva = false;
  }

  void atualizarNota(double nota) {
    if (_status == 'Não definido') {
      nota = nota;
      _fezProva = true;
    }
  }

  void atualizarStatus() {
    if (_fezProva) {
      if (_nota > 4) {
        _status = 'Aprovado';
      } else {
        _status = 'Reprovado';
      }
    }
  }
}
