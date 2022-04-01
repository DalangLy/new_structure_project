import 'package:flutter/material.dart';

class DScaffold extends StatelessWidget {
  final Widget body;
  final List<DBreadCrumb> breadCrumbs;
  const DScaffold({Key? key, required this.body, this.breadCrumbs = const [],}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CustomScaffold(
      appBar: const _CustomAppBar(),
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


class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.chevron_left,),),
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 50,
              maxWidth: 120,
            ),
            child: Tooltip(
              message: 'Record Status Type',
              child: TextButton(
                onPressed: (){},
                child: const Text('Record Status Type', overflow: TextOverflow.ellipsis, maxLines: 1,),
              ),
            ),
          ),
          const Text(' / '),
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 50,
              maxWidth: 120,
            ),
            child: Tooltip(
              message: 'Add Record Status Type',
              child: TextButton(
                onPressed: (){},
                child: const Text('Add Record Status Type', overflow: TextOverflow.ellipsis, maxLines: 1,),
              ),
            ),
          ),
          const Spacer(),
          IconButton(onPressed: (){}, icon: const Icon(Icons.filter_alt),),
          IconButton(onPressed: (){}, icon: const Icon(Icons.refresh),),
          IconButton(onPressed: (){}, icon: const Icon(Icons.add),),
        ],
      ),
    );
  }
}
