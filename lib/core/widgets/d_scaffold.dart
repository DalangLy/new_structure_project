import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DScaffold extends StatelessWidget {
  final Widget body;
  final List<DBreadCrumb> breadCrumbs;
  const DScaffold({Key? key, required this.body, this.breadCrumbs = const [],}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CustomScaffold(
      appBar: _CustomAppBar(breadCrumbs: breadCrumbs,),
      body: body,
    );
  }
}

class DBreadCrumb{
  final String title;
  final String? path;
  const DBreadCrumb({required this.title, this.path,});
}

class _CustomScaffold extends StatelessWidget {
  final _CustomAppBar appBar;
  final Widget body;
  const _CustomScaffold({Key? key, required this.appBar, required this.body,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          appBar,
          Expanded(child: body,),
        ],
      ),
    );
  }
}


class _CustomAppBar extends StatefulWidget {
  final List<DBreadCrumb> breadCrumbs;
  const _CustomAppBar({Key? key, required this.breadCrumbs,}) : super(key: key);

  @override
  State<_CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<_CustomAppBar> {
  final List<Widget> _breadCrumbs = [];
  @override
  void initState() {
    super.initState();

    for (var element in widget.breadCrumbs) {
      final bool isLast = widget.breadCrumbs.indexOf(element) == (widget.breadCrumbs.length - 1);
      if(isLast){
        _breadCrumbs.add(_DBreadCrumbItem(title: element.title, path: element.path));
      }
      else {
        _breadCrumbs.add(_DBreadCrumbItem(title: element.title, path: element.path));
        const Text(' / ');
      }
    }

    //refresh ui
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          IconButton(
            onPressed: (){
              AutoRouter.of(context).pop();
            },
            icon: const Icon(Icons.chevron_left,),
          ),
          ..._breadCrumbs,
        ],
      ),
    );
  }
}

class _DBreadCrumbItem extends StatelessWidget {
  final String title;
  final String? path;
  const _DBreadCrumbItem({Key? key, required this.title, this.path,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 50,
        maxWidth: 120,
      ),
      child: Tooltip(
        message: title,
        child: TextButton(
          onPressed: path == null ? null : (){
            AutoRouter.of(context).pushNamed(path!);
          },
          child: const Text('Record Status Type', overflow: TextOverflow.ellipsis, maxLines: 1,),
        ),
      ),
    );
  }
}

