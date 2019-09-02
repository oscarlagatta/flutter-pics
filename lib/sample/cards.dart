
void main() {
  var deck = new Deck();

  deck.removeCard('Diamonds','Ace');
  print(deck);
}

class Deck {
  
  Deck() {
    // create a list of cards and assign to the cards property  
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];
    
    for(var suit in suits){
      for(var rank in ranks){
        var card = new Card(
          rank: rank, 
          suit: suit);
          
        cards.add(card);
      }
    }
  }
  
  List<Card> cards = [];
  
  toString() {
    return cards.toString();  
  }
  
  shuffle(){
    cards.shuffle();
  }
  
  cardsWithSuits(String suit) {
    return cards.where((card) => card.suit == suit);
  }
  
  deal(int handSize) {
    // go to who called 
    var hand = cards.sublist(0, handSize);
    
    // Get the remaining of the deck  
    cards = cards.sublist(handSize);  
    
    return hand;
  }
  
  removeCard(String suit, String rank) {
    cards.removeWhere((card) => (card.suit == suit) && (card.rank == rank));    
  }
}

class Card {
  
  String suit;
  String rank;
  
  Card({this.rank, this.suit});
  
  toString() {
    return '${rank} of ${suit}';
  }
}

