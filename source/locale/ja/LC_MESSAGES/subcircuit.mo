Þ    *      l              ¼  R   ½  2     %   C  "   i  L        Ù      ò            4     U     ^     s  A         Ê     ë          &     F  Ù  e  ö   ?  {  6  (   ²  û  Û  	   ×     á             :   !     \     a     f     x          ´  ¤   ½     b  I   ~  6   È     ÿ          3  °  ?  f   ð  8   W  -     7   ¾  x   ö  )   o  %     %   ¿  %   å       *     '   ?  _   g  1   Ç     ù  %     &   :  %   a  Ú    A  b  @  ¤  B   å    (  	   ="  9   G"  3   "     µ"  U   ¸"     #     #      #  =   6#  6   t#     «#  á   ¾#  0    $  W   Ñ$  '   )%  )   Q%     {%     %   A simple example using subcircuits with parameters and equations is provided here. Add AC simulation, from 140Hz to 180Hz, 201 points Add AC voltage source (V1) and ground Add a Cartesian diagram, plot V1.i Add a resistor, inductor, and capacitor,  wire them in series, add two ports Add equation 'ind = L1', Add name = C1, default value = 1 Add name = L1, default value = 1 Add name = R1, default value = 1 C1=10e-6 Create a new project Create a subcircuit: Double click on the 'SUB File=name' tag under the rectangular box Figure 1 - Accesing a subcircuit File > Edit Circuit Symbol Give value of capacitor as 'C1' Give value of inductor as 'ind' Give value of resistor as 'R1' If you do not like the component symbol of a subcircuit, you can draw your own symbol and put the component text at your favourite position. Just make the subcircuit schematic the current and go to the menu: File->Edit Circuit Symbol. If you have not yet drawn a symbol for this circuit. A simple symbol is created automatically. You now can edit this symbol by painting lines and arcs. After finished, save it. Now place it on another schematic, and you have a new symbol. If you select a subcircuit component (click on its symbol in the schematic) you can step into the subcircuit schematic by pressing CTRL-I (of course, this function is also reachable via toolbar and via menu). You can step back by pressing CTRL-H. In Qucs, each schematic containing a subcircuit port is a subcircuit. You can get a subcircuit port by using the toolbar, the components listview (in lumped components) or the menu (Insert->Insert port). After placing all subcircuit ports (two for example) you need to save the schematic (e.g. CTRL-S). By taking a look into the content listview (figure 1) you see that now there is a "2-port" right beside the schematic name (column "Note"). This note marks all documents which are subcircuits. Now change to a schematic where you want to use the subcircuit. Then press on the subcircuit name (content listview). By entering the document area again, you see that you now can place the subcirciut into the main circuit. Do so and complete the schematic. You can now perform a simulation. The result is the same as if all the components of the subcircuit are placed into the circuit directly. Insert subcircuit and define parameters: Just like all other components, subcircuits can have parameters. To create your own parameters, go back to the editor where you edited the subcircuit symbol and double-click on the subcircuit parameter text (SUB1 in the Figure 1). A dialog apperas and you now can fill in parameterswith default values and descriptions. When you are ready, close the dialog and save the subcircuit. In every schematic where the subcircuit is placed, it owns the new parameters which can be edited as in all other components. L1=100e-3 New schematic (for subcircuit) New schematic (for testbench) OK Project Contents > pick and place the above RLC subcircuit R1=1 Save Save Test_RLC.sch Save the subcircuit as RLC.sch Set on the subcircuit symbol Simulate Subcircuits are used to bring more clarity into a schematic. This is very useful in large circuits or in circuits, in which a component block appears several times. Subcircuits with Parameters The parameters of the RLC subcircuit can be changed on the top schematic. The result should be the resonance of the RLC circuit. Working with Subcircuits `back to the top <#top>`__ |image1_EN| Project-Id-Version: Qucs Help
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-01-30 00:03+0100
PO-Revision-Date: 2016-03-19 04:00+0000
Last-Translator: seijirom <seijiro.moriyama@gmail.com>
Language: ja
Language-Team: Japanese (http://www.transifex.com/qucs/qucs-help/language/ja/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 ããã§ã¯ããã©ã¡ã¼ã¿ã¨å¼ããã£ããµããµã¼ã­ããã®ç°¡åãªä¾ãç¤ºãã¾ãã AC simulationã140Hz ãã180Hz, 201ç¹ã§è¿½å ãã AC é»æº (V1) ã¨ã°ã©ã³ããè¿½å ãã Cartesian diagramãè¿½å ã V1.iããã­ãããã æµæãã¤ã³ãã¯ã¿ãã­ã£ãã·ã¿ãè¿½å ããããããç´åã«éç·ããï¼ã¤ã®ãã¼ããå ãã âind = L1âã¨ããå¼ãè¿½å ãã name = C1, default value = 1ãè¿½å  name = L1, default value = 1ãè¿½å  name = R1, default value = 1ãè¿½å  C1=10e-6 æ°ãããã­ã¸ã§ã¯ããä½æãã ãµããµã¼ã­ãããä½æããï¼ ç©å½¢ã®ããã¯ã¹ã®ä¸ã®âSUB File=nameâ ã¨ããã¿ã°ãããã«ã¯ãªãã¯ãã å³1 - ãµããµã¼ã­ããã«ã¢ã¯ã»ã¹ãã File > Edit Circuit Symbol ã­ã£ãã·ã¿ã®å¤ã'C1'ã¨ãã ã¤ã³ãã¯ã¿ã®å¤ã'ind'ã¨ãã æµæã«'R1'ã¨ããå¤ãä¸ãã ãµããµã¼ã­ããã®ã·ã³ãã«ãæ°ã«å¥ããªããã°ãèªåã§å¥½ããªã·ã³ãã«ãæç»ãããã¨ããå¥½ã¿ã®å ´æã«é¨åã®ãã­ã¹ããéç½®ãããã¨ãã§ãã¾ãããã®ããã«ã¯ããã®ãµããµã¼ã­ããã®åè·¯å³ãã«ã¬ã³ãã«ããã¡ãã¥ã¼ããFile->Edit Circuit Symbolã«è¡ã£ã¦ãã ãããããããã¾ã ãã®åè·¯ã®ã·ã³ãã«ãæç»ãã¦ããªãå ´åãç°¡åãªã·ã³ãã«ãèªåçã«ä½ããã¾ããããã§ããã®ã·ã³ãã«ãç·ã¨å¼§ãæç»ãã¦ç·¨éã§ãã¾ããçµãã£ããããããä¿å­ãã¾ããã»ãã®åè·¯å³ã®ä¸ã«ãããéç½®ããã¨ãæ°ããã·ã³ãã«ãã§ãã¦ãããã¨ããããã¾ãã ãµããµã¼ã­ããé¨åãé¸æãï¼åè·¯å³ä¸ã§ãã®ã·ã³ãã«ãã¯ãªãã¯ï¼ãCTRL-Iãæ¼ãã°ï¼ãã¡ãããã®æ©è½ã¯ãã¼ã«ãã¼ã¨ã¡ãã¥ããããã©ãçãã¾ãï¼ããµããµã¼ã­ããã®ä¸­ã«å¥ã£ã¦ãããã¨ãã§ãã¾ããCTRL-Hãæ¼ãã¨ããã¨ã«æ»ãã¾ãã Qucsã§ã¯ããµããµã¼ã­ããã®ãã¼ããä¸­ã«å«ãã§ããåè·¯å³ã¯ãµããµã¼ã­ããã§ãããµããµã¼ã­ããã®ãã¼ããåã£ã¦ããã«ã¯ããã¼ã«ãã¼ãï¼lumped componentsã®ï¼ã³ã³ãã¼ãã³ãã®ãªã¹ããã¥ã¼ã¾ãã¯ã¡ãã¥ã¼ï¼Insert->Insert portï¼ãä½¿ãã¾ãããµããµã¼ã­ããã®ãã¼ãï¼ä¾ãã°2åï¼ããã¹ã¦éç½®ããå¾ãåè·¯å³ ã¯ï¼ä¾ãã°CTRL-Sãä½¿ã£ã¦ï¼ä¿å­ããå¿è¦ãããã¾ããã³ã³ãã³ããªã¹ãã®ãã¥ã¼ï¼å³1ï¼ãããè¦ãã¨ãåè·¯å³åã®æ¨ªï¼"Note"æ¬ï¼ ã«"2-port"ãå¥ã£ã¦ãããã¨ããããã¾ãããã®Noteã¯ããµããµã¼ã­ããã§ãããã¹ã¦ã®ãã­ã¥ã¡ã³ãã«ã¤ãã¾ãããã¦æ¬¡ã«ããµããµã¼ã­ãããä½¿ãããåè·¯å³ã«åãæ¿ãã¾ããããã¦ããµããµã¼ã­ããåãï¼contentã®ãªã¹ããã¥ã¼ã§ï¼æ¼ãã¾ãããã­ã¥ã¡ã³ãã®ã¨ãªã¢ã«ååº¦å¥ãã¨ããµããµã¼ã­ãããã¡ã¤ã³ã®åè·¯å³ã«éç½®ã§ãããã¨ããããã¨æãã¾ãããã®ããã«ãã¦ãåè·¯å³ãå®æãã¾ããããã¾ã§æ¥ãã°ãã·ãã¥ã¬ã¼ã·ã§ã³ãå®è¡ãããã¨ãã§ãã¾ãããµããµã¼ã­ããã®ãã¹ã¦ã®ã³ã³ãã¼ãã³ããç´æ¥åè·¯åã«éç½®ããã¦ããå ´åã¨ãçµæã¯å¨ãåãã§ãã ãµããµã¼ã­ãããæ¿å¥ããã©ã¡ã¼ã¿ãå®ç¾©ããï¼ ã»ãã®ãã¹ã¦ã®é¨åã¨ã¾ã£ããåãããã«ããµããµã¼ã­ããããã©ã¡ã¼ã¿ãæã¤ãã¨ãã§ãã¾ããèªåã ãã®ãã©ã¡ã¼ã¿ãä½æããã«ã¯ããµããµã¼ã­ããã®ã·ã³ãã«ãç·¨éããã¨ãã£ã¿ã«æ»ãããµããµã¼ã­ããã®ãã©ã¡ã¼ã¿ã®ãã­ã¹ãï¼å³1ã§ã¯SUB1ï¼ãããã«ã¯ãªãã¯ãã¦ãã ããããã¤ã¢ã­ã°ãç¾ããã®ã§ããã©ã¡ã¼ã¿ã®ããã©ã«ãå¤ã¨èª¬æãè¨å¥ãããã¨ãã§ãã¾ããçµãã£ããããã¤ã¢ã­ã°ãéãããµããµã¼ã­ãããä¿å­ãã¦ãã ããããµããµã¼ã­ãããéç½®ããããã¹ã¦ã®åè·¯ã§ããµããµã¼ã­ããã¯æ°ãããã©ã¡ã¼ã¿ãæã¤ããã«ãªãããã®ã»ãã®é¨åã¨åæ§ã«ç·¨éå¯è½ã§ãã L1=100e-3 æ°ããåè·¯å³ï¼ãµããµã¼ã­ããã®ããã®ï¼ æ°ããåè·¯å³ï¼ãã¹ããã³ãã¨ãã¦ï¼ OK Project ã®Contentsãããä¸è¨ã®RLCãµããµã¼ã­ãããé¸ã³ãéç½®ãã R1=1 ä¿å­ãã Test_RLC.schãä¿å­ ãµããµã¼ã­ãããRLC.schã¨ããååã§ä¿å­ãã ãµããµã¼ã­ããã·ã³ãã«ã«ä»¥ä¸ãè¨­å®ï¼ ã·ãã¥ã¬ã¼ã ãµããµã¼ã­ããã¯ãåè·¯å³ãããããããããããããã«ä½¿ç¨ããã¾ããããã¯ãå¤§è¦æ¨¡åè·¯ãã³ã³ãã¼ãã³ãã®ãã­ãã¯ãè¤æ°åè¡¨ç¤ºãããåè·¯ã«éå¸¸ã«æç¨ã§ãã ãã©ã¡ã¼ã¿ãæã£ããµããµã¼ã­ãã RLCãµããµã¼ã­ããã®ãã©ã¡ã¼ã¿ã¯ãããã®åè·¯å³ããå¤æ´ã§ãã çµæã¯ãRLCåè·¯ã®å±æ¯ã®ã¯ã  ãµããµã¼ã­ãããä½¿ã£ãä½æ¥­  `back to the top <#top>`__ |image1_EN| 