import 'package:flutter/material.dart';

class GeraValorVariacao extends StatefulWidget {
  final String texto;
  final double valorMoeda;
  final double valorVariacao;
  const GeraValorVariacao({required this.valorMoeda, required this.valorVariacao, super.key, required this.texto});

  @override
  State<GeraValorVariacao> createState() => _GeraValorVariacaoState();
}

class _GeraValorVariacaoState extends State<GeraValorVariacao> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${widget.texto}: ${widget.valorMoeda.toString()}",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        ),
        const SizedBox(width: 8),
        Container(
          color: widget.valorVariacao >= 0 ? Colors.green : Colors.red,
          child: Text(
            widget.valorVariacao >= 0 ? '+${widget.valorVariacao.toString()}' : widget.valorVariacao.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}