import 'package:flutter/material.dart';
import 'package:mvp_DT/models/costumedCard.dart';

class ListCus extends ChangeNotifier {
    List<CostumCard> litems = [CostumCard("DT", "12:5", 0)];

    ajouterItem(CostumCard costumCard){
      
      litems.add(costumCard);
    }
}