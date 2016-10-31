<style>
large {font-size:larger}
alert {color:SteelBlue; font-weight:bold}
ul {
}
.theorem {
  content: "Théorème";
}
.theorem:before {
  display: block;
  content: inherit;
  font-weight: bold;
  font-style: normal;
}
.proposition {
  display: block;
  content: "Proposition";
}
.proposition:before {
  content: inherit;
  font-weight: bold;
  font-style: normal;
}
.definition {
  display:block;
  content: "Définition";
}
.definition:before {
  content: inherit;
  font-weight: bold;
  font-style: normal;
}
.exercice {
  display:block;
  background-color: LightGray;
  content: "Exercice";
}
.exercice:before {
  content: inherit;
  font-weight: bold;
  font-style: normal;
}
</style>

Revisions
========================================================
author: Mahendra Mariadassou
date: 31 Octobre 2016
width: 1280
height: 720

Plan du cours (S1)
========================================================

- Révisions générales
    + Ensembles de nombres
    + Manipulation standards
    + Fonctions usuelles
    + Trigonométrie
- Limite, Continuité et Dérivabilité
- Développements Limités

Objectifs
========================================================

- Connaître quelques propriétés de $\mathbb{N}$, $\mathbb{Q}$ et $\mathbb{R}$
- Savoir faire une récurrence
- Savoir manipuler des puissances (en particulier avec $e^x$ et $\ln{x}$)
- Savoir résoudre des équations et des inéquations
- Connaître les valeurs et les identités remarquables en trigonométrie

Logique (vue avec Jérôme)
========================================================

- Quantificateurs
- Tables de vérités
- Implications et équivalence
- Négation

Mise en jambes
========================================================

- Quelle est la négation de "Elena et Julie sont absentes."? 
- On considère la proposition $(P)$ suivante
$$\forall \varepsilon > 0, \exists \delta > 0 \text{ tel que } \forall x \in ]a-\delta, a+\delta[, |f(x) - f(a)| \leq \varepsilon$$
    + de qui parle $(P)$?
    + comment est-elle modifiée si on inverse les deux premiers quantificateurs ($\forall$ et $\exists$)?
    + quelle est sa négation?
    + que signifie t-elle?
    
Les nombres
========================================================

On rappelle l'existence de d'ensembles de nombres déjà vu dans les classes antérieures:
- $\mathbb{N}$: les entiers naturels (entiers positifs)
- $\mathbb{Z}$: les entiers relatifs (entiers positifs et leurs opposés)
- $\mathbb{Q}$: les rationnels (fractions d'entiers)
- $\mathbb{R}$: les nombres réels (tous ceux qui peuvent apparaître comme la _mesure_ de quelques chose et leurs opposés). La majorité des nombres réels ne sont pas rationnels: $\sqrt{2}, \pi, e$. 
- $\mathbb{C}$: les nombres complexes (très utiles pour factoriser des polynômes ou représenter des courants électromagnétiques)

Le principe de récurrence (classique)
========================================================

<div class = "theorem">
Soit $P(n)$ une propriété dépendant d'un entier $n$. Soit $n_0 \in \mathbb{N}$. Si les deux propriétés suivantes sont vérifiées:
<br>
<ul>
<li> $P(n_0)$ est vraie. [Initialisation] </li>
<li> $\forall n \geq n_0, P(n) \rightarrow P(n+1)$ [Hérédité] </li>
</ul>
<br>
Alors $\forall n \geq n_0, P(n)$ est vraie 
</div>

<br>

<div class = "exercice">
Soit $n$ un entier naturel non nul, trouver une formule close et la démontrer (c'est à dire sans $\dots$) pour 

$S_n = \frac{1}{2!} + \frac{2}{3!} + \dots + \frac{n-1}{n!} + \frac{n}{(n+1)!}$
</div>

Parité, imparité et division euclidienne
========================================================

Tout nombre entier $n$ est soit pair, soit impair. 
- Si $n$ est pair, il existe un **unique** entier $p$ tel que $n = 2p$
- Si $n$ est impair, il existe un **unique** entier $p$ tel que $n = 2p+1$

**Généralisation (division euclidienne)**

Pour tout entier naturel $n$ et tout entier naturel non num $d$, il existe un unique couple d'entiers $(q, r)$ tel que:
$$ n = dq + r \text{ et } 0 \leq r \leq d-1 $$
$n$ est **divisible** par $d$ si et seulement si $r = 0$. 

<div class="exercice">
Montrer que le couple $(q,r)$ existe (par récurrence) et qu'il est unique (par l'absurde)
</div>

Nombres réels
========================================================

<div class="exercice">
<ul>
<li> Justifier l'existence d'un nombre réel dont le carré est égal à 2. À quelle <alert>mesure</alert> correspond-il?</li>
<li>Montrer (par l'absurde) que $\sqrt{2}$ n'est pas rationnel. On pourra commencer par démontrer que $p^2$ est pair si et seulement si $p$ est pair</li>
</div>


**Remarque** 

$\sqrt{2}, \pi, e$ sont des nombres irrationnels. La nécessité de construire $\mathbb{R}$ provient de raisons non-algébriques, pour manipuler des quantités d'intérêt (en géométrie pour $\sqrt{2}$ et $\pi$, en calculs d'intérêts pour $e$) qu'on ne peut pas exprimer comme des fractions d'entiers. 

Majorant, minorant
========================================================

<div class="definition">
Un sous ensemble $A \subset \mathbb{R}$ est dit <alert>majoré</alert> (resp. <alert>minoré</alert>) s'il existe un réel $M$ (resp. $m$) tel que 
$$\forall x \in A, x \leq M \quad \quad \text{(resp. } x \geq m \text{)}$$
On dit alors que $M$ est majorant (resp. $m$ est un minorant) de $A$. 
<br>
Si $A$ est à la fois majorée et minorée, elle est <alert>bornée</alert>. 
</div>

<br> 

<div class="exercice">
<ul>
<li>Écrire avec des quantificateurs:</li>
  <ul>
    <li> $A$ n'est pas majorée (ou minorée) </li>
    <li> $A$ n'est pas bornée </li>
  </ul>
<li> Montrer que $A$ est bornée si et seulement si il existe un réel $M$ tel que $\forall x \in A, |x| \leq M$ </li>
</ul>
</div>

Borne supérieure, inférieure
========================================================

Si $M$ est un majorant de $A$, alors $M+1, M+2, \dots$,  aussi. On peut chercher le *plus petit* majorant. 

<div class="definition">
Soit $A$ une partie <alert>non-vide</alert> de $\mathbb{R}$, alors on dit que:
<br>
<ul>
  <li> $A$ admet une <alert>borne supérieure</alert> lorsqu'il existe un réel $M_0$ tel que </li>
  <ul>
    </li> $M_0$ est un majorant de $A$ </li>
    <li> Tout majorant $M$ de $A$ vérifie $M \geq M_0$ </li>
  </ul>
  <li> $A$ admet une <alert>borne inférieure</alert> lorsqu'il existe un réel $m_0$ tel que </li>
  <ul>
    <li> $m_0$ est un minorant de $A$ </li>
    <li> Tout minorant $m$ de $A$ vérifie $m \geq m_0$ </li>
  </ul>
</ul>
</div>

<div class="proposition">
Si $A$ admet une borne supérieure (resp. inférieure), alors elle est unique. On la note $\sup A$ (resp. $\inf A$) ou encore $\sup_{x \in A} x$ (resp. $\inf_{x \in A} x$)
</div>

Borne supérieure, inférieure [admis]
========================================================

<div class="theorem">
Soit $A$ une partie non-vide de $\mathbb{R}$.
<br>
<ul>
  <li>Si $A$ est <alert>majorée</alert>, elle admet une borne supérieure.</li>
  <li>Si $A$ est <alert>minorée</alert>, elle admet une borne inférieure.</li>
</ul>
</div>

<div class="exercice">
<ul>
  <li>La borne supérieure $\sup A$ est-elle systématiquement un élément de $A$?</li>
  <li>Même question pour $\inf A$?</li>
</ul>
</div>

Maximum, Minimum
========================================================

<div class="definition">
<ul>
  <li> Soit $A$ une partie majorée de $\mathbb{R}$. Si $\sup A$ est un élément de $A$, on dit que $\sup A$ est le <alert>maximum</alert> de $A$, noté $\max A$. </li>
  <li> Soit $A$ une partie minorée de $\mathbb{R}$. Si $\inf A$ est un élément de $A$, on dit que $\inf A$ est le <alert>minimum</alert> de $A$, noté $\min A$.</li>
</div>

**Questions**
- Quelles parties de $\mathbb{R}$ admettent un maximum? un minimum? 

**Réponses partielles**
- Toute partie **finie** de $\mathbb{R}$ admet un maximum et un minimum
- Toute partie *majorée* (resp. *minorée*) de $\mathbb{Z}$ admet un maximum (resp. un minimum). Mais ce n'est plus vrai avec $\mathbb{Q}$. 

Intervalle
========================================================

<div class="definition"> Un <alert>intervalle</alert> est un sous-ensemble $I$ de $\mathbb{R}$ tel que si $x$ et $y$ sont dans $I$ alors tout $t$ compris entre $x$ et $y$ est élément de $I$. </div>

**Remarque** Un intervalle est un sous-ensemble de $\mathbb{R}$ sans "trous", sans discontinuité. 

Il y a 3 types d'intervalles:

- *ouvert*: $]a, b[ = \{ x \in \mathbb{R} \quad \text{tels que} \quad a < x < b \}$ avec $a$ et $b$ dans $\mathbb{R} \cup \{-\infty, +\infty\}$
- *semi-ouvert*: $[a, b[ = \{ x \in \mathbb{R} \quad \text{tels que} \quad a \leq x < b \}$ avec $a \in \mathbb{R}$ et $b \in \mathbb{R} \cup \{+\infty\}$ ou $]a, b]$ avec des contraintes sumilaires.
- *fermés*: $[a, b] = \{ x \in \mathbb{R} \quad \text{tels que} \quad a \leq x \leq b \}$ avec $a$ et $b$ dans $\mathbb{R}$

Un intervalle est dit **non-trivial** lorsqu'il est non vide et non réduit à un point. 

Manipulations standards
========================================================

**À connaitre**
- Développer / Factoriser
- Identités remarquables
- Manipulation de puissances ($e^x$ et $\ln$)
- Trigonométrie

**Interdit**
- Diviser par $0$
- Racine d'un nombre négatif
- logarithme d'un nombre négatif ou nul


Fonctions valeur absolue et partie entière
========================================================

**Valeur absolue**

Soit $x \in \mathbb{R}$, la valeur absolue de $x$, notée $|x|$ est définie par 
$$|x| = \max(x, -x)$$ 

![plot of chunk abs](Revisions-figure/abs-1.png)


***

**Partie Entière**

Soit $x \in \mathbb{R}$, la partie entière de $x$, notée $\lfloor x \rfloor$ est définie par 
$$\lfloor x \rfloor \in \mathbb{Z} \quad \text{et} \quad \lfloor x \rfloor \leq x < \lfloor x \rfloor + 1$$ 

![plot of chunk floor](Revisions-figure/floor-1.png)


Fonctions valeur absolue et partie entière (II)
========================================================

Simplifier les expressions suivantes:
- $\lfloor \pi \rfloor$, 
- $\lfloor 0.99 \rfloor$, $\lfloor 1 \rfloor$, $\lfloor 1.01 \rfloor$
- $\lfloor -0.99 \rfloor$, $\lfloor -1 \rfloor$, $\lfloor -1.01 \rfloor$

Résoudre les équations d'inconnue $x$ suivantes:
- $\lfloor 2x + 1 \rfloor= 3$. 
- $|2x + 1| = 3$

Puissance
========================================================

<div class = "definition">
Pour $a > 0$ et $x \in \mathbb{R}$, on pose $a^x = e^{x \ln a}$
</div>

<br>

Si $x, y$ sont deux rééls et $a, b$ deux réels **strictement positifs**, on a:

<large>

|   |   |   |
|:-:|:-:|:-:|
| $a^0 = 1$ | $a^{x+y} = a^x . a^y$ | $(a)^{-x} = \frac{1}{a^x}$ |
| $a^{x -y} = \frac{a^x}{a^y}$ | $(ab)^{x} = (a)^x . (b)^x$ | $(a^x)^y = a^{x.y}$ |
| $a^1 = a$ | $(a^x)^{\frac{1}{x}} = a$ | $\sqrt[n]{a} = a^{\frac{1}{n}}$ |

</larger>

Puissance (II)
========================================================

**Rapppels**
- Si $a > 0$, $\sqrt[n]{a}$ est l'unique réel **positif** tel que $(\sqrt[n]{a})^n = a$. 
- Pour tout réel $x$, $\sqrt{x^2} = |x|$ (et non pas $x$). La racine carrée est positive. 

Équations
========================================================

Il y a deux grandes types d'équations:
- les polynômiales
- les autres

Pour les polynömiales, il faut savoir résoudre des équations de degré $1$ et $2$ et factoriser à partir de *racines évidentes* pour les celles de degrés supérieures. Pour les autres, il faut utiliser des astuces ad-hoc (mais avec quelques astuces classiques dont le changement de variables). 

En présence de paramètres, il faut parfois faire des **disjonctions de cas** pour éviter de faire des opérations interdites. 

Équations à paramètres
========================================================

Résoudre, en fonction des paramètres $a$ et $b$, les équations suivantes:
- $ax = b$
- $ax +b = bx +a$
- $e^x = a$
- $ax^2 - 2bx + 2 = 0$

Équations polynômiales
========================================================
Résoudre les équations (de $X$) suivantes:
- $X^3 - X^2 + X - 1 = 0$
- $X^4 + X^2 - 1 = 0$. 

Équations non-polynômiales
========================================================
Résoudre les équations (de $x$) suivantes:

- $3x^4 + 5x^2 - 2 = 0$
- $(\ln x)^2 + 3\ln x + 2 = 0$
- $x = \sqrt{x} + 2$
- $e^x - e^{-x} = 2$
- $x^2 - 3x + 4 + \frac{8 - 6x}{x^2 - 2} = 0$

Inégalités
========================================================

<div class="exercice">
Soient $a$ et $b$ deux réels tels que $a \leq 5$ et $b \leq 6$. Que peut-on dire de $2a$, $-3b$, $a+b$, $a - b$, $ab$, $a/b$? Même chose si $b \geq 6$. 
</div>

Inégalités: Règles de manipulation
========================================================

- $a \geq b$ équivaut à $-a \leq -b$ [changement de signe]
- <alert>Si $a$ et $b$ ont même signe</alert>, $a \leq b$ équivaut à $\frac{1}{a} \geq \frac{1}{b}$
- On peut additionner des égalités de <alert>même sens</alert>: si $a \leq b$ et $c \leq d$ alors $a+c \leq b+d$. 
- Si $a, b, c, d$ sont <alert>positifs</alert>, on peut multiplier des inégalités: si $a \leq b$ et $c \leq d$ alors $ac \leq bd$
- Si $f$ est une fonction <alert>croissante</alert> sur un **intervalle** $I \subset \mathbb{R}$ et $a$ et $b$ sont des éléments de $I$ tels que $a \leq b$, alors $f(a) \leq f(b)$. 
- Si $f$ est une fonction <alert>décroissante</alert> sur un **intervalle** $I \subset \mathbb{R}$ et $a$ et $b$ sont des éléments de $I$ tels que $a \leq b$, alors $f(a) \geq f(b)$. 

Inégalité triangulaire et arithmético-géométrique
========================================================

<div class="proposition">
Pour tous réels $x$ et $y$, $|x + y| \leq |x| + |y|.
</div>

Cette égalité vient de la géométrie: dans un triangle, la sommes des longueurs de deux côtés est toujours supérieure ou égale à celle du troisième (avec égalité si et seulement si le triangle est aplati). 

<div class="exercice">
Montrer que pour tous réels $x$ et $y$, $| |x| - |y| | \leq |x - y|$.
</div>

<br>

<div class="exercice">
Montrer que pour tous réels $x$ et $y$, $x^2 + y^2 \geq 2|xy|$. [inégalité arithmético-géométrique, à connaître]
</div>

Inégalités: Mise en oeuvre
========================================================

Résoudre les inégalités suivantes:
- $\ln(3x) \leq \ln(2x)$
- $3.2^{3x-4} \geq 7^8$
- $5\left( \frac{1}{3} \right)^{x} \leq 10^{-10}$
- $\sqrt{x} \geq x + 1$

Trigonométrie: les bases (I)
========================================================

La mesure en *radians* d'un angle $\alpha$ est la longueur d'un arc de cercle de rayon $1$ délimité par cet angle. 

Plus généralement, soit $\mathcal{C}$ est un cercle de centre $O$ et de rayon $R$. On considère deux points $A$ et $B$ de $\mathcal{C}$. La *mesure principale* de l'angle $\hat{AOB}$ est l'unique réel $\alpha$ tel que 
- $\alpha \in [0, 2\pi [$
- la longeur de l'arc de cercle délimité par le secteur angulaire $\hat{AOB}$ est $R\alpha$, et son aire est $\frac{\alpha}{2}R^2$

Trigonométrie: les bases (II)
========================================================

![plot of chunk cercle](Revisions-figure/cercle-1.png)

Trigonométrie: angle orienté
========================================================

<div class="definition">
Du point de vue des longueurs (positives par définition), on a le choix de "tourner" dans un sens ou dans l'autre. Dans de nombreux cas, la question du "sens" de rotation est néanmoins importante. <br>
Par définition, on décide que le sens positif est le sens contraire à celui des aiguilles d'une montre. C'est le <alert>sens trigonométrique</alert>. 
</div>

<br>

Pour faire la différence avec les angles non-orientés, on utilise la notion d'**angle de vecteurs**.
<div class="definition">
Soient $A, B, C$ 3 points du plan, l'angle orienté $\hat{ABC}$ est noté $(\vec{BA}, \vec{BC})$. <br> 
Plus généralement, pour tous vecteurs $\vec{u}$, $\vec{v}$ du plan, on note $(\vec{u}, \vec{v})$ l'angle orienté $(\vec{BA}, \vec{BC})$ pour tous points $A, B, C$ tels que $\vec{u} = \vec{BA}$ et $\vec{v} = \vec{BC}$
</div>

Rotation de centre Ω et d'angle α
========================================================

<div class="definition">
Soit $\mathcal{P}$ le plan usuel orienté. Soit $\Omega$ un point du plan et $\alpha$ un réel. On appelle <alert>rotation de centre $\Omega$ et d'angle $\alpha$</alert> l'application $r : \mathcal{P} \rightarrow \mathcal{P}$ qui à tout point $M \in \mathcal{P}$ associe le point $M' = r(M)$ qui vérifie: 
<br>
<ul>
  <li> $|\Omega M| = |\Omega M'|$ </li>
  <li> $(\vec{\Omega M}, \vec{\Omega M'}) = \alpha$ </li>
</ul>

</div>

Définition géométrique des fonctions trigonométriques
========================================================

![plot of chunk cercle-trigo](Revisions-figure/cercle-trigo-1.png)
