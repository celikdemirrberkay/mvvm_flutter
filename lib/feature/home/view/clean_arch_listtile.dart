part of './clean_arch.dart';

class _CleanArchListTile extends StatefulWidget {
  const _CleanArchListTile({
    required this.title,
    required this.subtitle,
    required this.id,
  });

  final String title;
  final String subtitle;
  final int id;

  @override
  State<_CleanArchListTile> createState() => _CleanArchListTileState();
}

class _CleanArchListTileState extends State<_CleanArchListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      subtitle: Text(widget.subtitle),
      leading: Text('${widget.id}'),
    );
  }
}
