import 'package:dota2_heroes/features/home/domain/entities/hero_entity.dart';

class HeroModel extends HeroEntity {
  HeroModel(
      {super.id,
      super.name,
      super.primaryAttr,
      super.attackType,
      super.roles,
      super.img,
      super.icon,
      super.baseHealth,
      super.baseHealthRegen,
      super.baseMana,
      super.baseManaRegen,
      super.baseArmor,
      super.baseMr,
      super.baseAttackMin,
      super.baseAttackMax,
      super.baseStr,
      super.baseAgi,
      super.baseInt,
      super.strGain,
      super.agiGain,
      super.intGain,
      super.attackRange,
      super.projectileSpeed,
      super.attackRate,
      super.baseAttackTime,
      super.attackPoint,
      super.moveSpeed,
      super.turnRate,
      super.cmEnabled,
      super.legs,
      super.dayVision,
      super.nightVision,
      super.localizedName,
      super.i1Pick,
      super.i1Win,
      super.i2Pick,
      super.i2Win,
      super.i3Pick,
      super.i3Win,
      super.i4Pick,
      super.i4Win,
      super.i5Pick,
      super.i5Win,
      super.i6Pick,
      super.i6Win,
      super.i7Pick,
      super.i7Win,
      super.i8Pick,
      super.i8Win,
      super.turboPicks,
      super.turboPicksTrend,
      super.turboWins,
      super.turboWinsTrend,
      super.proPick,
      super.proWin,
      super.proBan,
      super.pubPick,
      super.pubPickTrend,
      super.pubWin,
      super.pubWinTrend});

  HeroModel.fromJson(Map<String, dynamic> json) {
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

  factory HeroModel.fromEntity(HeroEntity entity) {
    return HeroModel(
      id: entity.id,
      name: entity.name,
      primaryAttr: entity.primaryAttr,
      attackType: entity.attackType,
      roles: entity.roles,
      img: entity.img,
      icon: entity.icon,
      baseHealth: entity.baseHealth,
      baseHealthRegen: entity.baseHealthRegen,
      baseMana: entity.baseMana,
      baseManaRegen: entity.baseManaRegen,
      baseArmor: entity.baseArmor,
      baseMr: entity.baseMr,
      baseAttackMin: entity.baseAttackMin,
      baseAttackMax: entity.baseAttackMax,
      baseStr: entity.baseStr,
      baseAgi: entity.baseAgi,
      baseInt: entity.baseInt,
      strGain: entity.strGain,
      agiGain: entity.agiGain,
      intGain: entity.intGain,
      attackRange: entity.attackRange,
      projectileSpeed: entity.projectileSpeed,
      attackRate: entity.attackRate,
      baseAttackTime: entity.baseAttackTime,
      attackPoint: entity.attackPoint,
      moveSpeed: entity.moveSpeed,
      turnRate: entity.turnRate,
      cmEnabled: entity.cmEnabled,
      legs: entity.legs,
      dayVision: entity.dayVision,
      nightVision: entity.nightVision,
      localizedName: entity.localizedName,
      i1Pick: entity.i1Pick,
      i1Win: entity.i1Win,
      i2Pick: entity.i2Pick,
      i2Win: entity.i2Win,
      i3Pick: entity.i3Pick,
      i3Win: entity.i3Win,
      i4Pick: entity.i4Pick,
      i4Win: entity.i4Win,
      i5Pick: entity.i5Pick,
      i5Win: entity.i5Win,
      i6Pick: entity.i6Pick,
      i6Win: entity.i6Win,
      i7Pick: entity.i7Pick,
      i7Win: entity.i7Win,
      i8Pick: entity.i8Pick,
      i8Win: entity.i8Win,
      turboPicks: entity.turboPicks,
      turboPicksTrend: entity.turboPicksTrend,
      turboWins: entity.turboWins,
      turboWinsTrend: entity.turboWinsTrend,
      proPick: entity.proPick,
      proWin: entity.proWin,
      proBan: entity.proBan,
      pubPick: entity.pubPick,
      pubPickTrend: entity.pubPickTrend,
      pubWin: entity.pubWin,
      pubWinTrend: entity.pubWinTrend,
    );
  }
}
