import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../infrastructure/cubit/phone_auth_cubit.dart';
import '../../infrastructure/services/locator.dart';
import 'home_screen.dart';

class OtpScreen extends StatefulWidget {
  final String phoneNumber;
  final String verificationId;

  OtpScreen(this.verificationId, {Key? key, required this.phoneNumber}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final CountdownController _countdownController = CountdownController();

  late bool sendCode;

  final _phoneAuthCubit = locator<PhoneAuthCubit>();
  final TextEditingController _pinCodeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    sendCode = true;
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      return _countdownController.restart();
    });
  }

  @override
  void dispose() {
    _pinCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _phoneAuthCubit,
      child: Scaffold(
        body: BlocConsumer<PhoneAuthCubit, PhoneAuthState>(
          listener: (context, state) {
            state.maybeWhen(
              success: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen())),
              message: (message) {
                log(message);
                return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
              },
              orElse: () => Container(),
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loading: () {
                _countdownController.restart();
                return Center(child: CircularProgressIndicator());
              },
              orElse: () => _buildBody(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildBody() {
    var size = MediaQuery.of(context).size;
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      return _countdownController.restart();
    });
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildInfoText(),
          SizedBox(height: 24),
          _buildPinCodeField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () async {
                  setState(() {
                    sendCode = false;
                    WidgetsBinding.instance?.addPostFrameCallback((_) => _countdownController.pause());
                  });
                  Navigator.of(context).pop();
                },
                style: TextButton.styleFrom(
                  primary: Colors.deepPurple,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
                ),
                child: Text(
                  'Nömrəni dəyiş',
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.deepPurple),
                ),
              ),
              TextButton(
                onPressed: sendCode == true
                    ? null
                    : () async {
                        await _phoneAuthCubit.resendVerificationCode(phoneNumber: widget.phoneNumber);
                        Future.delayed(Duration(seconds: 1), () {
                          setState(() => sendCode = !sendCode);
                          WidgetsBinding.instance?.addPostFrameCallback((_) => _countdownController.restart());
                        });
                      },
                style: TextButton.styleFrom(primary: Colors.deepPurple, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60))),
                child: sendCode
                    ? Countdown(
                        controller: _countdownController,
                        seconds: 10,
                        build: (context, time) => Text(
                          '${time.toInt()}',
                          style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Colors.deepPurple),
                        ),
                        interval: Duration(milliseconds: 100),
                        onFinished: () {
                          setState(() => sendCode = false);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Timer is done!',
                                style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Colors.white),
                              ),
                            ),
                          );
                        },
                      )
                    : Text('Resend Code'),
              ),
            ],
          ),
          TextButton(
            onPressed: () async => await _phoneAuthCubit.sendVerificationCode(verificationId: widget.verificationId),
            style: TextButton.styleFrom(
              primary: Theme.of(context).primaryColor,
              backgroundColor: Colors.white,
              side: BorderSide(color: Colors.deepPurple, width: 2),
              minimumSize: Size(size.width, 42),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
            ),
            child: Text(
              'Davam et',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).primaryColor),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPinCodeField() => PinCodeTextField(
        controller: _pinCodeController,
        autoDisposeControllers: false,
        length: 6,
        onCompleted: (value) {
          print(value);
          _phoneAuthCubit.updateVerificationCode(value);
        },
        appContext: context,
        onChanged: (value) {},
        keyboardType: TextInputType.phone,
        enableActiveFill: true,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        animationType: AnimationType.fade,
        textStyle: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),
        cursorColor: Colors.transparent,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.circle,
          activeColor: Colors.transparent,
          activeFillColor: Theme.of(context).primaryColor,
          inactiveColor: Theme.of(context).primaryColor,
          selectedColor: Colors.black38,
          fieldWidth: 54,
          fieldHeight: 54,
          inactiveFillColor: Theme.of(context).primaryColor,
          disabledColor: Theme.of(context).primaryColor,
          selectedFillColor: Theme.of(context).primaryColor,
        ),
      );

  Widget _buildInfoText() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: widget.phoneNumber,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.deepPurple),
        children: [
          TextSpan(
            text: ' nömrəsinə gələn\n6 rəqəmli şifrəni daxil edin',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.deepPurple),
          ),
        ],
      ),
    );
  }
}
