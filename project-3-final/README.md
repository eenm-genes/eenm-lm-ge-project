# Projeto Expressão Gênica de Vitamina D no tratamento de Esclerose Múltipla
# Project Vitamin D Gene Expression in the Treatment of Multiple Sclerosis>

# Descrição Resumida do Projeto

<div align="justify">
A esclerose múltipla (EM) é uma doença autoimune caracterizada pela neurodegeneração e desmielinização, apresentando sintomas como fraqueza nos membros inferiores, espasmos, alterações cognitivas e atrofia muscular. É uma das doenças mais comuns que afetam o sistema nervoso central e acomete cerca de 2.8 milhões de pessoas no mundo. Por depender de alterações genéticas e ambientais para o seu desenvolvimento, estudos indicam que indivíduos com níveis mais baixos de vitamina D têm uma maior incidência de EM. Baseado principalmente no estudo de Spach et al, 2004, busca-se entender a ação da vitamina D como tratamento para condições de EM. Dessa forma, ANÁLISE (alguém fazer). Nesse contexto, encontra-se uma leve relação entre a esclerose múltipla, a vitamina D e os processos biológicos envolvidos. 
</div>

> Descrição resumida do tema do projeto. Sugestão de roteiro (cada item tipicamente tratado em uma ou poucas frases):
>
> Contextualização do projeto
>
> Caracterização do problema
>
> Motivação
>
> Relevância
>
> Trabalhos relacionados
>
> Indicação (bastante resumida) da análise proposta
>
> Indicação (bastante resumida) dos resultados alcançados

# Slides

[Apresentação Parte 3](assets/slides/P3%20-%20%20Expressão%20Gênica%20de%20Vitamina%20D%20no%20tratamento%20de%20Esclerose%20Múltipla.pdf)

# Fundamentação Teórica
<div align="justify">
A esclerose múltipla (EM) é uma doença crônica, progressiva e autoimune que afeta o sistema nervoso central. Caracterizada pela neurodegeneração e desmielinização, resultando no atraso ou impedimento da transmissão dos impulsos nervosos provocado pela destruição da bainha de mielina, que é uma camada de tecido adiposo que envolve o axônio do neurônio e é essencial para a rápida condução dos impulsos [1]. Entre os sintomas apresentados neste acometimento estão: fraqueza no membro inferior, espasticidade, urgência urinária, fadiga, atrofia muscular, espasmo e alterações cognitivas. [2]. É uma das doenças mais comuns que afetam o sistema nervoso central e acomete cerca de 2.8 milhões de pessoas no mundo, tendo cerca de 40 mil no Brasil [3]
Essa doença é multifatorial, ou seja, envolve fatores imunológicos, genéticos e ambientais, entre os quais se destaca a vitamina D. Estudos mostram que indivíduos com níveis mais baixos de vitamina D têm uma maior incidência de EM [4]. Dessa maneira, epidemiologicamente, países de alta latitude, com menor exposição solar e, portanto, menor quantidade de vitamina D na população, apresentam taxas mais elevadas de EM. Além disso, os estudos indicam que mulheres, caucasianos, adultos, residentes do norte europeu têm maior probabilidade de desenvolver a doença [1].
A vitamina D é um hormônio esteroide adquirido pela síntese na pele - obtida através dos raios UV-B que catalisam a produção de colecalciferol (vitamina D3) a partir de um precursor (7-dihidrocolesterol) - ou pela alimentação - através do salmão, frutos do mar, ovo, sardinha e atum por exemplo. Assim, a vitamina D3 é metabolizada no fígado chegando a 25-hidroxivitamina D3 (25(OH)D3), sendo a principal forma circulante e dosável da vitamina, contudo ela é inativa. A forma ativa é obtida através da hidroxilação da 25(OH)D3 no rim que gera a 1,25(OH)2D3 também conhecida como calcitriol [5].
O calcitriol é comumente associado à regulação da homeostase do cálcio, envolvido principalmente na formação óssea. Ademais, os receptores de vitamina D também estão estão presentes em diversas células do sistema imunológico como células dendríticas, monócitos, macrófagos, células NK e linfócitos T e B, estando relacionados com: diminuição das citocinas liberadas por Th1, estímulo da função de células Th2 helper, inibição da liberação de IL-17 pelas células Th17, entre outros [5].
O tratamento com suplementação da vitamina tem, como lógica, a ação dos metabólitos agindo como moduladores parácrinos imunitários, com atividade sobre as células pró-inflamatórias T e produção de citocinas que colaboraram para a patogênese da esclerose múltipla [6]. Assim, existem estudos que mostram possíveis eventos positivos no uso da vitamina D como tratamento ou profilaxia de doenças autoimunes pelo importante papel da regulação dos sistema imunológico [4]. 
</div>

> Fundamentação teórica do problema em saúde/biologia. Cite artigos tomados como base e em que problema.

# Perguntas de Pesquisa
<div align="justify">
RQ1: A administração de vitamina D altera a expressão de quais genes em pacientes com esclerose múltipla em comparação com indivíduos saudáveis?
**Actb, Cxcl10, Fn1 e Nfkbia**
</div>

<div align="justify">
RQ2: A administração de vitamina D está correlacionada a expressão de quais genes relacionados a processos imunológicos em pacientes com esclerose múltipla?
GO:0042981 Regulation of Apoptotic Process, GO:0006955 Immune Response, GO:0050729 Positive Regulation Of Inflammatory Response, GO:0006952 Defense Response.**
</div>

> Perguntas de pesquisa (revisadas e atualizadas) que o projeto responde ou hipóteses que foram avaliadas, enunciadas de maneira objetiva e verificável.
> Apresente aqui como o projeto ajudou a responder as perguntas de pesquisa.

# Metodologia
<div align="justify">
A metodologia seguiu um pipeline no qual foi realizada a seleção de bases de expressão gênica que prosseguiu para a classificação das amostras; classificadas as amostras, foi feito o cálculo de log fold change para a análise da expressão; os genes com expressão diferencial relevantes foram consultados na base do string para geração do grafo. Mantendo o fluxo do pipeline, houve o enriquecimento das vias dos processos imunológicos, a criação do grafo enriquecido e a exportação dos deste para análise na ferramenta cystoscape. Nessa última ferramenta, foi realizada a análise de centralidade e detecção de comunidades, usando as métricas como Betweenness e o Leiden Cluster. 

A utilização da técnica teve por objetivo saber quais foram os genes mais centrais que estão envolvidos na administração da vitamina D em pacientes com escloresose múltipla, comparando com indivíduos saudáveis e quais comunidades esses genes fazem parte. 
</div>

> Proposta de metodologia incluindo especificação de quais as técnicas/métricas de Ciência de Redes que estão sendo usadas no projeto,
> tais como: detecção de comunidades, análise de centralidade, predição de links, ou a combinação de uma ou mais técnicas. Descreva o que perguntas pretende endereçar com a técnica escolhida.

![Metodologia](/project-3-final/assets/images/METODOLOGIA.png)

## Bases de Dados e Evolução

Base de Dados | Resumo descritivo
----- | -----
[GSE842](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE842) | Expressão Gênica da Administração de Vitamina D em Pacientes com Esclerose Múltipla  
[GO:1905168]() | Positive Regulation of Double Strand Break Repair via Homologous Recombination  
[GO:0045663]() | Positive Regulation of Myoblast Differentiation  
[GO:1902459]() | Positive Regulation of Stem Cell Population Maintenance  
[GO:0045582]() | Positive Regulation of T Cell Differentiation  
[GO:0071896]() | Protein Localization to Adherens Junction  
[GO:0042981]() | Regulation of Apoptotic Process  
[GO:2000779]() | Regulation of Double Strand Break Repair  
[GO:0070316]() | Regulation of G0 to G1 Transition  
[GO:2000045]() | Regulation of G1:S Transition of Mitotic Cell Cycle  
[GO:0030071]() | Regulation of Mitotic Metaphase Anaphase Transition  
[GO:0034333]() | Adherens Junction Assembly  
[GO:0051621]() | Regulation of Norepinephrine Uptake  
[GO:2000819]() | Regulation of Nucleotide Excision Repair  
[GO:1903076]() | Regulation of Protein Localization to Plasma Membrane  
[GO:1900242]() | Regulation of Synaptic Vesicle Endocytosis  
[GO:0150111]() | Regulation of Transepithelial Transport  
[GO:0007409]() | Axonogenesis  
[GO:0048870]() | Cell Motility  
[GO:0045596]() | Negative Regulation of Cell Differentiation  
[GO:0045597]() | Positive Regulation of Cell Differentiation  
[GO:0008284]() | Positive Regulation of Cell Population Proliferation  
[GO:0045176]() | Apical Protein Localization
[GO:0045893]() | Positive Regulation of DNA-templated Transcription   
[GO:0051726]() | Regulation of Cell Cycle  
[GO:0034769]() | Basement Membrane Disassembly  
[GO:0050729]() | Positive Regulation of Inflammatory Response  
[GO:0045453]() | Bone Resorption  
[GO:0016485]() | Protein Processing  
[GO:0097067]() | Cellular Response to Thyroid Hormone Stimulus  
[GO:0030574]() | Collagen Catabolic Process  
[GO:0006955]() | Immune Response  
[GO:0002250]() | Adaptive Immune Response  
[GO:0071257]() | Cellular Response to Electrical Stimulus  
[GO:2001235]() | Positive Regulation of Apoptotic Signaling Pathway  
[GO:0019886]() | Antigen Processing and Presentation of Exogenous Peptide Antigen via MHC Class II  
[GO:0051603]() | Proteolysis Involved in Protein Catabolic Process  
[GO:2001259]() | Positive Regulation of Cation Channel Activity  
[GO:0006508]() | Proteolysis  
[GO:0010447]() | Response to Acidic pH  
[GO:0006952]() | Defense Response  
[GO:0006338]() | Chromatin Remodeling  
[GO:0007163]() | Establishment or Maintenance of Cell Polarity  
[GO:0001738]() | Morphogenesis of a Polarized Epithelium  
[GO:1904030]() | Negative Regulation of Cyclin Dependent Protein Kinase Activity  
[GO:0032091]() | Negative Regulation of Protein Binding  
[GO:2000781]() | Positive Regulation of Double Strand Break Repair  
[PMID:23356351]() | Can we prevent or treat multiple sclerosis by individualised vitamin D supply
[PMID:23776780]() | Vitamin D and multiple sclerosis Potential pathophysiological role and clinical implications
[PMID:23840333]() | Vitamin D3 receptor VDR gene rs2228570 Fok1 and rs731236 Taq1 variants are not associated with the risk for multiple sclerosis results of a new study and a meta analysis
[PMID:24800040]() | Vitamin D and multiple sclerosis
[PMID:26765264]() | The multiple sclerosis susceptibility genes TAGAP and IL2RA are regulated by vitamin D in CD4 T cells
[PMID:27207486]() | Cryopreserved vitamin D3 tolerogenic dendritic cells pulsed with autoantigens as a potential therapy for multiple sclerosis patients
[PMID:27209163]() | Iranian consensus on use of vitamin D in patients with multiple sclerosis
[PMID:29243029]() | Vitamin D and Multiple Sclerosis A Comprehensive Review
[PMID:11115787]() | Vitamin D a natural inhibitor of multiple sclerosis
[PMID:29593729]() | Genomic Effects of the Vitamin D Receptor Potentially the Link between Vitamin D Immune Cells and Multiple Sclerosis
[PMID:30459766]() | Latitude Vitamin D Melatonin and Gut Microbiota Act in Concert to Initiate Multiple Sclerosis A New Mechanistic Pathway
[PMID:30941131]() | The Association Between Vitamin D and Multiple Sclerosis Risk 1 25 OH 2D3 Induces Super Enhancers Bound by VDR
[PMID:31030237]() | Vitamin D increases glucocorticoid efficacy via inhibition of mTORC1 in experimental models of multiple sclerosis
[PMID:31293564]() | MAP7 and MUCL1 Are Biomarkers of Vitamin D3 Induced Tolerogenic Dendritic Cells in Multiple Sclerosis Patients
[PMID:31686407]() | An Update on Vitamin D and Disease Activity in Multiple Sclerosis
[PMID:32243867]() | Serum levels of matrix metalloproteinase 2 9 and vitamin D in patients with multiple sclerosis with or without herpesvirus 6 seropositivity
[PMID:32251441]() | The impact of vitamin D3 intake on inflammatory markers in multiple sclerosis patients and their first degree relatives
[PMID:32354174]() | Vitamin D as a Potential Therapy for Multiple Sclerosis Where Are We
[PMID:18655192]() | Vitamin D and multiple sclerosis
[PMID:32373353]() | Vitamin D and Demyelinating Diseases Neuromyelitis Optica (NMO) and Multiple Sclerosis (MS)
[PMID:32435244]() | A Brief Review of the Effects of Vitamin D on Multiple Sclerosis
[PMID:32528735]() | Multiple Sclerosis Lipids Lymphocytes and Vitamin D
[PMID:32542086]() | Klotho and vitamin D in multiple sclerosis an Italian study
[PMID:33329593]() | Vitamin DCD46 Crosstalk in Human T Cells in Multiple Sclerosis
[PMID:34163021]() | Expression of CYP24A1 and other multiple sclerosis risk genes in peripheral blood indicates response to vitamin D in homeostatic and inflammatory conditions
[PMID:34744990]() | Vitamin D in Multiple Sclerosis Lessons From Animal Studies
[PMID:34944573]() | Combined Therapy of Vitamin D3 Tolerogenic Dendritic Cells and Interferon beta in a Preclinical Model of Multiple Sclerosis
[PMID:35142671]() | Is there a window of opportunity for the therapeutic use of vitamin D in multiple sclerosis
[PMID:35651353]() | Vitamin D as a Risk Factor for Multiple Sclerosis Immunoregulatory or Neuroprotective
[PMID:35813882]() | Full spectrum of vitamin D immunomodulation in multiple sclerosis mechanisms and therapeutic implications
[PMID:36555896]() | Vitamin D Supplementation Practices among Multiple Sclerosis Patients and Professionals
[PMID:36644209]() | Expression of risk genes linked to vitamin D receptor super enhancer regions and their association with phenotype severity in multiple sclerosis
[PMID:36688131]() | Therapeutic effect of combination vitamin D3 and siponimod on remyelination and modulate microglia activation in cuprizone mouse model of multiple sclerosis
[PMID:36899820]() | COVID 19 and Multiple Sclerosis A Complex Relationship Possibly Aggravated by Low Vitamin D Levels
[PMID:36972442]() | Melatonin and vitamin D two sides of the same coin better to land on its edge to improve multiple sclerosis
[PMID:19197344]() | Expression of the multiple sclerosis associated MHC class II Allele HLA DRB1 1501 is regulated by vitamin D
[PMID:37447304]() | The Role of Vitamin D in Neuroprotection in Multiple Sclerosis An Update
[PMID:37509448]() | Association of Blood Levels of Vitamin D and Its Binding Protein with Clinical Phenotypes of Multiple Sclerosis
[PMID:37814621]() | Vitamin D deficiency in relation with the systemic and central inflammation during multiple sclerosis
[PMID:37833895]() | Changes in the Expression of TGF Beta Regulatory Pathway Genes Induced by Vitamin D in Patients with Relapsing Remitting Multiple Sclerosis
[PMID:19399382]() | Clinical implications of a possible role of vitamin D in multiple sclerosis
[PMID:21566791]() | A Comparative Study of 25 OH Vitamin D Serum Levels in Patients with Multiple Sclerosis and Control Group in Isfahan Iran
[PMID:22085500]() | Vitamin D multiple sclerosis and inflammatory bowel disease
[PMID:22547098]() | Vitamin D and multiple sclerosis epidemiology immunology and genetics
[PMID:22896638]() | The Ifng gene is essential for Vdr gene expression and vitamin D3 mediated reduction of the pathogenic T cell burden in the central nervous system in experimental autoimmune encephalomyelitis a multiple sclerosis model

<div align="justify">
Utilizando uma base de dados específica, foram identificadas cinco comunidades de proteínas, sendo Actb, Ctss, Cxcl10, Fn1 e Ifitm3 as proteínas centrais. Embora os dados disponíveis não tenham permitido estabelecer uma relação direta entre a vitamina D e o tratamento da Esclerose Múltipla, a pesquisa continuará sendo desenvolvida e a base de dados será enriquecida na esperança de encontrar uma relação direta ou indireta (de segunda ordem ou mais).

Para realizar a análise vetorial dos dados, foi necessário consolidar cada amostra, originalmente armazenada em arquivos CSV separados, em um único arquivo. Esses arquivos estavam separados por cobaia e continham duas colunas: uma com o nome da proteína e outra com o valor correspondente. Para unificar os dados, cada um desses arquivos foi convertido em uma coluna. Como grande parte das análises vetoriais utiliza métricas de distância, foi calculada a média por grupo: uma coluna representava a média dos valores para todas as cobaias tratadas com placebo, outra coluna representava a média do grupo de controle, e a última coluna representava a média do grupo tratado. Essa abordagem permitiu analisar a variância intra-grupo de cada proteína, reduzindo a aleatoriedade e tornando a medida mais consistente. Devido à variação na quantidade de expressão de cada proteína, foi necessário normalizá-las em relação à sua média e desvio padrão, possibilitando a comparação da variância de cada proteína entre os grupos, independentemente da magnitude de expressão.

Finalmente, para reduzir a quantidade de proteínas analisadas, foram filtradas aquelas que apresentaram maior diferença de expressão, totalizando 89 proteínas. A utilização desta base de dados foi crucial para obter os resultados iniciais, permitindo a identificação de clusters de proteínas com padrões semelhantes e a descoberta de comunidades específicas. Com o contínuo trabalho de enriquecimento da base de dados, espera-se conectar essas proteínas com determinados pathways e identificar relações mais implícitas entre a vitamina D e o tratamento da Esclerose Múltipla. Isso poderá proporcionar uma compreensão mais profunda dos mecanismos subjacentes e potencialmente revelar novas direções para futuras pesquisas.
</div>

> Faça uma descrição sobre o que concluiu sobre esta base. Sugere-se que respondam perguntas ou forneçam informações indicadas a seguir:
> * O que descobriu sobre essa base?
> * Quais as transformações e tratamentos (e.g., dados faltantes e limpeza) feitos?

## Modelo Lógico

![Modelo Lógico](/project-3-final/assets/images/MODELO_LOGICO.png)

## Integração entre Bases
<div align="justify">  
A integração de múltiplas bases de dados para o estudo da expressão gênica da vitamina D no tratamento da esclerose múltipla envolveu vários desafios. As bases de dados GSE842, Gene Ontology (GO) e PubMed (PMID) variavam em formato e detalhamento, necessitando padronização de formatos e nomenclaturas para garantir consistência.

Utilizando a base PMID, foram selecionados genesets diretamente relacionados à esclerose múltipla, resultando em 45 genesets de um total de 3373 referenciados em estudos específicos. Os genes identificados nas bases GSE842, GO e PMID foram integrados em um conjunto único, garantindo que todos os genes relevantes estivessem presentes para análises posteriores. Os 46 processos biológicos associados aos genes expressos foram integrados em uma estrutura unificada, permitindo uma análise abrangente dos pathways envolvidos.

Os 45 genesets relacionados à esclerose múltipla foram combinados com os genes expressos e processos biológicos, formando uma rede integrada de informação. A rede integrada resultante incluiu um volume considerável de dados. Para lidar com isso, foi desenvolvido um modelo lógico homogêneo que facilitou a análise das interações entre genes, proteínas e processos biológicos. Este modelo foi ajustado para suportar a análise de variações de expressão gênica, identificação de clusters de proteínas e descoberta de comunidades específicas.

A integração e normalização das bases de dados forneceram uma visão coesa sobre os efeitos potenciais da vitamina D no tratamento da esclerose múltipla, permitindo uma análise mais robusta e direcionada, com a expectativa de futuras descobertas significativas.
</div>

## Análises Realizadas
<div align="justify">  
</div>

> Apresente aqui uma análise dos dados.
> Utilize gráficos que descrevam os aspectos principais da base que são relevantes para as perguntas de pesquisa consideradas.
>
> Nesta seção ou na seção de Resultados podem aparecer destaques de código como indicado a seguir. Note que foi usada uma técnica de highlight de código, que envolve colocar o nome da linguagem na abertura de um trecho com `~~~`, tal como `~~~python`.
>
> Os destaques de código devem ser trechos pequenos de poucas linhas, que estejam diretamente ligados a alguma explicação. Não utilize trechos extensos de código. Se algum código funcionar online (tal como um Jupyter Notebook), aqui pode haver links. No caso do Jupyter, preferencialmente para o Binder abrindo diretamente o notebook em questão.


## Evolução do Projeto
> Relatório de evolução, descrevendo as evoluções na modelagem do projeto, dificuldades enfrentadas, mudanças de rumo, melhorias e lições aprendidas. Referências aos diagramas, modelos e recortes de mudanças são bem-vindos.
> Podem ser apresentados destaques na evolução do modelo lógico. O modelo inicial e intermediários (quando relevantes) e explicação de refinamentos, mudanças ou evolução do projeto que fundamentaram as decisões.
> Relatar o processo para se alcançar os resultados é tão importante quanto os resultados.


# Ferramentas

### [Neo4j](https://neo4j.com/)

- **Armazenamento de Dados de Expressão Gênica**: Perfis de expressão gênica.
- **Armazenamento de vias**: Conjunto de interações entre genes e vias.

### [Cytoscape](https://cytoscape.org/)
- **Identificação de Hubs Genéticos**: Nós mais conectados na rede.
- **Centralidade e Expressão Gênica**: Importância dos nós com base em medidas de centralidade e expressão gênica.

# Resultados
<div align="justify">
Com base nas redes complexas criadas a partir do estudo de Spach et al (2004) e com o enriquecimento de outras bases, observa-se principalmente a comunidade de 4 genes: Actb, Cxcl10, Fn1 e Nfkbia, indicando que a administração de vitamina D altera a expressão desses genes em pacientes com esclerose múltipla em comparação com indivíduos saudáveis. Como demonstrado nas entregas intermediárias do projeto, o gene Actb codifica a actina envolvida na motilidade, estrutura e comunicação intercelular, além de estar envolvida na regulação da dinâmica da actina para a formação de copo fagocitário, importante para as células fagocitárias do sistema imune como macrófagos e células dendríticas [9]. O gene Cxcl10 codifica uma quimiocina relacionada com a estimulação de monócitos, natural killer, migração de células T e modulação da expressão de moléculas de adesão [10]. O gene Fn1 codifica a fibronectina que está envolvida na adesão celular, migração celular, sistema imunológico, mineralização dos osteoblastos e inibe a ativação de monócitos [11]. O gene Nfkbia codifica um membro da família de inibidores NF-kappa-B, que contém múltiplos domínios de repetição ankrin, de maneira que a proteína codificada interage com dímeros REL para inibir os complexos NF-kappa-B/REL que estão envolvidos nas respostas inflamatórias [12].
Infelizmente, não foi encontrada relação direta entre esses genes, a esclerose múltipla e o tratamento com vitamina D, por meio dos dados utilizados e dos artigos. Entretanto, consegue-se fazer uma relação desses genes com processos biológicos que estão conectados com processos imunológicos, considerando que a base da EM é autoimune, ou seja, as próprias células do sistema imunológico atacam o sistema nervoso central provocando a desmielinazação e seus sintomas [1]. Os principais processos biológicos encontrados foram: Regulation Of Apoptotic Process (GO:0042981), Defense response (GO:0006952); Immune Response (GO:0006955) e Positive Regulation Of Inflammatory Response (GO:0050729). 
O gene Cxcl10 está envolvido nos processos de regulação da apoptose e resposta defensiva, sendo uma quimiocina que exerce um potente efeito quimiotático nos linfócitos T ativados, principalmente durante infecções virais [13], que podem ser uma das alterações ambientais que permeiam a EM. Nesse sentido, o Cxcl10 desencadeia apoptose em vários modelos celulares, como os neurônios em conjunto com outras citocinas liberadas no processo de inflamação, como IL 2 e IFNα conforme foi demonstrado por Sihdamed et al (2012). Com isso, percebe-se que o resultado de aumento da expressão diferencial do gene no estudo de esclerose múltipla e vitamina D indica um resultado satisfatório de pesquisa, de forma que sua expressão está envolvida na apoptose das células T que atacam as bainhas de mielina, assim, por ter sua apoptose aumentada, ocorre a diminuição da desmielinização e consequentemente dos sintomas e da progressão da doença. 
O gene Kfkbia está relacionado com a regulação positiva da resposta inflamatória, pois ele é o inibidor de NF-κB que impulsiona a expressão gênica inflamatória [14]. Quando ativados, os fatores de transcrição NF-κB aumentam a expressão de genes importantes para o crescimento celular, inibição da apoptose, metástase e angiogênese [15]. Dessa maneira, o NFkbia atua impedindo a ação de NF-kb auxiliando nos processos de apoptose e da resposta inflamatória como também foi visto nos outros processos. Os genes Actb e fn1 estão envolvidos no processo de regulação da apoptose, porém não foi encontrados estudos que envolvam a relação desses parâmetros.
Além disso, pelos grafos obtidos no projeto, percebe-se que todos esses genes e processos biológicos estão relacionados com a resposta imunológica pela relação com interleucinas - como IL18, IlL33, IL4, IL6 - fatores de necrose tumoral e receptores toll-like. Sendo assim, os resultados se mostram promissores para a relação entre a esclerose múltipla e a vitamina D, mas não foi ótimo pelo resultado pela falta de referências bibliográficas acerca do tema, enfatizando a necessidade de mais ensaios, experimentos e pesquisas que consigam ligar esses parâmetros diretamente. 
</div>

> Esta pode ser uma seção independente ou combinada com a seção de Análises Realizadas.
>
> Descrição dos resultados mais importantes obtidos.
>
> Apresente os resultados da forma mais rica possível, com gráficos e tabelas. Mesmo que o seu código rode online em um notebook, copie para esta parte a figura estática. A referência a código e links para execução online pode ser feita aqui ou na seção de Análises Realizadas (o que for mais pertinente).

# Discussão

> Discussão dos resultados. Relacionar os resultados com as perguntas de pesquisa ou hipóteses avaliadas.
>
> A discussão dos resultados também pode ser feita opcionalmente na seção de Resultados, na medida em que os resultados são apresentados. Aspectos importantes a serem discutidos: Por que seu modelo alcançou (ou não) um bom resultado? É possível tirar conclusões dos resultados? Quais? Há indicações de direções para estudo? São necessários trabalhos mais profundos?

# Conclusão

> Destacar as principais conclusões obtidas no desenvolvimento do projeto.
>
> Destacar os principais desafios enfrentados.
>
> Principais lições aprendidas.

# Trabalhos Futuros

> O que poderia ser melhorado se houvesse mais tempo?
<div align="justify">
Explorar outras vias biológicas, inclusive de outras doenças para verificar se existem possíveis relações dessas com os genes analisados tal que possam evidenciar alguma relação direta do tratamento da esclerose múltipla com a vitamina D; essa exploração tem como motivação a identificação dos genes centrais estudados neste projeto os quais são comuns também nessas doenças, entretanto não foram encontradas nas pesquisas exploratórias nenhum pathway específico que faça menção da esclerose múltipla e o tratamento dela com a vitamina D; consequentemente o resultado foi demonstrado usando as vias do processo biológico que apontavam para o sistema imunológico. Além disso, o resultado final, apesar de satisfatório, não foi ótimo por não haver referências bibliográficas acerca do assunto em estudo, isso mostra a necessidade de se fazer mais pesquisas como também ensaios e experimentos que possam ligá-los diretamente aos parâmetros. Para essa finalidade serão usados todos os recursos e ferramentas utilizadas neste projeto e outros que se façam necessários. 
<br/> </br>
Avaliar outros genes dentre os mais expressos, se alguns deles possam dar evidências de uma possível relação direta da esclerose múltipla e o tratamento com a vitamina D, pelo fato de não ter sido encontrada relação direta entre os genes mais centrais analisados. Essa avaliação tem como motivação a inclusão do gene Nfkbia que não tinha sido observada nas atividades anteriores, porém foi verificada posteriomente a sua importância neste estudo. Pesquisas iniciais em caráter exploratório apontaram relacionamentos de pathways do Kegg com os genes centrais analisados, bem como a observação desses mesmos genes com alguns pathways do Reactome, no entanto é necessário fazer análises para apontar os resultados dessas buscas. Nestas pesquisas exploratórias foram utilizadas como busca a lista dos genes principais desse projeto (Actb, CxCl10, NfKbia, Ctss e Ifitm3), sendo que os dois últimos foram dissolvidos posteriormente. A base de Dados do DAVI retornou 17 sugetões ligadas ao Kegg e 5 sugestões ligadas ao Reactome, mas foi verificada somente as vias de sinalização do Kegg, tendo um prévio agrupamento em planilha e importado diretamente no Cytoscape no qual foram analisadas apenas as métricas relativas à centralidade e clusterização; dentre as vias observadas, destacam-se a Apoptosis que interage com o gene Actb, as vias RIG-I-like receptor signaling pathway, IL-17 signaling pathway e Toll-like receptor signaling pathway, ambos conectados aos genes CxCl10 e NfKbia e finalmente o Focal adhesion que conecta-se ao Fn1. Apesar dessas observações terem relacionamentos com os genes estudados, nenhum resultado foi definido e nenhuma interpretação foi feita dessas sinalizações que chegasse a um entendimento, tanto do ponto de vista computacional quanto do ponto de vista biológico dentro do prazo estipulado no projeto o que contribuiu para tornar essa análise em atividade para o futuro.     
<br/> </br>
Realizar predições de novas conexões na rede tem como motivação explorar esse tipo de análise no futuro com a finalidade de avaliar possíveis conexões novas na rede gerada neste projeto, pelo fato da rede resultar em expressão gênica, relacionada às vias do processo biológico que apontavam para o sistema imunológico e pela inexistência um pathway específico de esclerose múltipla e tratamento com vitamina D.
<br/> </br>
</div>

> Quais possíveis desdobramentos este projeto pode ter?
<div align="justify">
Os possíveis desdobramentos que este projeto pode ter é colocar em prática o que foi pesquisado e analisado, incluindo os trabalhos futuros, transformando-o em um material de pesquisa de modo que a ideia que se deseja alcançar resulte numa obra que seja compreendida por todos.
</div>


# Referências Bibliográficas
<div align="justify">

1. **NOGUEIRA, Raquel Araujo et al**. The vitamin D and immunological performance: a perspective within multiple sclerosis. 2021. Disponível em: [https://rsdjournal.org/index.php/rsd/article/view/22575/20285]. Acesso em: 21 mai. 2024.

2. **MATIAS, Francisco Gil Gonçalves**. Vitamina D e esclerose múltipla. 2009. Dissertação de Mestrado. Disponível em: [https://estudogeral.uc.pt/handle/10316/27526?locale=pt]. Acesso em: 21 mai. 2024.

3. **Biblioteca Mundial em Saúde**. Disponível em: [https://bvsms.saude.gov.br/eu-me-conecto-nos-nos-conectamos-30-5-dia-mundial-da-esclerose-multipla/]. Acesso em: 01 jun. 2024.

4. **PEREIRA, Ana Rita Rodrigues**. Relatório de Estágio e Monografia intitulada “Mecanismos Moduladores da Vitamina D na Esclerose Múltipla. 2020. Dissertação de Mestrado. Disponível em: [https://estudogeral.uc.pt/handle/10316/92941]. Acesso em: 21 mai. 2024.

5. **MARQUES, Cláudia Diniz Lopes et al**. A importância dos níveis de vitamina D nas doenças autoimunes. Revista Brasileira de Reumatologia, v. 50, p. 67-80, 2010. Disponível em: [https://www.scielo.br/j/rbr/a/5BcvSsQGhJPXXD8Q9Pzff8H/?lang=pt#]. Acesso em: 21 mai. 2024.

6. **PEREIRA, Isabel Teresa Pereira Barros da Cunha**. Importância da Vitamina D na esclerose múltipla: Monografia: The role of Vitamin D in multiple sclerosis. 2009. Disponível em: [https://repositorio-aberto.up.pt/handle/10216/54674]. Acesso em: 21 mai. 2024.

7. Naive, EAE placebo-treated and EAE 1,25(OH)2D3-treated groups. Disponível em: [https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE842].

8. **Karen M. Spach et al.** Gene expression analysis suggests that 1,25-dihydroxyvitamin D3 reverses experimental autoimmune encephalomyelitis by stimulating inflammatory cell apoptosis, 2004. Disponível em: [https://journals.physiology.org/doi/full/10.1152/physiolgenomics.00003.2004]. Acesso em: 21 mai. 2024.

9. **ACTB Gene** - Actin Beta. Disponível em: [https://www.genecards.org/cgi-bin/carddisp.pl?gene=ACTB]. Acesso em: 21 mai. 2024.

10. **CXCL10 Gene** - C-X-C Motif Chemokine Ligand 10. Disponível em: [https://www.genecards.org/cgi-bin/carddisp.pl?gene=CXCL10]. Acesso em: 21 mai. 2024.

11. **FN1 Gene** - Fibronectin 1. Disponível em: [https://www.genecards.org/cgi-bin/carddisp.pl?gene=FN1]. Acesso em: 21 mai. 2024.

12. **NFKBIA Gene** - NFKB Inhibitor. Disponível em: [https://www.genecards.org/cgi-bin/carddisp.pl?gene=NFKBIA]. Acesso em: 05 jun 2024.

13. **Sidahmed, Abubaker M.E. et al.** CXCL10 contributes to p38-mediated apoptosis in primary T lymphocytes in vitro. Disponível em:  [https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7129786/]. Acesso em: 08 jun 2024.

14. **Ali, Salman et al.** Functional Genetic Variation in NFKBIA and Susceptibility to Childhood Asthma, Bronchiolitis, and Bronchopulmonary Dysplasia. Disponível em: [https://journals.aai.org/jimmunol/article/190/8/3949/39904/Functional-Genetic-Variation-in-NFKBIA-and]. Acesso em: 09 jun 2024.

15. **Lowe, Julie M. et al.** Nuclear Factor-κB (NF-κB) Is a Novel Positive Transcriptional Regulator of the Oncogenic Wip1 Phosphatase. Disponível em: [https://www.sciencedirect.com/science/article/pii/S0021925819375039]. Acesso em: 09 jun 2024.
</div>
