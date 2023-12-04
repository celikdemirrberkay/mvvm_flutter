import 'package:clean_arch/feature/home/view/mixin/clean_arch_mixin.dart';
import 'package:flutter/material.dart';
import '../model/user.dart';
part './clean_arch_listtile.dart';

@immutable
final class CleanArchitecture extends StatefulWidget {
  const CleanArchitecture({super.key});

  @override
  State<CleanArchitecture> createState() => _CleanArchitectureState();
}

class _CleanArchitectureState extends State<CleanArchitecture> with CleanArchitectureMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _listViewFutureBuilder()),
    );
  }

  /// List view Future layer.
  FutureBuilder<List<User>?> _listViewFutureBuilder() {
    return FutureBuilder(
        future: viewModel.fetchData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return const Center(child: Text("Something went wrong"));
            case ConnectionState.waiting:
              return _loading();
            case ConnectionState.active:
              return _loading();
            case ConnectionState.done:
              if (snapshot.hasData) {
                return _usersListView(snapshot.data);
              } else {
                return _loading();
              }
          }
        });
  }

  /// User's list view
  Widget _usersListView(List<User>? user) {
    return ListView.builder(
      itemCount: user?.length ?? 0,
      itemBuilder: (context, index) {
        return _CleanArchListTile(
          title: user?[index].name ?? '',
          subtitle: user?[index].phone ?? '',
          id: user?[index].id ?? 0,
        );
      },
    );
  }

  /// Loading widget (Circular indicator)
  Widget _loading() => const Center(
        child: CircularProgressIndicator(),
      );
}
