import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';


class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
          _crearFondo(context),
          _crearInicioForm(context),
        ],
      ),

    );
  }

  Widget _crearInicioForm(BuildContext context) {

    final size = MediaQuery.of(context).size; //para que sea responsive

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
              child: Container(
                height: 110.0,
           )
          ),

          Container(
            width: size.width * 0.92,

            child: Column(
                children: <Widget>[
                  Text('ATESCO', style: TextStyle(color: Color.fromRGBO(29,85,193,1),fontSize: 40.0), ),
                  SizedBox( height: 50.0,),
                  _crearImagen(),
                  _crearbotones(context),
                  SizedBox(height: 24),
                  _crearSubtexto1(context),
                  SizedBox(height: 60),
                  _crearSubtexto2(context),
                ]
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearSubtexto1 (BuildContext context){
    //TODO ARREGLAR EL GESTURERECOGNIZER
    //TODO ARREGLAR EL GESTURERECOGNIZER
    return Container(

      child: RichText(
          text: TextSpan(
              style: TextStyle(color: Color.fromRGBO(0,0,0,1)),
          children: <TextSpan>[
            TextSpan(text:(FlutterI18n.translate(context, 'inicioText1 '))),
            TextSpan(text:(FlutterI18n.translate(context, 'iniciobtn3')),style: TextStyle(color: Color.fromRGBO(29,85,193,1)),recognizer:TapGestureRecognizer()..onTap()),//TODO ARREGLAR EL GESTURERECOGNIZER
            TextSpan(text:(FlutterI18n.translate(context, 'inicioText1'))),
            TextSpan(text:(FlutterI18n.translate(context, 'inicioText2 '))),
            TextSpan(text:(FlutterI18n.translate(context, 'iniciobtn4')),style: TextStyle(color: Color.fromRGBO(29,85,193,1)),recognizer:TapGestureRecognizer()),
        ],
          ),
      ),
    );
  }

  Widget _crearSubtexto2(context){
    return Container();
  }

  Widget _crearbotones(BuildContext context){


    final btn1 = RaisedButton(
      child: Container(
          width: double.infinity,
          height: 70.0,
          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
                Text(FlutterI18n.translate(context, 'iniciobtn1'), style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold), ),
              Icon( Icons.arrow_forward_ios,color: Colors.grey,)
            ],
          )

      ),
      shape: RoundedRectangleBorder( //agrega el borde al boton
          borderRadius: BorderRadius.circular(5.0)
      ),
      elevation: 6.0,
      color: Colors.white,
      onPressed:() {},
    );

    final btn2 = RaisedButton(
      child: Container(
        width: double.infinity,
        height: 70.0,
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(FlutterI18n.translate(context, 'iniciobtn2'), style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold), ),
            Icon( Icons.arrow_forward_ios,color: Colors.grey,)
          ],
        )
      ),
      shape: RoundedRectangleBorder( //agrega el borde al boton
          borderRadius: BorderRadius.circular(5.0)
      ),
      elevation: 6.0,
      color: Colors.white,
      onPressed:() {},
    );

    return Column(
      children: <Widget>[
        SizedBox(height: 50),
        btn1,
        SizedBox(height: 30),
        btn2
      ],
    );
  }

  Widget _crearImagen() {
    return Container(
      child: Image(
        image: AssetImage('assets/images/atescologo.png'),
        height: 222,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearFondo(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.1),
            end: FractionalOffset(0.0, 1),
          colors: <Color>[
            Color.fromRGBO(255, 255, 255, 1),
            Color.fromRGBO(187, 204, 236, 1),
            Color.fromRGBO(255, 255, 255, 1),
          ]
        ),
      ),
    );
  }




}
