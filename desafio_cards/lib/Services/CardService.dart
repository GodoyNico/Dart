import 'dart:convert';
import 'package:desafio_cards/Entities/Card.dart';
import 'package:dio/dio.dart';

class CardService {

    // Propriedades
    var dio = Dio(
        BaseOptions(
            baseUrl: 'https://api-cards-growdev.herokuapp.com'
        )
    );

    // Endpoint para pegar todos os cards
    Future<List<Card>> listarCards() async {
        var resposta = await dio.get('/cards');
        var retorno = <Card>[];
        if (resposta.statusCode >= 200 && resposta.statusCode < 300) {
            List lista = resposta.data;
            lista.forEach((item) => retorno.add(Card.fromMap(item)));
        } else {
            print(resposta.statusMessage);
        }
        return retorno;
    }

    // Endpoint buscar card pelo ID
    Future<Card> buscarCard(int id) async {
        var resposta = await dio.get('/cards/$id');
        Card retorno;
        if (resposta.statusCode >= 200 && resposta.statusCode < 300) {
            retorno = Card.fromMap(resposta.data);
        } else {
            print(resposta.statusMessage);
        }
        return retorno;
    }

    // Endpoint de criar card
    Future<Card> criarCard(Card card) async {
        Map<String, dynamic> data = card.toMap();
        var resposta = await dio.post('/cards', data: data);
        Card retorno;
        if (resposta.statusCode >= 200 && resposta.statusCode < 300) {
            retorno = Card.fromMap(resposta.data);
        } else {
            print(resposta.statusMessage);
        }
        return retorno;
    }

    //EEndpoint de atualizar card
    Future<Card> atualizarCard(Card card, int id) async {
        Map<String, dynamic> data = card.toMap();
        var resposta = await dio.put('/cards/$id', data: data);
        Card retorno;
        if (resposta.statusCode >= 200 && resposta.statusCode < 300) {
            retorno = Card.fromMap(resposta.data);
        } else {
            print(resposta.statusMessage);
        }
        return retorno;
    }

    // Endpoint de deletar card
    Future<void> deletarCard(int id) async {
        var resposta = await dio.delete('/cards/$id');
        if (resposta.statusCode >= 200 && resposta.statusCode < 300) {
            print(resposta.statusMessage);
        }
    }
}