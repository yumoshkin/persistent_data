import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:user_data/business/bank_card_cubit/bank_card_cubit.dart';
import 'package:user_data/data/models/bank_card/bank_card.dart';
import 'package:user_data/ui/utils/functions.dart';
import 'package:user_data/ui/widgets/form_field_text.dart';

class BankCardFormScreen extends StatefulWidget {
  const BankCardFormScreen({Key? key, required this.userId}) : super(key: key);
  final String userId;

  @override
  State<BankCardFormScreen> createState() => _BankCardFormScreenState();
}

class _BankCardFormScreenState extends State<BankCardFormScreen> {
  final GlobalKey<FormState> _bankCardFormKey = GlobalKey<FormState>();

  final _cardNumberController = TextEditingController();
  final _ownerController = TextEditingController();
  final _validThruController = TextEditingController();

  BankCard? _bankCard;

  @override
  void initState() {
    super.initState();
    setFields(int.parse(widget.userId));
  }

  @override
  void dispose() {
    _cardNumberController.dispose();
    _ownerController.dispose();
    _validThruController.dispose();
    super.dispose();
  }

  void setFields(int userId) {
    _bankCard = context.read<BankCardCubit>().getByUserId(userId);
    _cardNumberController.text = _bankCard?.cardNumber ?? '';
    _ownerController.text = _bankCard?.owner ?? '';
    _validThruController.text = _bankCard?.validThru ?? '';
  }

  void submit(BuildContext context) async {
    if (!(_bankCardFormKey.currentState?.validate() ?? false)) {
      return;
    }

    final bankCard = BankCard(
      userId: int.parse(widget.userId),
      cardNumber: _cardNumberController.text,
      owner: _ownerController.text,
      validThru: _validThruController.text,
    );

    await context.read<BankCardCubit>().writeBankCard(bankCard);

    popIfSuccess();
  }

  void popIfSuccess() {
    if (context.read<BankCardCubit>().state.error.isEmpty) {
      context.pop();
    } else {
      context.read<BankCardCubit>().loadBankCards();
    }
  }

  void cancel() {
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Банковская карта'),
      ),
      body: Form(
        key: _bankCardFormKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // SizedBox(height: 16),
                FormFieldText(
                  controller: _cardNumberController,
                  labelText: 'Номер карты',
                  validator: (value) => validateRequiredField(
                    value,
                    'Номер карты не должен быть пустым',
                  ),
                ),
                FormFieldText(
                  controller: _validThruController,
                  labelText: 'Действительна до',
                  validator: (value) => validateRequiredField(
                    value,
                    'Действительна до не должна быть пустой',
                  ),
                ),
                FormFieldText(
                  controller: _ownerController,
                  labelText: 'Владелец',
                  validator: (value) => validateRequiredField(
                    value,
                    'Владелец не должен быть пустым',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(140, 36),
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () => submit(context),
                        child: const Text('Сохранить'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(140, 36),
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: cancel,
                        child: const Text('Отменить'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
