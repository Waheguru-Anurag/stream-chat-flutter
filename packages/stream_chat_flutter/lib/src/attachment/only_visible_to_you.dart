import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

/// Widget that shows that a message is only visible to the current user
class OnlyVisibleToYou extends StatelessWidget {
  /// Construct a new OnlyVisibleToYou widget
  const OnlyVisibleToYou({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          StreamSvgIcon.eye(
            color: StreamChatTheme.of(context).colorTheme.grey,
            size: 16,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            'Only visible to you',
            style: StreamChatTheme.of(context).textTheme.footnote.copyWith(
                  color: StreamChatTheme.of(context).colorTheme.grey,
                ),
          ),
        ],
      );
}
