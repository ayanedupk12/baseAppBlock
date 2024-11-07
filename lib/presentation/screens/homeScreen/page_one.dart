import 'package:flutter/material.dart';
import 'package:avenueBellevue/businessLogic/cubit/counterCubit/counter_cubit.dart';
import 'package:avenueBellevue/presentation/widgets/text_view_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../helper/flavors/flavor_config.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => context.read<CounterCubit>().increment(),
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterCubit>().decrement(),
          ),
        ],
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, count) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextViewWidget(
                  text: "PAGE ONE",
                  textStyle: Theme.of(context).textTheme.titleLarge),
              TextViewWidget(
                  text: FlavorConfig.instance?.values.apiBaseUrl ?? "",
                  textStyle: Theme.of(context).textTheme.titleMedium),
              TextViewWidget(
                  text: count.toString(),
                  textStyle: Theme.of(context).textTheme.displayMedium),
            ],
          ),
        ),
      ),
    );
  }
}
