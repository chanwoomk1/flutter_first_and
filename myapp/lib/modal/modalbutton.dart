import 'package:flutter/material.dart';

class ModalButton extends StatelessWidget {
  final Widget ModalScreen;
  final VoidCallback? closedButtonFunction;

  const ModalButton({super.key,required this.ModalScreen, this.closedButtonFunction});

  void _showModal(BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return Dialog(
          child: Column(
            children: [
              ModalScreen,
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                  if(closedButtonFunction!=null){
                    closedButtonFunction!();
                  }
                }, 
                child: Text("close"))
            ],
          )
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ()=>_showModal(context), 
      child: Text("add"));
  }
}