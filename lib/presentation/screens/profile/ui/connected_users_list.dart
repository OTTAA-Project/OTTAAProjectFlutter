import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ottaa_project_flutter/application/notifiers/user_notifier.dart';
import 'package:ottaa_project_flutter/application/providers/profile_provider.dart';
import 'package:ottaa_project_flutter/core/models/patient_user_model.dart';
import 'package:ottaa_project_flutter/presentation/screens/profile/ui/connected_user_widget.dart';
import 'package:ottaa_ui_kit/widgets.dart';

class ConnectedUsersList extends ConsumerStatefulWidget {
  const ConnectedUsersList({Key? key}) : super(key: key);

  @override
  ConsumerState<ConnectedUsersList> createState() => _ConnectedUsersListState();
}

class _ConnectedUsersListState extends ConsumerState<ConnectedUsersList> {
  @override
  Widget build(BuildContext context) {
    final user = ref.read(userNotifier);
    final provider = ref.watch(profileProvider);
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: provider.connectedUsersData.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 16),
          child: ConnectedUserWidget(
            title: provider.connectedUsersData[index].settings.data.name,
            image: provider.connectedUsersData[index].settings.data.avatar.network!,
            onPressed: () {
              provider.connectedUsersProfileDataExpanded[index] = !provider.connectedUsersProfileDataExpanded[index];
              provider.notify();
            },
            actionTap: () {
              provider.connectedUsersProfileDataExpanded[index] = !provider.connectedUsersProfileDataExpanded[index];
              provider.notify();
            },
            timeText: DateFormat("DD/MM/yy HH:mm").format(provider.connectedUsersData[index].settings.data.lastConnection),
            show: provider.connectedUsersProfileDataExpanded[index],
          ),
        );
      },
    );
  }
}
