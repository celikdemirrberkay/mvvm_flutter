import 'package:clean_arch/feature/home/view/clean_arch.dart';
import 'package:clean_arch/feature/home/view_model/mixin/clean_arch_viewmodel_mixin.dart';
import 'package:flutter/material.dart';

import '../../../../product/service/service.dart';
import '../../model/user.dart';
import '../../view_model/clean_arch_view_model.dart';

mixin CleanArchitectureMixin on State<CleanArchitecture> {
  late CleanArchViewModelMixin<List<User>?> viewModel;

  @override
  void initState() {
    super.initState();

    /// View model object
    viewModel = CleanArchViewModel(APIService());
  }
}
