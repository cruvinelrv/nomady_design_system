// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class PixelLogicoPage extends StatelessWidget {
  const PixelLogicoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.75,
      child: const Text('Pixel Logico'),
    );
  }
}

/*
38 pixels logicos por cm
Medida correta segue os principios abaixo:
paddin com 16px, signfica pixels logicos de 16px
device pixel ratio
pixels fisicos
pixels logicos
essas informações são fornecidas pelo fabricante do dispositivo
Media query: medida em pixels logicos
Na altura o flutter vai desconsiderar a área da barrinha que compreende os botoes padrão do dispositivo
MediaQuery.of(context).devicePixelRatio = 3,5
MediaQWidth.of(context).padding.top; (nessa área não pode ter nada, pois pode indicar o recorte da tela de celular)
Observar o parametro flex no Expanded, ele vai aceitar numeros inteiros no atributo flex: 1 ou 2 ou 3
flexible tight é igual Expanded
flexible loose ele considera a altura, e usa apenas o especificado. Se sobrar algo, sobrou.
wrap: experimente trocar o Row por um wrap. Ele vai jogar para a linha de baixo caso não caiba.
Parametros do wrap: spacing e runspacing - espaçamento entre os itens e o espaçamento entre as linhas
Outro parâmetro : WrapAlignment.center - centraliza os itens
Aling: Alignment.center - centraliza os itens
align: Alignment.xy 
O Alingment.center pode ser aplicado no Container.
Widget Positioned: distancia da borda para dentro da tela.
Fazer o aplicativo funcionar tanto em retrato, como em paisagem, é muito importante.
O orientation builder vai tratar isso.
Media query pode ser utilizado para descobrir a orientação.
FittedBox: vai ajustar o tamanho do widget para o tamanho do conteúdo.
Combinar orientation builder com grid view:
GridView.extent = tamanho máximo do item na horizontal
As constraints podemos dizer que são as especificações repassadas do pai para os filhos na árvore de widgets.
Constraints Go Down - as constraintes vão para o filho - ele diz o tamanho máximo do filho
Sizes Go Up - o filho vai dizer qual é o tamanho que ele quer ter dentro das especificações do pai
Parents sets position - o pai vai definir a posição do filho
Na arvores de widgets sempre considerar que vai perder 5 de padding, para que o filho não fique sobrepondo o pai
Ignorar a dimensão minima do filho e considerar a dimensão máxima
Regra de ouro: 
"O Widget não pode ter o tamanho que quiser"
"O widget não sabe e não decide sua posição na tela"
"É impossível saber o tamanho e posição de um widget sem olhar a árvore como um todo"
Colocar a Constrained box dentro de um Center.
ConstrainedBox: vai ajustar o tamanho do widget para o tamanho das especificações da ConstrainedBox.
UnconstrainedBox: vai ajustar o tamanho do widget para o tamanho que o filho quiser. Pode dar overflow se não for bem utilizado.
Limitedbox não vai permitir dimensao infinita.
Sizedbox.expand: vai ajustar o tamanho do widget filhos conforme as especificações do pai do SizedBox.expand
Constraint Tight e Constraint Loose, no Tight tem expansão, na Loose tem redução.
Utilizando o Layout Builder:
recebe o contexto e as contraints.
O layout builder consegue identificar o tamanho da tela do dispositivo.
constraints.maxWidth: tamanho máximo da largura da tela.
constraints.maxHeight: tamanho máximo da altura da tela.
constraints.minwidth: tamanho mínimo da largura da tela.
constraints.minHeight: tamanho mínimo da altura da tela.
No layout buider podemos aplicar em outros widgets.
Através dos micro apps posso criar um aplicativo que define o tamanho da tela e o tipo de dispositivo e direcionar a chamada do aplicativo para o dispositivo correto.
nommady_build_device
fractionally sized box: ele irá fracionar a largura e altura do widget filho conforme o fator widthFactor e heightFactor. largura 0.25 e altura 0.25
fractionally sized box com alignment Alignment.bottomCenter
Colocar um Flexible e dentro dele utilizar o fractionally sized box informando o heightFactor: 0.20, pode ser utilizado para dar espaçamento entre linhas e colunas utilizando porcentagem.
intrinsic height: ele considera o maior widget da row e padroniza os menores widgets com a altura do maior widget.
intrinsic width: ele considera o maior widget da row e padroniza os menores widgets com a largura do maior widget.
Evitar o CrossAxisAlignment.stretch: ele vai ajustar o tamanho do widget filho conforme as especificações do pai e não comparar com a altura ou largura dos irmãos.
Package: autosizetext - ajusta automaticamente o texto para caber em um espaço especifico. AutoSizeGroup é top de linha.
Step granularity (variação de aumento ou diminuição do tamanho do texto): se for 10, vai de 10 em 10 no tamanho da fonte
overflowReplacement: O texto é muito longo, mostra o aviso de texto muito longo.

breakpoint - nome técnico dado a pontos de quebra de layout.
*/








