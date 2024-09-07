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

  HeroEntity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    primaryAttr = json['primary_attr'];
    attackType = json['attack_type'];
    roles = json['roles'].cast<String>();
    img = json['img'];
    icon = json['icon'];
    baseHealth = json['base_health'];
    baseHealthRegen = json['base_health_regen'];
    baseMana = json['base_mana'];
    baseManaRegen = json['base_mana_regen'];
    baseArmor = json['base_armor'];
    baseMr = json['base_mr'];
    baseAttackMin = json['base_attack_min'];
    baseAttackMax = json['base_attack_max'];
    baseStr = json['base_str'];
    baseAgi = json['base_agi'];
    baseInt = json['base_int'];
    strGain = json['str_gain'];
    agiGain = json['agi_gain'];
    intGain = json['int_gain'];
    attackRange = json['attack_range'];
    projectileSpeed = json['projectile_speed'];
    attackRate = json['attack_rate'];
    baseAttackTime = json['base_attack_time'];
    attackPoint = json['attack_point'];
    moveSpeed = json['move_speed'];
    turnRate = json['turn_rate'];
    cmEnabled = json['cm_enabled'];
    legs = json['legs'];
    dayVision = json['day_vision'];
    nightVision = json['night_vision'];
    localizedName = json['localized_name'];
    i1Pick = json['1_pick'];
    i1Win = json['1_win'];
    i2Pick = json['2_pick'];
    i2Win = json['2_win'];
    i3Pick = json['3_pick'];
    i3Win = json['3_win'];
    i4Pick = json['4_pick'];
    i4Win = json['4_win'];
    i5Pick = json['5_pick'];
    i5Win = json['5_win'];
    i6Pick = json['6_pick'];
    i6Win = json['6_win'];
    i7Pick = json['7_pick'];
    i7Win = json['7_win'];
    i8Pick = json['8_pick'];
    i8Win = json['8_win'];
    turboPicks = json['turbo_picks'];
    turboPicksTrend = json['turbo_picks_trend'].cast<int>();
    turboWins = json['turbo_wins'];
    turboWinsTrend = json['turbo_wins_trend'].cast<int>();
    proPick = json['pro_pick'];
    proWin = json['pro_win'];
    proBan = json['pro_ban'];
    pubPick = json['pub_pick'];
    pubPickTrend = json['pub_pick_trend'].cast<int>();
    pubWin = json['pub_win'];
    pubWinTrend = json['pub_win_trend'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['primary_attr'] = primaryAttr;
    data['attack_type'] = attackType;
    data['roles'] = roles;
    data['img'] = img;
    data['icon'] = icon;
    data['base_health'] = baseHealth;
    data['base_health_regen'] = baseHealthRegen;
    data['base_mana'] = baseMana;
    data['base_mana_regen'] = baseManaRegen;
    data['base_armor'] = baseArmor;
    data['base_mr'] = baseMr;
    data['base_attack_min'] = baseAttackMin;
    data['base_attack_max'] = baseAttackMax;
    data['base_str'] = baseStr;
    data['base_agi'] = baseAgi;
    data['base_int'] = baseInt;
    data['str_gain'] = strGain;
    data['agi_gain'] = agiGain;
    data['int_gain'] = intGain;
    data['attack_range'] = attackRange;
    data['projectile_speed'] = projectileSpeed;
    data['attack_rate'] = attackRate;
    data['base_attack_time'] = baseAttackTime;
    data['attack_point'] = attackPoint;
    data['move_speed'] = moveSpeed;
    data['turn_rate'] = turnRate;
    data['cm_enabled'] = cmEnabled;
    data['legs'] = legs;
    data['day_vision'] = dayVision;
    data['night_vision'] = nightVision;
    data['localized_name'] = localizedName;
    data['1_pick'] = i1Pick;
    data['1_win'] = i1Win;
    data['2_pick'] = i2Pick;
    data['2_win'] = i2Win;
    data['3_pick'] = i3Pick;
    data['3_win'] = i3Win;
    data['4_pick'] = i4Pick;
    data['4_win'] = i4Win;
    data['5_pick'] = i5Pick;
    data['5_win'] = i5Win;
    data['6_pick'] = i6Pick;
    data['6_win'] = i6Win;
    data['7_pick'] = i7Pick;
    data['7_win'] = i7Win;
    data['8_pick'] = i8Pick;
    data['8_win'] = i8Win;
    data['turbo_picks'] = turboPicks;
    data['turbo_picks_trend'] = turboPicksTrend;
    data['turbo_wins'] = turboWins;
    data['turbo_wins_trend'] = turboWinsTrend;
    data['pro_pick'] = proPick;
    data['pro_win'] = proWin;
    data['pro_ban'] = proBan;
    data['pub_pick'] = pubPick;
    data['pub_pick_trend'] = pubPickTrend;
    data['pub_win'] = pubWin;
    data['pub_win_trend'] = pubWinTrend;
    return data;
  }

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
