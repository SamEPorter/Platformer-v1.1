class FGameObject extends FBox {
 
  final int L = -1;
  final int R = 1;
  
  FGameObject() {
   super(gridSize, gridSize);
   
  }
  
  FGameObject(int size, int size2) {
   super(size*gridSize/size2, size*gridSize/size2);
  }
  
  FGameObject(int m1, int d1, int m2, int d2) {
   super(m1*gridSize/d1, m2*gridSize/d2);
  }
  
  void act() {
    
  }
  
   boolean isTouching(String n) {
   ArrayList<FContact> contacts = getContacts();
   for (int i = 0; i < contacts.size(); i++) {
    FContact fc = contacts.get(i);
    if (fc.contains(n)) {
      return true;
   }
   }
   return false;
   
}
 

}
