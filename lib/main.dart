import 'package:flutter/material.dart';
import 'package:bloc_pattern_exemplo/ui/Home.dart';
import 'dart:async';

void main(){

  List convidados = ["Iago","Daniel","Maria","Joao","Marcos","Jose","Marcos"];

  // ignore: close_sinks
  final controller = StreamController();

  // ignore: unused_local_variable, cancel_subscriptions
  final subscription = controller.stream.where(
      (data){
        return convidados.contains(data);
      }
      ).listen((data){
        print(data);
  });

  controller.sink.add("Iago");
  controller.sink.add("Daniel");
  controller.sink.add("Paulo");
  controller.sink.add("Leo");
  controller.sink.add("Maria");

  controller.close();

  }

