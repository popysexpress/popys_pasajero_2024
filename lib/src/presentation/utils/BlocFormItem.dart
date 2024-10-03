class BlocFormItem {
  //definir variables
  final String value;
  final String? error;

  //contructor
  const BlocFormItem({
    this.value = '',
    this.error,
  });

  //creamos el copy with
  BlocFormItem copyWith({
    String? value,
    String? error,
  }) {
    return BlocFormItem(
      value: value ?? this.value,
      error: error ?? this.error,
    );
  }
}
