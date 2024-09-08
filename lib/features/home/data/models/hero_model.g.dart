// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HeroModelAdapter extends TypeAdapter<HeroModel> {
  @override
  final int typeId = 0;

  @override
  HeroModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HeroModel(
      id: fields[0] as Object?,
      name: fields[1] as String?,
      primaryAttr: fields[2] as String?,
      attackType: fields[3] as String?,
      roles: (fields[4] as List?)?.cast<String>(),
      img: fields[5] as String?,
      icon: fields[6] as String?,
      baseHealth: fields[7] as Object?,
      baseHealthRegen: fields[8] as Object?,
      baseMana: fields[9] as Object?,
      baseManaRegen: fields[10] as Object?,
      baseArmor: fields[11] as Object?,
      baseMr: fields[12] as Object?,
      baseAttackMin: fields[13] as Object?,
      baseAttackMax: fields[14] as Object?,
      baseStr: fields[15] as Object?,
      baseAgi: fields[16] as Object?,
      baseInt: fields[17] as Object?,
      strGain: fields[18] as Object?,
      agiGain: fields[19] as Object?,
      intGain: fields[20] as Object?,
      attackRange: fields[21] as Object?,
      projectileSpeed: fields[22] as Object?,
      attackRate: fields[23] as Object?,
      baseAttackTime: fields[24] as Object?,
      attackPoint: fields[25] as Object?,
      moveSpeed: fields[26] as Object?,
      turnRate: fields[27] as Object?,
      cmEnabled: fields[28] as bool?,
      legs: fields[29] as Object?,
      dayVision: fields[30] as Object?,
      nightVision: fields[31] as Object?,
      localizedName: fields[32] as String?,
      i1Pick: fields[33] as int?,
      i1Win: fields[34] as int?,
      i2Pick: fields[35] as int?,
      i2Win: fields[36] as int?,
      i3Pick: fields[37] as int?,
      i3Win: fields[38] as int?,
      i4Pick: fields[39] as int?,
      i4Win: fields[40] as int?,
      i5Pick: fields[41] as int?,
      i5Win: fields[42] as int?,
      i6Pick: fields[43] as int?,
      i6Win: fields[44] as int?,
      i7Pick: fields[45] as int?,
      i7Win: fields[46] as int?,
      i8Pick: fields[47] as int?,
      i8Win: fields[48] as int?,
      turboPicks: fields[49] as Object?,
      turboPicksTrend: (fields[50] as List?)?.cast<int>(),
      turboWins: fields[51] as Object?,
      turboWinsTrend: (fields[52] as List?)?.cast<int>(),
      proPick: fields[53] as Object?,
      proWin: fields[54] as Object?,
      proBan: fields[55] as Object?,
      pubPick: fields[56] as Object?,
      pubPickTrend: (fields[57] as List?)?.cast<int>(),
      pubWin: fields[58] as Object?,
      pubWinTrend: (fields[59] as List?)?.cast<int>(),
    );
  }

  @override
  void write(BinaryWriter writer, HeroModel obj) {
    writer
      ..writeByte(60)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.primaryAttr)
      ..writeByte(3)
      ..write(obj.attackType)
      ..writeByte(4)
      ..write(obj.roles)
      ..writeByte(5)
      ..write(obj.img)
      ..writeByte(6)
      ..write(obj.icon)
      ..writeByte(7)
      ..write(obj.baseHealth)
      ..writeByte(8)
      ..write(obj.baseHealthRegen)
      ..writeByte(9)
      ..write(obj.baseMana)
      ..writeByte(10)
      ..write(obj.baseManaRegen)
      ..writeByte(11)
      ..write(obj.baseArmor)
      ..writeByte(12)
      ..write(obj.baseMr)
      ..writeByte(13)
      ..write(obj.baseAttackMin)
      ..writeByte(14)
      ..write(obj.baseAttackMax)
      ..writeByte(15)
      ..write(obj.baseStr)
      ..writeByte(16)
      ..write(obj.baseAgi)
      ..writeByte(17)
      ..write(obj.baseInt)
      ..writeByte(18)
      ..write(obj.strGain)
      ..writeByte(19)
      ..write(obj.agiGain)
      ..writeByte(20)
      ..write(obj.intGain)
      ..writeByte(21)
      ..write(obj.attackRange)
      ..writeByte(22)
      ..write(obj.projectileSpeed)
      ..writeByte(23)
      ..write(obj.attackRate)
      ..writeByte(24)
      ..write(obj.baseAttackTime)
      ..writeByte(25)
      ..write(obj.attackPoint)
      ..writeByte(26)
      ..write(obj.moveSpeed)
      ..writeByte(27)
      ..write(obj.turnRate)
      ..writeByte(28)
      ..write(obj.cmEnabled)
      ..writeByte(29)
      ..write(obj.legs)
      ..writeByte(30)
      ..write(obj.dayVision)
      ..writeByte(31)
      ..write(obj.nightVision)
      ..writeByte(32)
      ..write(obj.localizedName)
      ..writeByte(33)
      ..write(obj.i1Pick)
      ..writeByte(34)
      ..write(obj.i1Win)
      ..writeByte(35)
      ..write(obj.i2Pick)
      ..writeByte(36)
      ..write(obj.i2Win)
      ..writeByte(37)
      ..write(obj.i3Pick)
      ..writeByte(38)
      ..write(obj.i3Win)
      ..writeByte(39)
      ..write(obj.i4Pick)
      ..writeByte(40)
      ..write(obj.i4Win)
      ..writeByte(41)
      ..write(obj.i5Pick)
      ..writeByte(42)
      ..write(obj.i5Win)
      ..writeByte(43)
      ..write(obj.i6Pick)
      ..writeByte(44)
      ..write(obj.i6Win)
      ..writeByte(45)
      ..write(obj.i7Pick)
      ..writeByte(46)
      ..write(obj.i7Win)
      ..writeByte(47)
      ..write(obj.i8Pick)
      ..writeByte(48)
      ..write(obj.i8Win)
      ..writeByte(49)
      ..write(obj.turboPicks)
      ..writeByte(50)
      ..write(obj.turboPicksTrend)
      ..writeByte(51)
      ..write(obj.turboWins)
      ..writeByte(52)
      ..write(obj.turboWinsTrend)
      ..writeByte(53)
      ..write(obj.proPick)
      ..writeByte(54)
      ..write(obj.proWin)
      ..writeByte(55)
      ..write(obj.proBan)
      ..writeByte(56)
      ..write(obj.pubPick)
      ..writeByte(57)
      ..write(obj.pubPickTrend)
      ..writeByte(58)
      ..write(obj.pubWin)
      ..writeByte(59)
      ..write(obj.pubWinTrend);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HeroModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
