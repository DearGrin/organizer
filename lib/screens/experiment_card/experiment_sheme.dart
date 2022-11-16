import 'package:dotted_border/dotted_border.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/custom_widgets/utils.dart';
import 'package:first_approval_app/models/sample.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExperimentScheme extends StatelessWidget {
  final VoidCallback? onTap;

  const ExperimentScheme({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 25,
        left: 40,
        right: 40,
        bottom: 30,
      ),
      height: 360,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText(
                'Схема эксперимента',
                20,
                FontWeight.w700,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomNoBordersButton(
                    IconsSvg.import,
                    () {},
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  CustomNoBordersButton(
                    IconsSvg.export,
                    () {},
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: DottedBorder(
              dashPattern: const [30, 10],
              strokeCap: StrokeCap.butt,
              borderType: BorderType.RRect,
              color: const Color.fromRGBO(153, 153, 153, 0.6),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromRGBO(153, 153, 153, 0.6),
                    style: BorderStyle.none,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: onTap,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset(IconsSvg.ellipse),
                          SvgPicture.asset(IconsSvg.bigPlus),
                        ],
                      ),
                    ),
                    const CustomText(
                      'Добавить карточку\nэксперимента',
                      16,
                      FontWeight.w700,
                      color: Color.fromRGBO(153, 153, 153, 0.6),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText('Группа_1', 16, FontWeight.w700),
                    Row(
                      children: [
                        CustomNoBordersButton(
                          IconsSvg.edit,
                          () {},
                        ),
                        CustomNoBordersButton(
                          IconsSvg.downArrow,
                          () {},
                        ),
                      ],
                    ),
                  ],
                ),
                const Text("Текст внутри группы 1"),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Container(child: const Text('obrazec 11 ')),
                    CustomNoBordersButton(
                      IconsSvg.edit,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.archive,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.attachedFiles,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.downArrow,
                      () {},
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(child: const Text('obrazec 12 ')),
                    CustomNoBordersButton(
                      IconsSvg.edit,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.archive,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.attachedFiles,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.downArrow,
                      () {},
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(child: const Text('obrazec 13 ')),
                    CustomNoBordersButton(
                      IconsSvg.edit,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.archive,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.attachedFiles,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.downArrow,
                      () {},
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(child: const Text('obrazec 14 ')),
                    CustomNoBordersButton(
                      IconsSvg.edit,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.archive,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.attachedFiles,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.downArrow,
                      () {},
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(child: const Text('obrazec 15 ')),
                    CustomNoBordersButton(
                      IconsSvg.edit,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.archive,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.attachedFiles,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.downArrow,
                      () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Группа_2'),
                Row(
                  children: [
                    CustomNoBordersButton(
                      IconsSvg.edit,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.downArrow,
                      () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(child: const Text('obrazec 21 ')),
                        const Text('obrazec 21 text '),
                        Row(
                          children: [
                            Column(
                              children: [
                                MyFile(
                                  key: key,
                                ),
                                MyFile(
                                  key: key,
                                ),
                                MyFile(
                                  key: key,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                MyFile(
                                  key: key,
                                ),
                                MyFile(
                                  key: key,
                                ),
                                MyFile(
                                  key: key,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                MyFile(
                                  key: key,
                                ),
                                MyFile(
                                  key: key,
                                ),
                                MyFile(
                                  key: key,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    CustomNoBordersButton(
                      IconsSvg.edit,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.archive,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.attachedFiles,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.downArrow,
                      () {},
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(child: const Text('obrazec 22 ')),
                      ],
                    ),
                    CustomNoBordersButton(
                      IconsSvg.edit,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.archive,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.attachedFiles,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.downArrow,
                      () {},
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(child: const Text('obrazec 23 ')),
                      ],
                    ),
                    CustomNoBordersButton(
                      IconsSvg.edit,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.archive,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.attachedFiles,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.downArrow,
                      () {},
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(child: const Text('obrazec 24 ')),
                      ],
                    ),
                    CustomNoBordersButton(
                      IconsSvg.edit,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.archive,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.attachedFiles,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.downArrow,
                      () {},
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(child: const Text('obrazec 25 ')),
                      ],
                    ),
                    CustomNoBordersButton(
                      IconsSvg.edit,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.archive,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.attachedFiles,
                      () {},
                    ),
                    CustomNoBordersButton(
                      IconsSvg.downArrow,
                      () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyFile extends StatelessWidget {
  const MyFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('file 21 '),
        CustomNoBordersButton(
          IconsSvg.file,
          () {},
        ),
      ],
    );
  }
}

class NewSample extends StatelessWidget {
  final Sample data;
  final VoidCallback? onPressed;
  const NewSample({super.key, this.onPressed, required this.data});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(data.tittle, 14, FontWeight.w700),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomNoBordersButton(IconsSvg.edit, () {}),
              CustomNoBordersButton(IconsSvg.schemeCompass, () {}),
              CustomNoBordersButton(IconsSvg.attachedFiles, () {}),
            ],
          ),
        ],
      ),
      children: [
        const TextField(
          decoration: InputDecoration(
            label: Text('Введите текст'),
          ),
        ),
        ElevatedButton(
            onPressed: onPressed, child: const Text('новый образец')),
      ],
    );
  }
}
