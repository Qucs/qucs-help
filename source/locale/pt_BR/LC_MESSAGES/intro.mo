��          T               �   
   �   K  �   �  �  �  �    K
  5  i  �  �     o  �  ~  -  ?  �  m  4  Y  �  �!   Background Between 2003, and January 2015, the sourceforge Qucs download statistics show that over one million downloads of the software have been recorded.  As well as extensive circuit simulation capabilities Qucs supports a full range of device modelling features, including non-linear and RF equation-defined device modelling and the use of the Verilog-A hardware description language (HDL) for compact device modelling and macromodelling.  Recent extensions to the software aim to diversify the Qucs modelling facilities by running the Berkeley "Model and Algorithm Prototyping Platform" (MAPP) in parallel with Qucs, using Octave launched from the Qucs GUI. In the future, as the Qucs project evolves, the software will also provide circuit designers with a choice of simulation engine selected from the Qucs built-in code, ngspice and Xyce |copy|. In the period since Qucs was first released it has evolved into an advanced circuit simulation and device modelling tool with a user friendly "graphical user interface" (GUI) for circuit schematic capture, for investigating circuit and device properties from DC to RF and beyond, and for launching other circuit simulation software, including the FreeHDL (VHDL) and Icarus Verilog digital simulators.  Qucs includes built-in code for processing and visualising simulation output data. Qucs also allows users to process post-simulation data with the popular Octave numerical data analysis package. Similarly, circuit performance optimisation is possible using the A SPICE Circuit Optimizer (ASCO) package or Python code linked to Qucs. Qucs is a large software package which takes time to learn. Incidentally, this statement is also true for other GPL circuit simulators. New users must realise that to get the best from the software some effort is required on their part. In particular, one of the best ways to become familiar with Qucs is to learn a few basic user rules and how to apply them.  Once these have been mastered users can move on with confidence to next level of understanding. Eventually, a stage will be reached which allows Qucs to be used productively to model devices and to investigate the performance of circuits.   Qucs is equally easy to use by absolute beginners, like school children learning the physics of electrical circuits consisting of a battery and one or more resistors, as it is by cutting edge engineers working on the modelling of sub-nano sized RF MOS transistors with hundreds of physical parameters. The 'Quite universal circuit simulator' Qucs (pronounced: kju:ks) is an open source circuit simulator developed by a group of engineers, scientists and mathematicians under the GNU General Public License (GPL). Qucs is the brain-child of German Engineers Michael Margraf and Stefan Jahn.  Since its initial public release in 2003 around twenty contributors, from all regions of the world, have invested their expertise and time to support the development of the software. Both binary and source code releases take place at regular intervals. Qucs numbered releases and day-to-day development code snapshots can be downloaded from (`<http://qucs.sourceforge.net>`_).  Versions are available for Linux (Ubuntu and other distributions), Mac OS X |copy| and the Windows |copy| 32 bit operating system. The primary purpose of these notes is to provide Qucs users with a source of reference for the operation and capabilities of the software.  The information provided also indicates any known limitations and, if available, provides details of any work-arounds.  Qucs is a high level scientific/engineering tool who's operation and performance does require users to understand the basic mathematical, scientific and engineering principles underlying the operation of electronic devices and the design and analysis of electronic circuits.   Hence, the individual sections of the Qucs-Help document include material of a technical nature mixed in with details of the software operation.   Most sections introduce a number of worked design and simulation examples. These have been graded to help readers with different levels of understand get the best from the Qucs circuit simulator.   Qucs-Help is a dynamic document which will change with every new release of the Qucs software. At this time, Qucs release 0.0.19, the document is far from complete but given time it will improve. Project-Id-Version: Qucs Help
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-03-07 21:37+0100
PO-Revision-Date: 2017-01-29 21:09+0000
Last-Translator: Guilherme Brondani Torri <guitorri@gmail.com>
Language: pt_BR
Language-Team: Portuguese (Brazil) (http://www.transifex.com/qucs/qucs-help/language/pt_BR/)
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 Plano de fundo Entre 2003 e janeiro de 2015, as estatísticas de download de Qucs no sourceforge mostram que mais de um milhão de downloads do software foram gravados. Além das extensas capacidades de simulação de circuitos, a Qucs suporta uma gama completa de recursos de modelagem de dispositivos, incluindo modelagem de dispositivos não linear e RF definida por equações e o uso da linguagem de descrição de hardware Verilog-A (HDL) para modelagem de dispositivos compactos e macromodelagem. As recentes extensões ao software visam diversificar as instalações de modelagem da Qucs executando a "Plataforma de Prototipagem de Modelos e Algoritmos" de Berkeley (MAPP) em paralelo com a Qucs, usando Octave lançado a partir da GUI da Qucs. No futuro, à medida que o projeto da Qucs evoluir, o software também fornecerá aos projetistas de circuitos uma opção de mecanismo de simulação selecionado a partir do código interno do Qucs, ngspice e Xyce |copy|. No período desde que foi lançado Qucs evoluiu em uma simulação de circuito avançado e ferramenta de modelagem de dispositivos com uma "interface gráfica" (GUI) amigável  para captura de circuito esquemático, para investigar as propriedades do circuito e o dispositivo de DC para RF e além,  e para o lançamento de outro software de simulação do circuito, incluindo os simuladores digitaiss FreeHDL (VHDL) e Icarus Verilog.  Qucs inclui código interno para processamento e visualização de dados de saída da simulação. Qucs também permite o usuários processar dados de pós-simulação com o popular pacote de análise de dados numéricos Octave. Da mesma forma, otimização de desempenho de circuito é possível usando o pacote SPICE Circuit Optimizer (ASCO) ou código Python ligada à Qucs. Qucs é um grande pacote de software que leva tempo para aprender. Aliás, esta afirmação também é válida para outros simuladores de circuitos GPL. Novos usuários devem perceber que para obter o melhor do software algum esforço é necessário de sua parte. Em particular, uma das melhores maneiras de se familiarizar com Qucs é aprender algumas regras básicas do usuário e como aplicá-las. Uma vez que estes foram dominados os usuários podem avançar com confiança para o próximo nível de compreensão. Eventualmente, um estágio será alcançado que permite que Qucs seja usado produtivamente para modelar dispositivos e investigar o desempenho de circuitos. Qucs é igualmente fácil de usar por iniciantes, como as crianças em idade escolar que aprendem a física dos circuitos elétricos que consistem em uma bateria e um ou mais resistores, como é por engenheiros de vanguarda que trabalham na modelagem de sub-nano transistor de RF de tamanho com centenas de parâmetros físicos. O 'Quite universal circuit simulator' Qucs (pronuncia-se: kju:ks) é um simulador de circuito de código aberto desenvolvido por um grupo de engenheiros, cientistas e matemáticos sob licença pública geral GNU (GPL). Qucs foi criado por engenheiros alemães Michael Margraf e Stefan Jahn.  Desde o seu lançamento público inicial em 2003 cerca de vinte colaboradores, de todas as regiões do mundo, investiram seus conhecimentos e tempo para apoiar o desenvolvimento do software. A publicação de executáveis e código fonte ocorrem em intervalos regulares. Diversas versões de Qucs e prévias do código em desenvolvimento podem ser baixados diariamente em ('< http://qucs.sourceforge.net >' _).  Versões estão disponíveis para Linux (Ubuntu e outras distribuições), Mac OS X |copy| e Windows |copy| 32 bits. O objetivo principal dessas notas é fornecer aos usuários de Qucs uma fonte de referência para a operação e os recursos do software. As informações fornecidas também indicam quaisquer limitações conhecidas e, se disponíveis, fornecem detalhes de quaisquer work-arounds. Qucs é uma ferramenta científica/engenharia de alto nível cuja operação e desempenho exigem que os usuários compreendam os princípios matemáticos, científicos e de engenharia básicos subjacentes à operação de dispositivos eletrônicos e à concepção e análise de circuitos eletrônicos. Assim, as seções individuais do documento Qucs-Help incluem material de natureza técnica misturado com detalhes da operação do software. A maioria das seções apresenta um número de desenhos trabalhados e exemplos de simulação. Estes foram classificados para ajudar os leitores com diferentes níveis de compreensão obter o melhor do simulador de circuito Qucs. Qucs-Help é um documento dinâmico que vai mudar com cada nova versão do software Qucs. Neste momento, Qucs versão 0.0.19, o documento está longe de ser concluída, mas dado o tempo vai melhorar. 