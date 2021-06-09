import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../infrastructure/cubit/phone_auth_cubit.dart';
import '../../infrastructure/services/locator.dart';
import 'otp_screen.dart';

class PhoneAuthScreen extends StatefulWidget {
  const PhoneAuthScreen({Key? key}) : super(key: key);

  @override
  _PhoneAuthScreenState createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
  late TextEditingController _phoneController;

  final _phoneAuthCubit = locator<PhoneAuthCubit>();

  String _parsedNumber(String value) {
    var _formattedNumber = value.replaceAll(RegExp('[^0-9]'), '');
    var _fullNumber = '+994$_formattedNumber';
    return _fullNumber;
  }

  @override
  void initState() {
    super.initState();
    _phoneController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _phoneAuthCubit,
      child: Scaffold(
        body: BlocConsumer<PhoneAuthCubit, PhoneAuthState>(
          listener: (context, state) {
            state.maybeWhen(
              success: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => PhoneAuthScreen())),
              codeSent: (verificationId) => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => OtpScreen(
                    verificationId,
                    phoneNumber: _parsedNumber(_phoneController.text),
                  ),
                ),
              ),
              message: (message) {
                log(message);
                return ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message)),
                );
              },
              orElse: () => Container(),
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => Center(child: CircularProgressIndicator()),
              orElse: () => _buildBody(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildBody() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildNumberInputField,
          SizedBox(height: 12),
          TextButton(
            onPressed: () async => await _phoneAuthCubit.getVerificationCode(),
            style: TextButton.styleFrom(
              primary: Theme.of(context).primaryColor,
              backgroundColor: Colors.white,
              side: BorderSide(color: Theme.of(context).primaryColor, width: 2),
              minimumSize: Size(size.width, 42),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
            ),
            child: Text(
              'Davam et',
              style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Theme.of(context).primaryColor),
            ),
          ),
        ],
      ),
    );
  }

  Widget get _buildNumberInputField => TextField(
        controller: _phoneController,
        cursorColor: Colors.white,
        onChanged: (value) => _phoneAuthCubit.updatePhoneNumber(_parsedNumber(value)),
        style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Colors.white),
        inputFormatters: [
          MaskTextInputFormatter(mask: '(##) ###-##-##', filter: {'#': RegExp(r'[0-9]')})
        ],
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: '(XX) XXX-XX-XX',
          contentPadding: EdgeInsets.only(left: 24),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintStyle: TextStyle(color: Colors.white54),
          filled: true,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 24.0),
            child: Text('+994 ', style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Colors.white)),
          ),
          fillColor: Theme.of(context).primaryColor,
          disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24.0), borderSide: BorderSide(color: Colors.transparent)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(24.0), borderSide: BorderSide(color: Colors.transparent)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24.0), borderSide: BorderSide(color: Colors.transparent)),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24.0), borderSide: BorderSide(color: Colors.transparent)),
          errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24.0), borderSide: BorderSide(color: Colors.red)),
          focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24.0), borderSide: BorderSide(color: Colors.red)),
        ),
      );
}
