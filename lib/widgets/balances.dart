import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projeqta/constants/app_settings.dart';
import 'package:projeqta/constants/colors.dart';

class BalanceWidget extends StatelessWidget {
  // final Account account;
  const BalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: AppSettings.screenWidth,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/icon/money_circle.svg',
                  semanticsLabel: '',
                  // ColorFilter.mode(AppColors.black, BlendMode.srcIn),
                  height: 25,
                ),
                const Text(
                  "Saldo disponível",
                  style: TextStyle(
                      color: tdBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                SvgPicture.asset(
                  'assets/icon/up.svg',
                  semanticsLabel: '',
                  height: 12,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                // "R\$ ${NumberFormat('#,##0.00', 'pt_BR').format(account.balance)}",
                "R\$ 10.560,00",
                style: TextStyle(
                    color: tdBlack, fontSize: 32, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Saldo + Limite: R\$ 2.000",
                style: TextStyle(
                    color: tdBlack, fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 2,
              color: tdBlack,
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Ver extrato",
                  style: TextStyle(
                      color: orange800,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
