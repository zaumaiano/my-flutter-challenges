String firstText =
    '''sanza pombo - uíge, angola novembro, 1958\n\nmesmo estando no tempo de cacimbo, tudo parecia muito quente, para aqueles que de fora só observavam, criando alvoroço ao redor da cabana de pau-a-pique, jovens e adultos. para os mais jovens é sempre estranho a ideia de que dentro de um ser, outro ser saia, para os mais velhos, isso não era novidade ou relevante, preocupavam-se apenas com o resultado, eles entendiam custo a pagar pela maturidade.\n\n— que a sorte esteja do nosso lado — disse a mulher em trabalho de parto, com a voz trémula, lágrimas escorrendo dos olhos e a respiração ofegante. tristeza que os demais abortos ou a morte de seus filhos em tenra idade deixara. aquela era uma situação consumida pelo medo da perda.\n\nao lado estava a avó maternal, uma figura não muito simpática, característica transmitida pelo seu olhar. olhava com desdém às parteiras que entravam e saiam, apressadas e angustiadas; era um parto difícil. despreocupada com quem estivesse à volta, a velha, como se não possuísse sentimentos, não demonstrava sinais de entusiasmo ou preocupação.\n\nfora da cabana, as pessoas que esperavam ansiosas, murmuravam, alguns já tinham perdido as esperanças, outros estavam contaminados pelos comportamentos turbulentos que as parteiras apresentavam no vai e vem sempre que saiam e voltavam a entrar. mas, ninguém sabia ao certo como as coisas corriam lá dentro.''';

String secondText =
    '''após seis horas difíceis e de muitas complicações, dor e muito pavor, ouviram gritos de alívio dados pelas parteiras após muito tempo de trabalho angustiante e choros de bebés, que ao conhecerem o mundo, são manchados pela maldade, assim acreditava o povo.\n\no povo que rondava o lado exterior da cabana, ao ouvir os choros dos bebés, estava convencido de que tudo tinha corrido bem, então, todos se mantiveram em silêncio, porque segundo a tradição, aquele momento era para ser contemplado com silêncio dos demais e o cântico da avó maternal.\n\n— deixem-me ver! deixem-me ver! — gritava furiosa, enquanto empurrava com agressividade as parteiras para que liberassem o caminho.\n\nao chegar perto e ver seus netos no colo da sua filha, tomou um enorme susto, como se tivesse observado criaturas com aparência desprezível – demónios – o que não tinha acontecido no momento de tensão enquanto o trabalho de parto era feito.\n\n— ah, isso não! não! não mesmo! — resmungou a velha rabugenta. era notável a insatisfação e desilusão em seu rosto. logo saiu de perto.\n\ne nesse instante, sem entender o porquê daquela atitude, a recém-mãe pôs-se a chorar.''';

String thirdText =
    '''as pessoas na cabana ficaram boquiabertas com o que a avó maternal tinha dito à sua filha ao ver seus netos recém-nascidos. ninguém conseguia entender quais eram as razões da sua atitude.\n\nabanando a cabeça, voltou a caminhar para perto da sua filha, e disse:\n\n— que erro grave foi esse? você teve gémeos, e agora, quem cuidará deles? você? sozinha? eles dão muito trabalho, minha filha! um já é castigo. agora imagina dois?\n\ntodos se mantiveram em silêncio, incluindo os que estavam do lado de fora, ouvindo aquelas palavras que os entristecia.\n\napós tais palavras serem proferidas, um dos bebés parou de choramingar, virou vagarosamente a cabeça em direção à avó maternal e fechou os olhos, num sinal de partida. após essa manifestação, a recém-mãe sentiu que o batimento do bebê parou, e pôs-se a chorar amargamente.\n\no povo marcou a maior árvore da aldeia, ao ver que um bebê se despediu do mundo por menosprezo, com o seguinte texto: palavras que ferem, matam!''';

var storedWords = [
  'rabugenta.angry',
  'resmungou.angry',
  'gritava.angry',
  'furiosa.angry',
  'morte.crying',
  'entristecia.crying',
  'choramingar.crying',
  'partida.crying',
  'amargamente.crying',
  'menosprezo.crying',
  'ferem.crying',
  'matam.crying',
  'choro.crying',
  'desilusão.crying',
  'chorar.crying',
  'alívio.happy',
  'novidade.happy',
  'alvoroço.surprise',
  'estranho.surprise',
  'quente.surprise',
  'ansiosas.surprise',
  'esperanças.surprise',
  'turbulentos.surprise',
  'boquiabertas.surprise',
  'susto.surprise',
  'ofegante.surprise',
  'trémula.sad',
  'lágrimas.sad',
  'tristeza.sad',
  'preocupação.sad',
  'tensão.sad',
  'complicações.sad',
  'dor.sad',
  'pavor.sad',
  'gritos.sad',
  'angustiante.sad',
  'desprezível.sad',
];

dynamic animationPath(String text) {
  var animationFileName = '';

  // ignore: avoid_function_literals_in_foreach_calls
  storedWords.forEach(
    (word) {
      if (text.contains(word.substring(0, word.indexOf('.')))) {
        animationFileName = word.split('.').last.toString();
      }
    },
  );

  if (animationFileName.isNotEmpty) {
    return 'assets/lotties/$animationFileName-etherium.json';
  }

  return '';
}
