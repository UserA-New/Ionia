/* Chapter 1 - Exercises
 *
 * All Exercises can be found under the following link:
 * http://www.let.rug.nl/bos/lpn//lpnpage.php?pageid=online
 *
 * Created by: Atakan New
 * Date: 10/23/2021
 *
 */

% Exercise 1.1 Which of the following sequences of characters are atoms,
% which are variables, and which are neither?
%
% 1. vINCENT // atom
%
% 2. Footmassage // variable
%
% 3. variable23 // atom
%
% 4. Variable2000 // variable
%
% 5. big_kahuna_burger // atom
%
% 6. ’big  kahuna  burger’ // atom
%
% 7. big kahuna burger // neither
%
% 8. 'Jules' // atom
%
% 9. _Jules // variable
%
% 10. ’_Jules' // atom
%
% Exercise 1.2 Which of the following sequences of characters are atoms,
% which are variables, which are complex terms, and which are not terms
% at all? Give the functor and arity of each complex term.
%
% 1. loves(Vincent,mia) // atoms: loves, mia
%                       // variables: Vincent
%                       // ComplexTerms: loves(Vincent, mia)
%                       // functor: loves
%                       // arity: 2
%
% 2. 'loves(Vincent, mia)' // atoms: loves(Vincent, mia)
%
% 3. Butch(boxer) // none of the three
%
% 4. boxer(Butch) // atoms: boxer
%                 // variables: Butch
%                 // ComplexTerms: boxer(Butch)
%                 // functor: boxer
%                 // arity: 1
%
% 5. and(big(burger),kahuna(burger)) // atoms: and, big, burger, kahuna
%                                    // ComplexTerms:
%                                       and(big(burger),kahuna(burger))
%                                       big(burger)
%                                       kahuna(burger)
%                                    // functor: and, big, kahuna
%                                    // arities (respectively):
%                                       2
%                                       1
%                                       1
%
% 6. and(big(X),kahuna(X)) // atoms: and, big, kahuna
%                          // variables: X
%                          // ComplexTerms:
%                             and(big(X),kahuna(X))
%                             big(X)
%                             kahuna(X)
%                          // functor: and, big, kahuna
%                          // arities (respectively):
%                             2
%                             1
%                             1
%
% 7. _and(big(X),kahuna(X)) // none of the three
%
% 8. (Butch  kills  Vincent) // none of the three
%
% 9. kills(Butch  Vincent) // none of the three
%
% 10. kills(Butch,Vincent // none of the three
%
% Exercise 1.3 How many facts, rules, clauses, and predicates are there
% in the following knowledge base? What are the heads of the rules, and
% what are the goals they contain?
%
% woman(vincent). // a fact, and thus a clause.
% woman(mia). // a fact, and thus a clause.
% man(jules). // a fact, and thus a clause.
% person(X):-  man(X);  woman(X). // a rule, and thus a clause.
%                                 // the head of the rule: person(X)
%                                 // the goal: man(X)or woman(X)
%
% loves(X,Y):-  father(X,Y). // a rule, and thus a clause.
%                            // the head of the rule: loves(X,Y)
%                            // the goal: father(X,Y)
%
% father(Y,Z):-  man(Y),  son(Z,Y). // a rule, and thus a clause.
%                                   // the head of the rule: father(Y,Z)
%                                   // the goal: man(Y) and son(Z,Y)
%
% father(Y,Z):-  man(Y),  daughter(Z,Y). // a rule, and thus a clause.
%                                        // the head of the rule:
%                                           father(Y,Z)
%                                        // the goal: man(Y) and
%                                           daughter(Z,Y)
%
% // the number of facts: 3
% // the number of rules: 4
% // the number of clauses: 7
%    (the number of facts + the number of rules)
%
% // the number of predicates (distinct): 7
%    namely: woman, man, person, loves, father, son, daughter
%
% Exercise 1.4 Represent the following in Prolog:
%
% 1. Butch is a killer. // killer(butch).
% 2. Mia and Marsellus are married. // married(mia, marsellus).
% 3. Zed is dead. // dead(zed).
% 4. Marsellus kills everyone who gives Mia a footmassage.
%    // kills(marsellus,X):- givesFootMassage(X,mia).
%
% 5. Mia loves everyone who is a good dancer.
%    // loves(mia,X):- goodDancer(X).
%
% 6. Jules eats anything that is nutritious or tasty.
%    // eats(jules, X):- isNutritious(X); isTasty(X).
%
%
%
% Exercise 1.5 Suppose we are working with the following knowledge base:
%
% wizard(ron).
% hasWand(harry).
% quidditchPlayer(harry).
% wizard(X):-  hasBroom(X),  hasWand(X).
% hasBroom(X):-  quidditchPlayer(X).
%
% How does Prolog respond to the following queries?
%
% wizard(ron). // true.
% witch(ron). // Unknown procedure:
% wizard(hermione). // false.
% witch(hermione). // Unknown procedure:
% wizard(harry). // true.
% wizard(Y).
% // Y = ron;
%    Y = harry.
% witch(Y). // Unknown procedure:

