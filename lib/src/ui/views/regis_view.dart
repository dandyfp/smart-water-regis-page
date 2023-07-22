import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_water/src/bloc/regis/regis_bloc.dart';
import 'package:smart_water/src/helpers/ui_helpers.dart';
import 'package:smart_water/src/models/request/regis_model_req.dart';
import 'package:smart_water/src/ui/shared/colors.dart';
import 'package:smart_water/src/helpers/scalable_dp_helper.dart';
import 'package:smart_water/src/ui/shared/dimens.dart';
import 'package:smart_water/src/ui/shared/styles.dart';
import 'package:smart_water/src/ui/widgets/textfield.dart';
import 'package:form_field_validator/form_field_validator.dart';

class RegisView extends StatefulWidget {
  const RegisView({super.key});

  @override
  State<RegisView> createState() => _RegisViewState();
}

class _RegisViewState extends State<RegisView> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController rfIdController = TextEditingController();
    final TextEditingController genderController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    List<DropdownMenuItem> item = [
      const DropdownMenuItem(
        value: 'Laki-laki',
        child: Text(
          "Laki-laki",
          style: TextStyle(fontSize: 12),
        ),
      ),
      const DropdownMenuItem(
        value: 'wanita',
        child: Text(
          "Wanita",
          style: TextStyle(fontSize: 12),
        ),
      ),
    ];

    //String dropdownValue = item.first.value;

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
                          child: Form(
                            key: formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nama Lengkap',
                                  style: blackMediumTextstyle.copyWith(fontSize: SDP.sdp(text)),
                                ),
                                verticalSpace(SDP.sdp(5.0)),
                                KTextField(
                                  controller: nameController,
                                  isDense: true,
                                  borderColor: BaseColors.divider,
                                  borderRadius: SDP.sdp(12.0),
                                  validator: RequiredValidator(errorText: 'This field is required'),
                                ),
                                verticalSpace(SDP.sdp(headline)),
                                Text(
                                  'Nomor Handphone',
                                  style: blackMediumTextstyle.copyWith(fontSize: SDP.sdp(text)),
                                ),
                                verticalSpace(SDP.sdp(5.0)),
                                KTextField(
                                  isDense: true,
                                  controller: phoneController,
                                  borderColor: BaseColors.divider,
                                  borderRadius: SDP.sdp(12.0),
                                  validator: RequiredValidator(errorText: 'This field is required'),
                                ),
                                verticalSpace(SDP.sdp(headline)),
                                Text(
                                  'Jenis Kelamis',
                                  style: blackMediumTextstyle.copyWith(fontSize: SDP.sdp(text)),
                                ),
                                verticalSpace(SDP.sdp(5.0)),
                                /*  DropdownButtonFormField(
                                  isDense: true,
                                  isExpanded: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: BaseColors.green, width: 2),
                                      borderRadius: BorderRadius.circular(SDP.sdp(radius)),
                                    ),
                                  ),
                                  items: item,
                                  value: dropdownValue,
                                  onChanged: (value) {
                                    setState(() {
                                      dropdownValue = value;
                                    });
                                  },
                                ), */
                                KTextField(
                                  controller: genderController,
                                  isDense: true,
                                  borderColor: BaseColors.divider,
                                  borderRadius: SDP.sdp(12.0),
                                  validator: RequiredValidator(errorText: 'This field is required'),
                                ),
                                verticalSpace(SDP.sdp(headline)),
                                Text(
                                  'Unik Rfid',
                                  style: blackMediumTextstyle.copyWith(fontSize: SDP.sdp(text)),
                                ),
                                verticalSpace(SDP.sdp(5.0)),
                                KTextField(
                                  controller: rfIdController,
                                  isDense: true,
                                  borderColor: BaseColors.divider,
                                  borderRadius: SDP.sdp(12.0),
                                  validator: RequiredValidator(errorText: 'This field is required'),
                                ),
                                verticalSpace(SDP.sdp(65.0)),
                                BlocConsumer<RegisBloc, RegisState>(
                                  listener: (context, state) {
                                    if (state is RegisLoaded) {
                                      nameController.clear();
                                      phoneController.clear();
                                      rfIdController.clear();
                                      genderController.clear();
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                          content: Text('Registrasi Behasil'),
                                        ),
                                      );
                                    }
                                  },
                                  builder: (context, state) {
                                    if (state is RegisLoading) {
                                      return const Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    }
                                    return SizedBox(
                                      width: screenWidth(context),
                                      child: ElevatedButton(
                                        style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(BaseColors.primary)),
                                        onPressed: () {
                                          final reqModel = RegisModelReq(
                                            rfId: rfIdController.text,
                                            nama: nameController.text,
                                            jenisKelamin: genderController.text,
                                            telpon: phoneController.text,
                                          );
                                          if (formKey.currentState?.validate() ?? false) {
                                            return context.read<RegisBloc>().add(RegisSaveEvent(request: reqModel));
                                          }
                                        },
                                        child: Text(
                                          'Daftar akun',
                                          style: whiteSemiBoldTextstyle.copyWith(fontSize: body),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
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
