import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../utils/app_style.dart';
import 'heigher-spacer.dart';

class Drop extends StatefulWidget {
  const Drop({
    super.key,
    required this.items,
    this.onChanged,
    this.selectedValue,
    this.text,
    required this.hintText,
    this.border,
    this.height,
    this.hintColor,
    this.width,
  });
  final List<DropdownMenuItem<dynamic>>? items;
  final Function(dynamic str)? onChanged;
  final dynamic selectedValue;
  final String? text;
  final String hintText;
  final double? border;
  final double? height;
  final double? width;
  final Color? hintColor;

  @override
  State<Drop> createState() => _DropState();
}

class _DropState extends State<Drop> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.text != null
            ? Text(
                widget.text!,
                style: appStyle(context, 16, Colors.black, FontWeight.w500),
              )
            : Container(
                height: 0,
              ),
        const HeightSpacer(10),
        DropdownButtonHideUnderline(
          child: DropdownButton2<dynamic>(
            isExpanded: true,
            hint: Text(
              widget.hintText,
              style: TextStyle(
                fontSize: 14,
                color: widget.hintColor ?? Colors.grey,
              ),
            ),
            items: widget.items,
            value: widget.selectedValue,
            onChanged: widget.onChanged,
            buttonStyleData: ButtonStyleData(
              //padding: const EdgeInsets.symmetric(horizontal: 16),
              height: widget.height ?? 40,
              width: widget.width ?? MediaQuery.sizeOf(context).width,
            ),
            dropdownStyleData: const DropdownStyleData(
              maxHeight: 200,
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
            ),
            dropdownSearchData: DropdownSearchData(
              searchController: textEditingController,
              searchInnerWidgetHeight: 50,
              searchInnerWidget: Container(
                height: 50,
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 4,
                  right: 8,
                  left: 8,
                ),
                child: TextFormField(
                  expands: true,
                  maxLines: null,
                  controller: textEditingController,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    hintText: 'Search for an item...',
                    hintStyle: const TextStyle(fontSize: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              searchMatchFn: (item, searchValue) {
                return item.value.toString().contains(searchValue);
              },
            ),
            //This to clear the search value when you close the menu
            onMenuStateChange: (isOpen) {
              if (!isOpen) {
                textEditingController.clear();
              }
            },
          ),
        ),
        const HeightSpacer(8),
        Container(
          height: 2,
          color: widget.hintColor ?? Colors.grey,
          width: widget.width ?? MediaQuery.sizeOf(context).width,
        ),
      ],
    );
  }
}
