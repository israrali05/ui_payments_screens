import 'package:ui_payments_screens/consts/consts.dart';
import 'package:ui_payments_screens/consts/images.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          title: const Text(
            "Payment",
            style: TextStyle(
                fontSize: 24,
                fontFamily: poppinRegular,
                color: textColorblack,
                fontWeight: FontWeight.w500,
                height: 0.05),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {},
            )
          ]),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(children: [
              const Text(
                "Select the payment method you want to use",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: poppinRegular,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              paymentWidget(
                  icon: icUpi, title: "PhonePe/ Google Pay/ BHIM UPI"),
              paymentWidget(icon: icCard, title: "Credit/ Debit Card"),
              paymentWidget(icon: icWallet, title: "Paytm/ Wallets"),
              paymentWidget(icon: icGlobe, title: "Netbanking"),
              paymentWidget(icon: icIndainRupee, title: "Cash"),

              const SizedBox(
                height: 90,
              ),
              // buttom Pay
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding:
                      const EdgeInsets.symmetric(vertical: 1, horizontal: 120),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Pay',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: poppinRegular,
                  ),
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            width: 104,
            height: 6,
            decoration: ShapeDecoration(
              color: Color(0xFF344053),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(57),
              ),
            ),
          )
        ],
      )),
    );
  }
}

Widget paymentWidget({icon, title}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                icon,
                height: 20,
                width: 20,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                title,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: textColorblack,
                  fontSize: 14,
                  fontFamily: poppinRegular,
                ),
              ),
            ],
          ),
          Image.asset(
            icArrowDown,
            height: 20,
            width: 20,
          ),
        ],
      ),
      const SizedBox(
        height: 16,
      ),
      Container(
        height: 1,
        width: 270,
        color: greyColr.withAlpha(90),
      ),
      const SizedBox(
        height: 20,
      ),
    ],
  );
}
