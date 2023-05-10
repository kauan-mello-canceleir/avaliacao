

import 'package:flutter/material.dart';

import '../componentes/botao.form.dart';
import '../componentes/gera_valor_variacao.dart';

class TelaAcoes extends StatefulWidget {
  const TelaAcoes({super.key});

  @override
  State<TelaAcoes> createState() => _TelaAcoesState();
}

class _TelaAcoesState extends State<TelaAcoes> {

  


  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    
    final _ibovespa = args['ibovespa'];
    final _ibovespaVariation = args['ibovespaVariation'];

    final _nasdaq = args['nasdaq'];
    final _nasdaqVariation = args['nasdaqVariation'];

    final _cac = args['cac'];
    final _cacVariation = args['cacVariation'];

    final _ifix = args['ifix'];
    final _ifixVariation = args['ifixVariation'];

    final _dowjones = args['dowjones'];
    final _dowjonesVariation = args['downjonesVariation'];

    final _nikkei = args['nikkei'];
    final _nikkeiVariation = args['nikkeiVariation'];
    
    //btc 

    final _blockchain = args['blockchain'];
    final _blockchainVariation = args['blockchainVariation'];

    final _coinBase = args['coinbase'];
    final _coinBaseVariation = args['coinbaseVariation'];

    final _bitStamp = args['bitstamp'];
    final _bitStampVariation = args['bitstampVariation'];

    final _foxBit = args['foxbit'];
    final _foxBitVariation = ['foxbitVariation'];
    debugPrint("acoes ${_bitStampVariation.toString()}");

    final _mercadoBitcoin = ['mercadoBitcoin'];
    final _mercadoBitcoinVariation = ['mercadoBitcoinVariation'];


    irParaBitcoin(){
      Navigator.pushNamed(context, '/telaBitcoin',
      arguments: {
          
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

     return Scaffold(
      appBar: AppBar(
        title: const Text('Tela de ações'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              
              Text("Ações", style:  TextStyle(
                fontSize: 25
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(30.0),
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            width: 500,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    GeraValorVariacao(texto: 'Ibovespa', valorMoeda: _ibovespa, valorVariacao: _ibovespaVariation,),
                    const SizedBox(width: 16),
                    GeraValorVariacao(texto: 'Nasdaq', valorMoeda: _nasdaq, valorVariacao: _nasdaqVariation),
                    const SizedBox(height: 16),
                    GeraValorVariacao(texto: 'Cac', valorMoeda: _cac, valorVariacao: _cacVariation),
                    const SizedBox(height: 16),

                     ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          GeraValorVariacao(texto: 'IFIX', valorMoeda: _ifix, valorVariacao: _ifixVariation),
                          const SizedBox(width: 16),
                          GeraValorVariacao(texto: 'DOWJONES', valorMoeda: _dowjones, valorVariacao: _dowjonesVariation),
                          const SizedBox(width: 16),
                          GeraValorVariacao(texto: 'NIKKEI', valorMoeda: _nikkei, valorVariacao: _nikkeiVariation),
                        
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
                funcao: irParaBitcoin,
                texto: 'ir para bitcoin',
              )
            ],
          )


          
          
        ],
      ),


      
    );
  }
}