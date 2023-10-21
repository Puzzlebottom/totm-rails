
AGENT {
  id: number
  encounterId: number,
  name: string,
  notes: string,
  aggro: number,
  saves: {
    str: number,
    dex: number,
    con: number,
    int: number,
    wis: number,
    cha: number
  }
  passives: {
    perception: number
    investigation: number,
    insight: number,
  }
  vitals: {
    initiative: number,
    initiativeBonus: number,
    maxHitPoints: number,
    hitPoints: number,
    armorClass: number,
    attackBonus: number,
    spellSave: number
  }
  actions: {
    action: boolean,
    move: boolean,
    bonus: boolean,
    reaction: boolean,
    free: boolean,
    exclamation: boolean
  }
}


CLUSTER {
  id: number,
  encounterId: number,
  ownerId: number,
  name: string,
  type: string (location, melee, condition, status, spell),
  agents: number[],
  timer: {
    notes: string,
    initiative: number,
    count: number,
    expires: boolean,
    reminderText: string,
    reminderTriggers: {
      ownerStart: boolean,
      ownerEnd: boolean,
      memberStart: boolean,
      memberEnd: boolean,
      allStart: boolean,
      allEnd: boolean,
      roundStart: boolean,
      roundEnd: boolean,
      expiry: boolean
    }
  }
}

ENCOUNTER {
  name: string,
  description: string,
  isActive: boolean,
  round: number,
  turn: number,
  owner: number,
  createdAt: number,
}

