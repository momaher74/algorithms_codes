int linearSearch(List list  , item){
 for(int i = 0 ;i < list.length ; i++) {
   if(list[i] == item ) {
     return i ;
   }
 }
 return -1 ;
}