import 'dart:convert';

import 'package:avalia/componentes/botao.form.dart';
import 'package:avalia/componentes/gera_valor_variacao.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart';

class TelaMoeda extends StatefulWidget {
  const TelaMoeda({super.key});

  @override
  State<TelaMoeda> createState() => _TelaMoedaState();
}

class _TelaMoedaState extends State<TelaMoeda> {

    double _dolarValue = 0;
    double _dolarVariation = 0;
    
    double _euroValue = 0;
    double _euroVariation = 0;

    double _pesoValue = 0;
    double _pesoVariation = 0;

    double _yenValue = 0;
    double _yenVariation = 0;

    //ações

    double _ibovespa = 0;
    double _ibovespaVariation = 0;

    double _nasdaq = 0;
    double _nasdaqVariation = 0;

    double _cac = 0;
    double _cacVariation = 0;

    double _ifix = 0;
    double _ifixVariation = 0;
    
    double _dowjones = 0;
    double _dowjonesVariation = 0;

    double _nikkei = 0;
    double _nikkeiVariation = 0;

  //bitcoin

    double _blockchain = 0;
    double _blockchainVariation = 0;

    double _bitStamp = 0;
    double _bitStampVariation = 0;

    double _mercadoBitcoin = 0;
    double _mercadoBitcoinVariation = 0;
    
    double _coinBase = 0;
    double _coinBaseVariation = 0;

    double _foxBit = 0;
    double _foxBitVariation = 0;

    void initState() {
    super.initState();
    hgBrasilMoedasPrincipais();
  }

  hgBrasilMoedasPrincipais() async{
      const String urlHgBrasil = 
        "https://api.hgbrasil.com/finance?format=json-cors&key=a6c940eb";
      Response resposta = await get(Uri.parse(urlHgBrasil));
      Map moedas = json.decode(resposta.body);
      setState(() {
         
         _dolarValue = double.parse("${ moedas ['results']['currencies']['USD']['buy'] }");
         _dolarVariation = double.parse("${ moedas ['results']['currencies']['USD']['variation'] }");

        _euroValue = double.parse("${ moedas ['results']['currencies']['EUR']['buy'] }");
        _euroVariation = double.parse("${ moedas ['results']['currencies']['EUR']['variation'] }");

        _pesoValue = double.parse("${ moedas ['results']['currencies']['ARS']['buy'] }");
        _pesoVariation = double.parse("${ moedas ['results']['currencies']['ARS']['variation'] }");

        _yenValue = double.parse("${ moedas ['results']['currencies']['JPY']['buy'] }");
        _yenVariation = double.parse("${ moedas ['results']['currencies']['JPY']['variation'] }");
      

      //ações
        _ibovespa = double.parse("${ moedas ['results']['stocks']['IBOVESPA']['points'] }");
        _ibovespaVariation = double.parse("${ moedas ['results']['stocks']['IBOVESPA']['variation'] }");
      
        _nasdaq = double.parse("${ moedas ['results']['stocks']['NASDAQ']['points'] }");
        _nasdaqVariation = double.parse("${ moedas ['results']['stocks']['NASDAQ']['variation'] }");

        _cac = double.parse("${ moedas ['results']['stocks']['CAC']['points'] }");
        _cacVariation = double.parse("${ moedas ['results']['stocks']['CAC']['variation'] }");

        _ifix = double.parse("${ moedas ['results']['stocks']['IFIX']['points'] }");
        _ifixVariation = double.parse("${ moedas ['results']['stocks']['IFIX']['variation'] }");

        _dowjones = double.parse("${ moedas ['results']['stocks']['DOWJONES']['points'] }");
        _dowjonesVariation = double.parse("${ moedas ['results']['stocks']['DOWJONES']['variation'] }");

        _nikkei = double.parse("${ moedas ['results']['stocks']['NIKKEI']['points'] }");
        _nikkeiVariation = double.parse("${ moedas ['results']['stocks']['DOWJONES']['variation'] }");

      //bitcoin

        _blockchain = double.parse("${ moedas ['results']['bitcoin']['blockchain_info']['buy'] }");
        _blockchainVariation = double.parse("${ moedas ['results']['bitcoin']['blockchain_info']['variation'] }");

        _coinBase= double.parse("${ moedas ['results']['bitcoin']['coinbase']['last'] }");
        _coinBaseVariation = double.parse("${ moedas ['results']['bitcoin']['coinbase']['variation'] }");

        _bitStamp = double.parse("${ moedas ['results']['bitcoin']['bitstamp']['buy'] }");
        _bitStampVariation = double.parse("${ moedas ['results']['bitcoin']['bitstamp']['variation'] }");

        _foxBit = double.parse("${ moedas ['results']['bitcoin']['foxbit']['last'] }");
        _foxBitVariation = double.parse("${ moedas ['results']['bitcoin']['foxbit']['variation'] }");

        _mercadoBitcoin = double.parse("${ moedas ['results']['bitcoin']['mercadobitcoin']['last'] }");
        _mercadoBitcoinVariation = double.parse("${ moedas ['results']['bitcoin']['mercadobitcoin']['variation'] }");

      }
      
      
      );
    }
    irParaAcoes(){
      Navigator.pushNamed(context, '/telaAcoes', 
      arguments: {

        //ações
        'ibovespa': _ibovespa,
        'ibovespaVariation': _ibovespaVariation,

        'nasdaq': _nasdaq,
        'nasdaqVariation': _nasdaqVariation,

        'cac': _cac,
        'cacVariation': _cacVariation,

        'ifix': _ifix,
        'ifixVariation': _ifixVariation,

        'dowjones': _dowjones,
        'downjonesVariation': _dowjonesVariation,

        'nikkei': _nikkei,
        'nikkeiVariation': _nikkeiVariation,

        //bitcoin

        'bitstamp': _bitStamp,
        'bitstampVariation': _bitStampVariation,

        'foxbit': _foxBit,
        'foxbitVariation': _foxBitVariation,
        

        'coinbase': _coinBase,
        'coinbaseVariation': _coinBaseVariation,

        'mercadoBitcoin': _mercadoBitcoin,
        'mercadoBitcoinVariation': _mercadoBitcoinVariation,
        
        'blockchain': _blockchain,
        'blockchainVariation': _blockchainVariation,

        } 
      );


    }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Principais moedas"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              
              Text("Moedas", style:  TextStyle(
                fontSize: 25
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(30.0),
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            width: 250,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    
                    GeraValorVariacao(texto: 'Dolar', valorMoeda: _dolarValue, valorVariacao: _dolarVariation,),
                    const SizedBox(width: 16),
                    GeraValorVariacao(texto: 'Euro', valorMoeda: _euroValue, valorVariacao: _euroVariation),
                    const SizedBox(height: 16),
                     ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          GeraValorVariacao(texto: 'Peso', valorMoeda: _pesoValue, valorVariacao: _pesoVariation,),
                          const SizedBox(width: 16),
                          GeraValorVariacao(texto: 'Yene',valorMoeda: _yenValue, valorVariacao: _yenVariation),
                        ],
                      )
                    ],
                  )
              ], 
            ),   
          ),
          Column(
            children: [
              Botao(
                funcao: irParaAcoes,
                texto: 'ir para ações',
              )
            ],
          ) 
        ],
      ),


      
    );
  }
}