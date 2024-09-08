import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

class HeroEntity extends Equatable {
  @HiveField(0)
  Object? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? primaryAttr;
  @HiveField(3)
  String? attackType;
  @HiveField(4)
  List<String>? roles;
  @HiveField(5)
  String? img;
  @HiveField(6)
  String? icon;
  @HiveField(7)
  Object? baseHealth;
  @HiveField(8)
  Object? baseHealthRegen;
  @HiveField(9)
  Object? baseMana;
  @HiveField(10)
  Object? baseManaRegen;
  @HiveField(11)
  Object? baseArmor;
  @HiveField(12)
  Object? baseMr;
  @HiveField(13)
  Object? baseAttackMin;
  @HiveField(14)
  Object? baseAttackMax;
  @HiveField(15)
  Object? baseStr;
  @HiveField(16)
  Object? baseAgi;
  @HiveField(17)
  Object? baseInt;
  @HiveField(18)
  Object? strGain;
  @HiveField(19)
  Object? agiGain;
  @HiveField(20)
  Object? intGain;
  @HiveField(21)
  Object? attackRange;
  @HiveField(22)
  Object? projectileSpeed;
  @HiveField(23)
  Object? attackRate;
  @HiveField(24)
  Object? baseAttackTime;
  @HiveField(25)
  Object? attackPoint;
  @HiveField(26)
  Object? moveSpeed;
  @HiveField(27)
  Object? turnRate;
  @HiveField(28)
  bool? cmEnabled;
  @HiveField(29)
  Object? legs;
  @HiveField(30)
  Object? dayVision;
  @HiveField(31)
  Object? nightVision;
  @HiveField(32)
  String? localizedName;
  @HiveField(33)
  int? i1Pick;
  @HiveField(34)
  int? i1Win;
  @HiveField(35)
  int? i2Pick;
  @HiveField(36)
  int? i2Win;
  @HiveField(37)
  int? i3Pick;
  @HiveField(38)
  int? i3Win;
  @HiveField(39)
  int? i4Pick;
  @HiveField(40)
  int? i4Win;
  @HiveField(41)
  int? i5Pick;
  @HiveField(42)
  int? i5Win;
  @HiveField(43)
  int? i6Pick;
  @HiveField(44)
  int? i6Win;
  @HiveField(45)
  int? i7Pick;
  @HiveField(46)
  int? i7Win;
  @HiveField(47)
  int? i8Pick;
  @HiveField(48)
  int? i8Win;
  @HiveField(49)
  Object? turboPicks;
  @HiveField(50)
  List<int>? turboPicksTrend;
  @HiveField(51)
  Object? turboWins;
  @HiveField(52)
  List<int>? turboWinsTrend;
  @HiveField(53)
  Object? proPick;
  @HiveField(54)
  Object? proWin;
  @HiveField(55)
  Object? proBan;
  @HiveField(56)
  Object? pubPick;
  @HiveField(57)
  List<int>? pubPickTrend;
  @HiveField(58)
  Object? pubWin;
  @HiveField(59)
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
