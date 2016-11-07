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
  background-color: LightGreen;
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

Révisions
========================================================
author: Mahendra Mariadassou
date: 31 Octobre 2016
width: 1280
height: 720




Plan du cours (S1)
========================================================

- Révisions générales
    + Ensembles de nombres
    + Manipulations standards
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

La factorielle
========================================================
<div class="definition">
La <alert>factorielle</alert> d'un entier naturel $n$, noté $n!$, est le produit des nombres entiers strictement positifs inférieurs ou égaux à $n$. En d'autre termes,
$n! = 1 \times 2 \times \dots \times (n-1) \times n$
<br>
Par convention, $0! = 1$. 
</div>
<br>
**Remarque** On note que $n! = n \times (n-1)!$. 

On donne ici les valeurs de $n!$ pour de faibles valeurs de $n$


|  n| factorielle|
|--:|-----------:|
|  1|           1|
|  2|           2|
|  3|           6|
|  4|          24|
|  5|         120|


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
    <li> Tout minorant $m$ de $A$ vérifie $m \leq m_0$ </li>
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

Propriété fondamentale de sinus et cosinus
========================================================

* Soit $\theta \in \mathbb{R}$, on a $\cos^2 \theta + \sin^2 \theta = 1$
* Réciproquement, pour tout couple $(\alpha, \beta)$ de nombres réels tels que $\alpha^2 + \beta^2 = 1$, il existe un réel $\theta$ tel que $\alpha = \cos(\theta)$ et $\beta = \sin(\theta)$. 

Les deux propriétés traduisent le fait que le point $M$ de coordonnées $(\alpha, \beta)$ est sur le cercle trignométrique (celui de centre $O = (0, 0)$ et de rayon $1$). 

Valeurs remarquables (à connaître...)
========================================================

* Pour tout $k \in \mathbb{Z}$, $\cos(k\pi) = (-1)^k$, $\sin(k\pi) = \tan(k\pi) = 0$
* Pour tout $k \in \mathbb{Z}$, $\cos(\pi/2 + k\pi) = 0$, $\sin(\pi/2 + k\pi) = (-1)^k$ et $\tan(\pi/2 + k\pi)$ n'est pas défini. 
* $\cos(\pi/3) = \sin(\pi/6) = \frac{1}{2}$
* $\cos(\pi/6) = \sin(\pi/3) = \frac{\sqrt{3}}{2}$
* $\cos(\pi/4) = \sin(\pi/4) = \frac{\sqrt{2}}{2}$
* $\tan(\pi/3) = \frac{1}{\tan(\pi/6)} = \sqrt{3}$
* $\tan(\pi/4) = 1$. 

Parité, périodicité (à connaître...)
========================================================

* $\forall x \in \mathbb{R}, \forall k \in \mathbb{Z}, \cos(2k\pi + x) = \cos(x), \sin(2k\pi + x) = \sin(x)$
* $\forall x \in \mathbb{R}, \forall k \in \mathbb{Z}, \cos((2k+1)\pi + x) = -\cos(x), \sin((2k+1)\pi + x) = -\sin(x)$
* $\forall x \in \mathbb{R}, \cos(-x) = \cos(x), \sin(-x) = -\sin(x)$
* $\forall x \in \mathbb{R}, \cos(\pi-x) = -\cos(x), \sin(\pi-x) = \sin(x)$
* $\forall x \in \mathbb{R}, \cos(\pi/2-x) = \sin(x), \sin(\pi/2-x) = \cos(x)$
* $\forall x \in \mathbb{R}, \cos(\pi/2+x) = -\sin(x), \sin(\pi/2+x) = \cos(x)$

Parité, périodicité (à connaître...)
========================================================


* Pour tout réel $x \in \mathbb{R} - \left\{\frac{\pi}{2} + k\pi, k \in \mathbb{Z} \right\}$, on a $\tan{x} = \frac{\sin(x)}{\cos(x)}$
* $\forall x \in \mathbb{R} - \left\{\frac{\pi}{2} + k\pi, k \in \mathbb{Z} \right\}, \forall k \in \mathbb{Z}$, on a $\tan(x + k\pi) = \frac{\sin(x)}{\cos(x)}$
* $\forall x \in \mathbb{R} - \left\{\frac{\pi}{2} + k\pi, k \in \mathbb{Z} \right\}, \forall k \in \mathbb{Z}$, on a $\tan(-x) = -\tan(x)$
* $\forall x \in \mathbb{R} - \left\{\frac{\pi}{2} + k\pi, k \in \mathbb{Z} \right\}, \forall k \in \mathbb{Z}$, on a $\tan(\pi/2-x) = \frac{1}{\tan(x)}$
* $\forall x \in \mathbb{R} - \left\{\frac{\pi}{2} + k\pi, k \in \mathbb{Z} \right\}, \forall k \in \mathbb{Z}$, on a $\tan(\pi/2+x) = -\frac{1}{\tan(x)}$

Formules d'additions
========================================================

Seules les deux premières sont nécessaires, les autres s'en déduisent. 

Pour tout couple de réels $(a, b)$, on a:
* $\cos(a+b) = \cos(a)\cos(b) - \sin(a)\sin(b)$
* $\sin(a+b) = \sin(a)\cos(b) + \cos(a)\sin(b)$
* $\cos(a-b) = \cos(a)\cos(b) + \sin(a)\sin(b)$
* $\sin(a-b) = \sin(a)\cos(b) - \cos(a)\sin(b)$
Et sous réserve que les tangentes soient bien définies
* $\tan(a+b) = \frac{\tan(a) + \tan(b)}{1 - \tan(a)\tan(b)}$
* $\tan(a-b) = \frac{\tan(a) - \tan(b)}{1 + \tan(a)\tan(b)}$

Formules de factorisation
========================================================

Elles se démontrent à partir des formules d'addition (voir feuille d'exercice)

Pour tout couple de réels $(a, b)$, on a:
* $\cos(a) + \cos(b) = 2\cos\left(\frac{a+b}{2}\right)\cos\left(\frac{a-b}{2}\right)$
* $\sin(a) + \sin(b) = 2\sin\left(\frac{a+b}{2}\right)\cos\left(\frac{a-b}{2}\right)$

En cas de doute, n'hésitez pas à tester ces formules sur des valeurs connues (par exemple $a = b$ ou $a = -b$) pour vérifier que vous avez la bonne formule. . 

Angles doubles
========================================================

Le cas $a=b$ correspond à un cas particulier d'intérêt (appelé angle double). Les formules d'additions se simplifient alors en 
* $\cos(2a) = \cos^2(a) - \sin^2(a) = 2\cos^2(a) - 1 = 1 - 2\sin^2(a)$
* $\sin(2a) = 2\sin(a)\cos(a)$
* $\tan(2a) = \frac{2\tan(a)}{1 - \tan^2(a)}$

Équations trigonométriques fondamentales (I)
========================================================

Soit $u$ un réel donné, on cherche à résoudre les équations d'inconnue $x$. 
* $\cos(u)=\cos(x)$

$x$ est solution si et seulement si $\begin{cases} \exists k\in \mathbb{Z} \text{ tel que } x = u + 2k\pi \\ \text{OU} \\ \exists k\in \mathbb{Z} \text{ tel que } x = -u + 2k\pi\end{cases}$

* $\sin(u)=\sin(x)$

$x$ est solution si et seulement si $\begin{cases} \exists k\in \mathbb{Z} \text{ tel que } x = u + 2k\pi \\ \text{OU} \\ \exists k\in \mathbb{Z} \text{ tel que } x = \pi-u + 2k\pi\end{cases}$

Attention à ne pas oublier le **OU** du système. 

Équations trigonométriques fondamentales (II)
========================================================

Soit $u$ un réel donnéon cherche à résoudre les équations d'inconnue $x$. 
* $\tan(u)=\tan(x)$ (où $u$ n'est pas de la forme $\pi/2 + k\pi$)

$x$ est solution si et seulement si $\exists k\in \mathbb{Z}$ tel que $x = u + k\pi$
* $\sin(u)=\sin(x)$ ET $\cos(u)=\cos(x)$

$x$ est solution si et seulement si $\exists k\in \mathbb{Z}$ tel que $x = u + 2k\pi$

Applications
========================================================

Résoudre les équations suivantes:
* $\cos(x) = \frac{1}{2}$
* $\sin(2x) = \frac{\sqrt{3}}{2}$
* $\tan(3x) = 1$

Fonctions trigonométriques inverses (admises)
========================================================

* Pour tout réel $x \in [-1, 1]$, l'équation d'inconnue $\theta$ $\cos(\theta) = x$ admet une unique solution dans **$[0, \pi]$**. Cette solution est appelée $\arccos(x)$. 
* Pour tout réel $x \in [-1, 1]$, l'équation d'inconnue $\theta$ $\sin(\theta) = x$ admet une unique solution dans **$\left[-\frac{\pi}{2}, \frac{\pi}{2}\right]$**. Cette solution est appelée $\arcsin(x)$. 
* Pour tout réel $x \in \mathbb{R}$, l'équation d'inconnue $\theta$ $\tan(\theta) = x$ admet une unique solution dans **$\left]-\frac{\pi}{2}, \frac{\pi}{2}\right[$**. Cette solution est appelée $\arctan(x)$. 

Attention à l'**intervalle** auquel appartient $\theta$!!

Cos et Arccos
========================================================

![plot of chunk cos](Revisions-figure/cos-1.png)

***

![plot of chunk arccos](Revisions-figure/arccos-1.png)

Sin et Arsin
========================================================

![plot of chunk sin](Revisions-figure/sin-1.png)

***

![plot of chunk arcsin](Revisions-figure/arcsin-1.png)

Tan et Arctan
========================================================

![plot of chunk tan](Revisions-figure/tan-1.png)

***

![plot of chunk arctan](Revisions-figure/arctan-1.png)


Équations trigonométriques fondamentales (I)
========================================================

* $\cos(x)=a$
  + Si $a \notin [-1, 1]$: pas de solution
  + Si $a \in [-1, 1]$: $x$ est solution si et seulement si $\begin{cases} \exists k\in \mathbb{Z} \text{ tel que } x = \arccos(a) + 2k\pi \text{ OU} \\ \exists k\in \mathbb{Z} \text{ tel que } x = -\arccos(a) + 2k\pi\end{cases}$

* $\sin(x)=a$
  + Si $a \notin [-1, 1]$: pas de solution
  + Si $a \in [-1, 1]$: $x$ est solution si et seulement si $\begin{cases} \exists k\in \mathbb{Z} \text{ tel que } x = \arcsin(a) + 2k\pi \text{ OU} \\ \exists k\in \mathbb{Z} \text{ tel que } x = \pi -\arcsin(a) + 2k\pi\end{cases}$

Équations trigonométriques fondamentales (II)
========================================================

* $\tan(x)=a$

$x$ est solution si et seulement si $\exists k\in \mathbb{Z}$ tel que $x = \arctan(a) + k\pi$

La deuxième formulation est plus générale que la première. 

Attention, si on demande les solutions dans un intervalle donnée (par exemple $[0, \pi]$), il faut sélectionner uniquement les valeurs de $k$ tel que $x$ soit dans le bon intervalle. Par exemple, les solutions de $\sin(x) = 1$ dans $[0, 4\pi]$ sont $x = \frac{\pi}{2}$ et $x = \frac{5\pi}{2}$

Factorisation
========================================================

<div class="proposition">
Soit $(a, b) \in \mathbb{R}^2$. Il existe $(R, \psi, \phi) \in \mathbb{R}^2$ tel que:
$$\forall x\in\mathbb{R},  \quad a\cos(x) + b\sin(x) = R\cos(x + \psi) = R\cos(x + \phi)$$
</div>

<br>
- Si $a = b = 0$, on peut prendre $R = \psi = \phi = 0$. 
- Sinon, on pose $R = \sqrt{a^2 + b^2}$. On a alors: 
$$ a\cos(x) + b\sin(x) = R \left( \frac{a}{R}\cos(x) + \frac{b}{R}\sin(x) \right) $$
On remarque que $(a/R)^2 + (b/R)^2 = 1$, il existe donc $\psi$ tel que 
$$\cos(\psi) = a/R \text{ et } \sin(\psi) = b/R$$
On conclut avec les formules d'addition. 


Applications
========================================================

Résoudre les équations suivantes, dans $\mathbb{R}$ puis dans $[0, 2\pi]$:
* $\sin(2x) = \frac{1}{2}$
* $\sin(nx) = 0$
* $\sin(2x) + \sin(x) = 0$
* $\cos(x) + \sin(x) = 1$
* $\sqrt{3}\cos(2x) + \sin(2x) > 0$



TODO
========================================================

TODO: division des polynômes

