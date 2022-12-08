import 'dart:ui';

/// This class takes in a color for each province in the Netherlands.
///
/// - [groningen]
/// - [friesland]
/// - [drenthe]
/// - [overijssel]
/// - [flevoland]
/// - [gelderland]
/// - [utrecht]
/// - [northholland]
/// - [southholland]
/// - [zeeland]
/// - [northbrabant]
/// - [limburg]
class NetherlandsColors {
  /// Groningen
  final Color? groningen;

  /// Friesland
  final Color? friesland;

  /// Drenthe
  final Color? drenthe;

  /// Overijssel
  final Color? overijssel;

  /// Flevoland
  final Color? flevoland;

  /// Gelderland
  final Color? gelderland;

  /// Utrecht
  final Color? utrecht;

  /// Noord Holland
  final Color? northholland;

  /// Zuid Holland
  final Color? southholland;

  /// Zeeland
  final Color? zeeland;

  /// Noord Brabant
  final Color? northbrabant;

  /// Limburg
  final Color? limburg;

  const NetherlandsColors(
      {this.groningen,
      this.friesland,
      this.drenthe,
      this.overijssel,
      this.flevoland,
      this.gelderland,
      this.utrecht,
      this.northholland,
      this.southholland,
      this.zeeland,
      this.northbrabant,
      this.limburg});
}
