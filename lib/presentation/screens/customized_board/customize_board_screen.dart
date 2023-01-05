import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ottaa_project_flutter/application/common/extensions/translate_string.dart';
import 'package:ottaa_project_flutter/application/providers/customise_provider.dart';
import 'package:ottaa_project_flutter/application/router/app_routes.dart';
import 'package:ottaa_ui_kit/widgets.dart';

class CustomizeBoardScreen extends ConsumerStatefulWidget {
  const CustomizeBoardScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<CustomizeBoardScreen> createState() =>
      _CustomizeBoardScreenState();
}

class _CustomizeBoardScreenState extends ConsumerState<CustomizeBoardScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(customiseProvider);
    return provider.pictosFetched
        ? ListView.builder(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
            shrinkWrap: true,
            itemCount: provider.groups.length,
            itemBuilder: (context, index) => Container(
              width: MediaQuery.of(context).size.width - 48,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                //todo: add the values here according to the language
                child: PictogramCard(
                  title: provider.groups[index].texto.es,
                  actionText: "customize.subtitle".trl,
                  pictogram: CachedNetworkImageProvider(
                    provider.groups[index].imagen.pictoEditado != null
                        ? provider.groups[index].imagen.pictoEditado!
                        : provider.groups[index].imagen.picto,
                  ),
                  status: !provider.groups[index].blocked!,
                  onChange: (bool a) {
                    provider.groups[index].blocked =
                        !provider.groups[index].blocked!;
                    provider.notify();
                  },
                  onPressed: () {
                    print('pressed');
                    provider.selectedGroup = provider.groups[index].texto.es;
                    context.push(AppRoutes.customizePictoScreen);
                  },
                ),
              ),
            ),
          )
        : const Center(
            child: CircularProgressIndicator(),
          );
  }
}
