import 'package:flutter/material.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(

      decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius:  BorderRadius.circular(16)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 14.0,top: 14,bottom: 14),
            child: ListTile(
              title: Text('Flutter tips', style: TextStyle(color: Colors.black),),
              subtitle: Text('Build your Career with Flutter whit achraf gahagh test',style: TextStyle(color: Colors.black38),),
              trailing: Icon(Icons.delete),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0,bottom: 14),
            child: Text('data',style: TextStyle(color: Colors.black),),
          )
        ],
      ),
    );
  }
}