import 'package:flutter/material.dart';

class Registration extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage('https://cdn.clipart.email/1f9e882282f3c34ab334744ba97d5bf0_download-admin-approved-user-registration-user-registration-icon-_1024-1024.png')
                  )
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nama Lengkap'
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'No KTP'
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Alamat Lengkap'
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Kelurahan'
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Tempat Penyumbangan'
                ),
              ),
              SizedBox(height: 40),
              RaisedButton(
                color: Colors.purpleAccent,
                onPressed: (){},
                child: Text('Submit')
              )
            ],
          ),
        )
      )
    );
  }
}