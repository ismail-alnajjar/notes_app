import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, this.onTap, this.isloading = false});
  final void Function()? onTap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 28),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kPrimaryColor,
          ),
          child: Center(
            child: isloading
                ? const SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  )
                : const Text(
                    'Add',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
          ),
        ),
      ),
    );
  }
}
