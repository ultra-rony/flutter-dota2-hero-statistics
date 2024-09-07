import 'package:equatable/equatable.dart';

class HeroEntity extends Equatable {
  Object? id;
  String? name;
  String? primaryAttr;
  String? attackType;
  List<String>? roles;
  String? img;
  String? icon;
  Object? baseHealth;
  Object? baseHealthRegen;
  Object? baseMana;
  Object? baseManaRegen;
  Object? baseArmor;
  Object? baseMr;
  Object? baseAttackMin;
  Object? baseAttackMax;
  Object? baseStr;
  Object? baseAgi;
  Object? baseInt;
  Object? strGain;
  Object? agiGain;
  Object? intGain;
  Object? attackRange;
  Object? projectileSpeed;
  Object? attackRate;
  Object? baseAttackTime;
  Object? attackPoint;
  Object? moveSpeed;
  Object? turnRate;
  bool? cmEnabled;
  Object? legs;
  Object? dayVision;
  Object? nightVision;
  String? localizedName;
  Object? i1Pick;
  Object? i1Win;
  Object? i2Pick;
  Object? i2Win;
  Object? i3Pick;
  Object? i3Win;
  Object? i4Pick;
  Object? i4Win;
  Object? i5Pick;
  Object? i5Win;
  Object? i6Pick;
  Object? i6Win;
  Object? i7Pick;
  Object? i7Win;
  Object? i8Pick;
  Object? i8Win;
  Object? turboPicks;
  List<int>? turboPicksTrend;
  Object? turboWins;
  List<int>? turboWinsTrend;
  Object? proPick;
  Object? proWin;
  Object? proBan;
  Object? pubPick;
  List<int>? pubPickTrend;
  Object? pubWin;
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
