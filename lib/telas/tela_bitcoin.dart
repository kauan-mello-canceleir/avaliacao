


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../componentes/botao.form.dart';
import '../componentes/gera_valor_variacao.dart';

class TelaBitcoin extends StatefulWidget {
  const TelaBitcoin({super.key});

  @override
  State<TelaBitcoin> createState() => _TelaBitcoinState();
}

class _TelaBitcoinState extends State<TelaBitcoin> {

  


  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    final _blockchain = args['blockchain'];
    final _blockchainVariation = args['blockchainVariation'];

    final _coinBase = args['coinbase'];
    final _coinBaseVariation = args['coinbaseVariation'];
   

    final _bitStamp = args['bitstamp'];
    final _bitStampVariation = args['bitstampVariation'];
    

    final _foxBit = args['foxbit'];
    //final _foxBitVariation = args['foxbitVariation'];

    //final _mercadoBitcoin = args['mercadoBitcoin'];
    //final _mercadoBitcoinVariation = args['mercadoBitcoinVariation'];
    
    
    void irParaInicio(){
    Navigator.pushNamed(context, '/telaMoeda');
    }

  


    return Scaffold(

      
      appBar: AppBar(
        title: const Text('Tela de bitcoin'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              
              Text("bitcon", style:  TextStyle(
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
                    GeraValorVariacao(texto: 'Blockchain_info', valorMoeda: _blockchain, valorVariacao: _blockchainVariation,),
                    const SizedBox(width: 16),
                    GeraValorVariacao(texto: 'CoinBase', valorMoeda: _coinBase, valorVariacao: _coinBaseVariation),
                    const SizedBox(height: 16),
                    GeraValorVariacao(texto: 'BitStamp', valorMoeda: _bitStamp, valorVariacao: _bitStampVariation),
                    const SizedBox(height: 16),

                     ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          //GeraValorVariacao(texto: 'FoxBit', valorMoeda: _foxBit, valorVariacao: _foxBitVariation),
                          const SizedBox(width: 16),
                          //GeraValorVariacao(texto: 'Mercado Bitcoin', valorMoeda: _mercadoBitcoin, valorVariacao: _mercadoBitcoinVariation),
                          const SizedBox(width: 16),
                      
                        
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
                funcao: irParaInicio,
                texto: 'ir para inicio',
              )
            ],
          )


          
          
        ],
      ),


      
    );

  }
}