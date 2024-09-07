import 'package:equatable/equatable.dart';

class HeroEntity extends Equatable {
  int? id;
  String? name;
  String? primaryAttr;
  String? attackType;
  List<String>? roles;
  String? img;
  String? icon;
  int? baseHealth;
  int? baseHealthRegen;
  int? baseMana;
  int? baseManaRegen;
  int? baseArmor;
  int? baseMr;
  int? baseAttackMin;
  int? baseAttackMax;
  int? baseStr;
  int? baseAgi;
  int? baseInt;
  double? strGain;
  double? agiGain;
  double? intGain;
  int? attackRange;
  int? projectileSpeed;
  double? attackRate;
  int? baseAttackTime;
  double? attackPoint;
  int? moveSpeed;
  Null turnRate;
  bool? cmEnabled;
  int? legs;
  int? dayVision;
  int? nightVision;
  String? localizedName;
  int? i1Pick;
  int? i1Win;
  int? i2Pick;
  int? i2Win;
  int? i3Pick;
  int? i3Win;
  int? i4Pick;
  int? i4Win;
  int? i5Pick;
  int? i5Win;
  int? i6Pick;
  int? i6Win;
  int? i7Pick;
  int? i7Win;
  int? i8Pick;
  int? i8Win;
  int? turboPicks;
  List<int>? turboPicksTrend;
  int? turboWins;
  List<int>? turboWinsTrend;
  int? proPick;
  int? proWin;
  int? proBan;
  int? pubPick;
  List<int>? pubPickTrend;
  int? pubWin;
  List<int>? pubWinTrend;

  HeroEntity(
      {this.id,
      this.name,
      this.primaryAttr,
      this.attackType,
      this.roles,
      this.img,
      this.icon,
      this.baseHealth,
      this.baseHealthRegen,
      this.baseMana,
      this.baseManaRegen,
      this.baseArmor,
      this.baseMr,
      this.baseAttackMin,
      this.baseAttackMax,
      this.baseStr,
      this.baseAgi,
      this.baseInt,
      this.strGain,
      this.agiGain,
      this.intGain,
      this.attackRange,
      this.projectileSpeed,
      this.attackRate,
      this.baseAttackTime,
      this.attackPoint,
      this.moveSpeed,
      this.turnRate,
      this.cmEnabled,
      this.legs,
      this.dayVision,
      this.nightVision,
      this.localizedName,
      this.i1Pick,
      this.i1Win,
      this.i2Pick,
      this.i2Win,
      this.i3Pick,
      this.i3Win,
      this.i4Pick,
      this.i4Win,
      this.i5Pick,
      this.i5Win,
      this.i6Pick,
      this.i6Win,
      this.i7Pick,
      this.i7Win,
      this.i8Pick,
      this.i8Win,
      this.turboPicks,
      this.turboPicksTrend,
      this.turboWins,
      this.turboWinsTrend,
      this.proPick,
      this.proWin,
      this.proBan,
      this.pubPick,
      this.pubPickTrend,
      this.pubWin,
      this.pubWinTrend});

  @override
  List<Object?> get props {
    return [
      id,
      name,
      primaryAttr,
      attackType,
      roles,
      img,
      icon,
      baseHealth,
      baseHealthRegen,
      baseMana,
      baseManaRegen,
      baseArmor,
      baseMr,
      baseAttackMin,
      baseAttackMax,
      baseStr,
      baseAgi,
      baseInt,
      strGain,
      agiGain,
      intGain,
      attackRange,
      projectileSpeed,
      attackRate,
      baseAttackTime,
      attackPoint,
      moveSpeed,
      turnRate,
      cmEnabled,
      legs,
      dayVision,
      nightVision,
      localizedName,
      i1Pick,
      i1Win,
      i2Pick,
      i2Win,
      i3Pick,
      i3Win,
      i4Pick,
      i4Win,
      i5Pick,
      i5Win,
      i6Pick,
      i6Win,
      i7Pick,
      i7Win,
      i8Pick,
      i8Win,
      turboPicks,
      turboPicksTrend,
      turboWins,
      turboWinsTrend,
      proPick,
      proWin,
      proBan,
      pubPick,
      pubPickTrend,
      pubWin,
      pubWinTrend
    ];
  }
}
