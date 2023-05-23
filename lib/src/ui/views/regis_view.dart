import 'package:flutter/material.dart';
import 'package:smart_water/src/helpers/ui_helpers.dart';
import 'package:smart_water/src/ui/shared/colors.dart';
import 'package:smart_water/src/helpers/scalable_dp_helper.dart';
import 'package:smart_water/src/ui/shared/dimens.dart';
import 'package:smart_water/src/ui/shared/styles.dart';
import 'package:smart_water/src/ui/widgets/textfield.dart';

class RegisView extends StatelessWidget {
  const RegisView({super.key});

  @override
  Widget build(BuildContext context) {
    SDP.init(context);
    return Scaffold(
      backgroundColor: BaseColors.primary,
      body: SafeArea(
          child: Column(
        children: [
          Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: SDP.sdp(100.0),
                      left: SDP.sdp(67.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selamat Datang',
                          style: whiteMediumTextstyle.copyWith(fontSize: SDP.sdp(34.0)),
                        ),
                        Text(
                          'Di Smart Drinking Water\nCorner System',
                          style: whiteBoldTextstyle.copyWith(fontSize: SDP.sdp(34.0)),
                        ),
                        verticalSpace(SDP.sdp(28.0)),
                        Text(
                          'Anda dapat mendapatkan air bersih layak\nminum hanya dengan tap E-KTP',
                          style: whiteRegulerTextstyle.copyWith(
                            fontSize: SDP.sdp(text),
                          ),
                        ),
                        verticalSpace(SDP.sdp(300.0)),
                        Text(
                          'Ayo lindungi lingkungan mu\ndengan meminimalisir\npenggunaan kemasan plastik air minum mu',
                          style: whiteRegulerTextstyle.copyWith(fontSize: SDP.sdp(text)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: SDP.sdp(816.0),
                    decoration: const BoxDecoration(
                      color: BaseColors.white,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(42.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        verticalSpace(SDP.sdp(65.0)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: SDP.sdp(60.0)),
                          child: Text(
                            'Daftarkan E-KTP mu \nAgar kamu dapat air minum GRATIS',
                            style: blackSemiBoldTextstyle.copyWith(
                              fontSize: SDP.sdp(paddingContent),
                            ),
                          ),
                        ),
                        verticalSpace(SDP.sdp(67.0)),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: SDP.sdp(173.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nama Lengkap',
                                style: blackMediumTextstyle.copyWith(fontSize: SDP.sdp(text)),
                              ),
                              verticalSpace(SDP.sdp(5.0)),
                              KTextField(
                                isDense: true,
                                borderColor: BaseColors.divider,
                                borderRadius: SDP.sdp(12.0),
                              ),
                              verticalSpace(SDP.sdp(headline)),
                              Text(
                                'Nomor Handphone',
                                style: blackMediumTextstyle.copyWith(fontSize: SDP.sdp(text)),
                              ),
                              verticalSpace(SDP.sdp(5.0)),
                              KTextField(
                                isDense: true,
                                borderColor: BaseColors.divider,
                                borderRadius: SDP.sdp(12.0),
                              ),
                              verticalSpace(SDP.sdp(headline)),
                              Text(
                                'Jenis Kelamis',
                                style: blackMediumTextstyle.copyWith(fontSize: SDP.sdp(text)),
                              ),
                              verticalSpace(SDP.sdp(5.0)),
                              KTextField(
                                isDense: true,
                                borderColor: BaseColors.divider,
                                borderRadius: SDP.sdp(12.0),
                              ),
                              verticalSpace(SDP.sdp(headline)),
                              Text(
                                'Unik Rfid',
                                style: blackMediumTextstyle.copyWith(fontSize: SDP.sdp(text)),
                              ),
                              verticalSpace(SDP.sdp(5.0)),
                              KTextField(
                                isDense: true,
                                borderColor: BaseColors.divider,
                                borderRadius: SDP.sdp(12.0),
                              ),
                              verticalSpace(SDP.sdp(65.0)),
                              SizedBox(
                                width: screenWidth(context),
                                child: ElevatedButton(
                                  style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(BaseColors.primary)),
                                  onPressed: () {},
                                  child: Text(
                                    'Daftar akun',
                                    style: whiteSemiBoldTextstyle.copyWith(fontSize: body),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: SDP.sdp(200.0),
                left: SDP.sdp(300.0),
                child: SizedBox(
                  height: SDP.sdp(500.0),
                  width: SDP.sdp(500.0),
                  child: Image.asset("assets/logo.png"),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
