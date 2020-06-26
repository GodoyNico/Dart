import 'aluno.dart';

class Turma {
  List<Aluno> alunos;


  Turma() {
    alunos = [];
  }

  double calcularMediaTurma() {
    var total = calcularTotalNotas();
    var media = total / alunos.length;
    return media;
  }

  double calcularTotalNotas() {
    var total =
    alunos.map((aluno) => aluno.nota)
    .reduce((total, nota) => total + nota);

    return total;
  }

  List<Aluno> listaAlunosAprovados() {
    var aprovados = alunos.where((aluno) => aluno.status == 'Aprovado');
    return aprovados;
  }

  List<Aluno> listaAlunosReprovados() {
    var reprovados = alunos.where((aluno) => aluno.status == 'Reprovado');
    return reprovados;
  }

  Aluno melhorAluno() {
    var maiorNota = aluno.reduce(melhorAluno, aluno._nota );
    
  //   var maiorNota = alunos.reduce((melhorAluno, aluno) {
  //     if((melhorAluno['nota'] as int) < (aluno['nota'] as int)) {
  //       melhorAluno = aluno;
  //     }
  //     return maiorNota;
  //   }
  // }
  }

  Aluno piorAluno() {}
}
