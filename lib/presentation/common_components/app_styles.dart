import 'package:flutter/material.dart';

extension AppStyles on BuildContext {
  TextStyle get titleStyle {
    final theme = Theme.of(this);
    return theme.textTheme.headlineLarge!.copyWith(
      color: theme.colorScheme.primary,
    );
  }

  TextStyle get bodyStyle {
    final theme = Theme.of(this);
    return theme.textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.onSurface,
    );
  }

  TextStyle get descriptionStyle {
    final theme = Theme.of(this);
    return theme.textTheme.bodyMedium!.copyWith(
      color: theme.colorScheme.onSurface,
    );
  }

  LinearGradient get bgGradient {
    final theme = Theme.of(this).colorScheme;
    return LinearGradient(
      colors: [theme.surfaceContainer, theme.surfaceContainerHigh],
    );
  }

  ColorScheme get themeColors => Theme.of(this).colorScheme;
  Color get cardColor => Theme.of(this).colorScheme.surfaceContainerHigh;
}
