import 'package:flutter/material.dart';
import 'package:motioninternship_week5/app/data/models/story_model.dart';

class StoryWidget extends StatelessWidget {
  final StoryModel story;
  final void Function()? onTap;
  const StoryWidget({
    super.key,
    required this.story,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 72,
            height: 72,
            child: Stack(
              children: [
                SizedBox(
                  width: 72,
                  height: 72,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(72),
                    child: Image.asset(
                      'assets/images/${story.image}.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                story.isLoginAccount
                    ? Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              '',
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
          SizedBox(
            width: 72,
            child: Text(
              story.namaAkun,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
