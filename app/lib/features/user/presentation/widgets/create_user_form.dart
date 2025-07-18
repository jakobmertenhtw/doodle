import 'package:doodle/features/user/application/blocs/create_user_bloc/create_user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_module/user_module.dart';

class CreateUserForm extends StatefulWidget {
  const CreateUserForm({super.key});

  @override
  State<CreateUserForm> createState() => _CreateUserFormState();
}

class _CreateUserFormState extends State<CreateUserForm> {
  final TextEditingController _doctoralDegreeController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateUserBloc, CreateUserState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages == true ? AutovalidateMode.always : AutovalidateMode.disabled,
          child: Column(
            children: [
              state.role == UserRole.teacher ? TextFormField(
                controller: _doctoralDegreeController,
                decoration: InputDecoration(
                  label: Text("Promotionsgrad")
                ),
                validator: (value) {
                  return state.doctoralDegree.value.fold((failure) => failure.failure, (_) => null);
                },
                onChanged: (_) {
                  BlocProvider.of<CreateUserBloc>(context).add(CreateUserEvent.changedDoctoralDegree(_doctoralDegreeController.text));
                },
              ) : Container() ,
              SizedBox(height: 10),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  label: Text("Voller Name")
                ),
                validator: (value) {
                  return state.fullName.value.fold((failure) => failure.failure, (_) => null);
                },
                onChanged: (_) {
                  BlocProvider.of<CreateUserBloc>(context).add(CreateUserEvent.changedName(_nameController.text));
                },
              )
            ],
          ),
        );
      },
    );
  }
}
