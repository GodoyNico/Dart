import 'dart:io';
import 'package:desafio_cards/Entities/Card.dart';
import 'package:desafio_cards/Services/CardService.dart';

void main() async {
  var cardService = CardService();
  var opcaoAtual = 0;

  while(opcaoAtual != 6) {
    mostrarMenuOpcoes();
    var opcaoEscolhida = int.tryParse(stdin.readLineSync()) ?? 0;
    opcaoAtual = opcaoEscolhida;

    switch(opcaoEscolhida) {
      case 1: 
        {
          print('Buscar todos os cards');

          //TODO: Exibir na tela os cards listados
          //List<Card> cards = await cardService.listarCards();
          //cards.forEach((element) {
          //  print(element);
          //});
        }
        return;

      case 2:
        {
          print('Buscar card pelo ID');

          // TODO: Pedir para o usuário id do card para buscar
          //ar cardBuscado = await cardService.buscarCard(2);
          //print(cardBuscado);
        }
        return;

      case 3:
        {
          print('Criar card');

          // TODO: Pedir para o usuário title e content
          //Card card = Card(id: 2, title: 'Teste do Nicolas', content: 'Agora vai de primeira!');
          //var cardCriado = await cardService.criarCard(card);
          //print(cardCriado);
        }
        return;

      case 4:
        {
          print('Atualizar card');

          // TODO: Pedir para o usuário title e content para criar um card novo e o ID de qual vai substituir
          //Card card = Card(id: 2, title: 'Teste do Nicolas alterado', content: 'Agora já foi de primeira!');
          //var cardAlterado = await cardService.atualizarCard(card, 2);
          //print(cardAlterado);
        }
        return;

      case 5:
        {
          print('Deletar card');

          // TODO: Pedir para o usuário qual id deseja deletar
          //await cardService.deletarCard(2);
        }
        return;

      case 6:
        {
          print('Sair');
        }
        print('Você saiu da aplicação');
        break;
    }
  }
}

// TODO: Método mostrar opções
// TODO: Método exibir lista de cards
// TODO: Método exibir card buscado pelo ID
// TODO: Método cria card
// TODO: Método atualiza card
// TODO: Método deleta card

void mostrarMenuOpcoes() {
  stdout.writeln('1 - Buscar todos os cards');
  stdout.writeln('2 - Buscar card pelo ID');
  stdout.writeln('3 - Criar card');
  stdout.writeln('4 - Atualizar card');
  stdout.writeln('5 - Deletar card');
  stdout.writeln('6 - Sair da aplicação');
}