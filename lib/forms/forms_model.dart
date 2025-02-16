import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'forms_widget.dart' show FormsWidget;
import 'package:flutter/material.dart';

class FormsModel extends FlutterFlowModel<FormsWidget> {
  ///  Local state fields for this page.

  bool isCompleted = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for clientName widget.
  FocusNode? clientNameFocusNode;
  TextEditingController? clientNameTextController;
  String? Function(BuildContext, String?)? clientNameTextControllerValidator;
  String? _clientNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the  client Name.';
    }

    return null;
  }

  // State field(s) for mobileNumber widget.
  FocusNode? mobileNumberFocusNode;
  TextEditingController? mobileNumberTextController;
  String? Function(BuildContext, String?)? mobileNumberTextControllerValidator;
  String? _mobileNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Mobile Number* is required';
    }

    return null;
  }

  // State field(s) for eventDate widget.
  FocusNode? eventDateFocusNode;
  TextEditingController? eventDateTextController;
  String? Function(BuildContext, String?)? eventDateTextControllerValidator;
  String? _eventDateTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Event Date* is required';
    }

    return null;
  }

  // State field(s) for eventLocation widget.
  FocusNode? eventLocationFocusNode;
  TextEditingController? eventLocationTextController;
  String? Function(BuildContext, String?)? eventLocationTextControllerValidator;
  String? _eventLocationTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Event Location* is required';
    }

    return null;
  }

  // State field(s) for seats widget.
  FocusNode? seatsFocusNode;
  TextEditingController? seatsTextController;
  String? Function(BuildContext, String?)? seatsTextControllerValidator;
  String? _seatsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'No of Seats* is required';
    }

    return null;
  }

  // State field(s) for venueType widget.
  FormFieldController<String>? venueTypeValueController;
  // State field(s) for cateringType widget.
  FormFieldController<List<String>>? cateringTypeValueController;
  String? get cateringTypeValue =>
      cateringTypeValueController?.value?.firstOrNull;
  set cateringTypeValue(String? val) =>
      cateringTypeValueController?.value = val != null ? [val] : [];
  // State field(s) for servingType widget.
  FormFieldController<List<String>>? servingTypeValueController;
  String? get servingTypeValue =>
      servingTypeValueController?.value?.firstOrNull;
  set servingTypeValue(String? val) =>
      servingTypeValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {
    clientNameTextControllerValidator = _clientNameTextControllerValidator;
    mobileNumberTextControllerValidator = _mobileNumberTextControllerValidator;
    eventDateTextControllerValidator = _eventDateTextControllerValidator;
    eventLocationTextControllerValidator =
        _eventLocationTextControllerValidator;
    seatsTextControllerValidator = _seatsTextControllerValidator;
  }

  @override
  void dispose() {
    clientNameFocusNode?.dispose();
    clientNameTextController?.dispose();

    mobileNumberFocusNode?.dispose();
    mobileNumberTextController?.dispose();

    eventDateFocusNode?.dispose();
    eventDateTextController?.dispose();

    eventLocationFocusNode?.dispose();
    eventLocationTextController?.dispose();

    seatsFocusNode?.dispose();
    seatsTextController?.dispose();
  }

  /// Additional helper methods.
  String? get venueTypeValue => venueTypeValueController?.value;
}
