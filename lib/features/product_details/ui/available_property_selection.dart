import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:slash_dot/slash_dot.dart';

class AvailablePropertySelection extends StatelessWidget {
  final AvailablePropertyValues availableProperty;
  final void Function(PropertyValue) onChanged;
  final ProductVariation selectedVariation;

  const AvailablePropertySelection({
    required this.availableProperty,
    required this.onChanged,
    required this.selectedVariation,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, Set<int>> propsIdsByValue =
        availableProperty.values.groupFoldBy(
      (p) => p.value.toLowerCase().trim(),
      (g, p) => {...g ?? {}, p.id},
    );

    final uniqueProps = EqualitySet.from(
      EqualityBy<PropertyValue, String>((p) => p.value.trim().toLowerCase()),
      availableProperty.values,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (uniqueProps.length == 1)
            Text(
              availableProperty.property.name[0].toUpperCase() +
                  availableProperty.property.name.substring(1),
              style: Theme.of(context).textTheme.titleMedium,
            )
          else
            Text(
              'Select ' + availableProperty.property.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          const SizedBox(height: 10),
          SizedBox(
            height: 70,
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (final prop in uniqueProps)
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: availableProperty.property == PropertyType.color
                            ? _ColorOption(
                                prop: prop,
                                onChanged: onChanged,
                                isSelected: propsIdsByValue[
                                            prop.value.toLowerCase().trim()]
                                        ?.contains(selectedVariation.id) ??
                                    false,
                              )
                            : ChoiceChip(
                                label: Text(prop.value),
                                selected: propsIdsByValue[
                                            prop.value.toLowerCase().trim()]
                                        ?.contains(selectedVariation.id) ??
                                    false,
                                onSelected: (selected) {
                                  if (selected) {
                                    onChanged(prop);
                                  }
                                },
                              ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ColorOption extends StatelessWidget {
  const _ColorOption({
    required this.prop,
    this.isSelected = false,
    this.onChanged,
  });

  final PropertyValue prop;
  final void Function(PropertyValue)? onChanged;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final int? colorValue =
        int.tryParse(prop.value.replaceFirst('#', ''), radix: 16);
    final bool hasImage = colorValue == null;

    if (hasImage) {
      return Material(
        type: MaterialType.card,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onChanged != null ? () => onChanged!(prop) : null,
          child: SizedBox(
            height: 40,
            width: 40,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SlashDotPhoto(
                  prop.value,
                  width: 40,
                  height: 40,
                ),
                if (isSelected)
                  const Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
              ],
            ),
          ),
        ),
      );
    }

    return Material(
      type: MaterialType.circle,
      color: Color(colorValue).withValues(alpha: 1),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onChanged != null ? () => onChanged!(prop) : null,
        child: SizedBox(
          width: 40,
          height: 40,
          child: isSelected
              ? const Icon(
                  Icons.check,
                  color: Colors.white,
                )
              : null,
        ),
      ),
    );
  }
}
