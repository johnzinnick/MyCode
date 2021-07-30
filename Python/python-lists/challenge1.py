import random
suits = ["Hearts", "Spades", "Clubs", "Diamonds"]
ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]
deck = []
hand = []

print(f'Card Dealing Program \n')
print('Shuffling...........')
for  suit in suits:
  for rank in ranks:
    deck.append(f'{rank} of {suit}')
print(f'There are {len(deck)} card in the deck \n')
print('Dealing.............')

while len(hand) < 5:
    card = random.choice(deck)
    deck.remove(card)
    hand.append(card)
print(f'There are {len(deck)} cards in the deck \n')
print('Player has the following cards in their hand:')
print(hand)