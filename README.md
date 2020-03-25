<img src="https://github.com/aloisdeniel/sleek_spacing/raw/master/sleek_spacing_logo.png" width="100%">

<p>
  <a href="https://pub.dartlang.org/packages/sleek_spacing"><img src="https://img.shields.io/pub/v/sleek_spacing.svg"></a>
  <a href="https://www.buymeacoffee.com/aloisdeniel">
    <img src="https://img.shields.io/badge/$-donate-ff69b4.svg?maxAge=2592000&amp;style=flat">
  </a>
</p>

Uniformize your margins, paddings and gaps.

<img height="82" src="https://github.com/aloisdeniel/sleek_spacing/raw/master/images/gaps.png">

## Install

Add the dependency to your `pubspec.yaml` :

```yaml
dependencies:
    sleek_spacing: <version>
```

## Quick start

```dart
 SleekColumn(
    padding: SleekInsets.medium(),
    spaceBetween: SleekSpace.normal,
    children: <Widget>[
        Widget(),
        SleekVerticalGap.small(),
        Widget(),
        SleekVerticalGap.big(),
        Widget(),
    ],
)
```

## Usage

### Defining global spacing

```dart
SleekSpacing(
    data: SleekSpacingData(normal: 12),
    child: <your app>,
)
```

```dart
SleekSpacing(
    data: SleekSpacingData(
      extraSmall: 2.0,
      small: 6.0,
      normal: 12.0,
      medium: 24.0,
      big: 48.0,
      extraBig: 96.0,
    ),
    child: <your app>,
)
```

### Accessing spaces

```dart
final spacing = SleekSpacing.of(context);
return SizedBox(width: spacing.small);
```

### Widgets

#### Gap

<img height="82" src="https://github.com/aloisdeniel/sleek_spacing/raw/master/images/gaps.png">

You can add an horizontal or vertical gap between other widgets.

```dart
Column(
  children: <Widget>[
    Text('Hello'),
    SleekGap.vertical(SleekSpace.small);
    Text('World'),
  ],
),
```

```dart
Row(
  children: <Widget>[
    Text('Hello'),
    SleekGap.horizontal(SleekSpace.small);
    Text('World'),
  ],
),
```

If your gap is in a `SleekColumn`, `SleekRow` or `SleekWrap`, it can deduce the current axis and makes its needed declaration more concise.

```dart
SleekColumn(
  children: <Widget>[
    Text('Hello'),
    SleekGap.small();
    Text('World'),
  ],
),
```

```dart
SleekRow(
  children: <Widget>[
    Text('Hello'),
    SleekGap.small();
    Text('World'),
  ],
),
```

#### Padding

<img height="203" src="https://github.com/aloisdeniel/sleek_spacing/raw/master/images/padding.png">

```dart
SleekPadding(
  vertical: SleekSpace.small,
  left: SleekSpace.medium,
  child: <child>
)
```

```dart
SleekPadding.small(
  child: <child>
)
```

```dart
SleekPadding.small(
  sides: SleekSides.notRight, // All but right
  child: <child>
)
```

```dart
SleekPadding.small(
  sides: SleekSides.vertical + SleekSides.left, // All but right
  child: <child>
)
```

```dart
SleekPadding.small(
  sides: SleekSides.all - SleekSides.bottom, // All but bottom
  child: <child>
)
```

#### Column

<img height="190" src="https://github.com/aloisdeniel/sleek_spacing/raw/master/images/column.png">

A `SleekColumn` is like a `Column` with `padding` and `spaceBetween` additional properties.

```dart
 SleekColumn(
    padding: SleekInsets.medium(),
    spaceBetween: SleekSpace.normal,
    children: <children>,
)
```

#### Row

<img height="128" src="https://github.com/aloisdeniel/sleek_spacing/raw/master/images/row.png">

A `SleekRow` is like a `Row` with `padding` and `spaceBetween` additional properties.

```dart
 SleekRow(
    padding: SleekInsets.medium(),
    spaceBetween: SleekSpace.normal,
    children: <children>,
)
```

#### Wrap

<img height="140" src="https://github.com/aloisdeniel/sleek_spacing/raw/master/images/wrap.png">

A `SleekWrap` is like a `Wrap` with a `padding` additional property.

```dart
 SleekWrap(
    padding: SleekInsets.medium(),
    spacing: SleekSpace.normal,
    runSpacing: SleekSpace.normal,
    children: <children>,
)
```