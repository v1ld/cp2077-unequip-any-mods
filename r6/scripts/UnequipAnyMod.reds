@replaceMethod(RPGManager)
public final static func CanPartBeUnequipped(data: InventoryItemData, slotId: TweakDBID) -> Bool {
  let itemID: ItemID = data.ID;
  let type: gamedataItemType = RPGManager.GetItemType(itemID);
  if RPGManager.IsWeaponMod(type) || RPGManager.IsClothingMod(type) {
    return true; // v1ld: was data.IsIconic;
  };
  if Equals(type, gamedataItemType.Prt_Fragment) {
    return !RPGManager.IsNonModifableSlot(slotId);
  };
  if Equals(type, gamedataItemType.Prt_ShortScope) || Equals(type, gamedataItemType.Prt_LongScope) || Equals(type, gamedataItemType.Prt_Muzzle) || Equals(type, gamedataItemType.Prt_HandgunMuzzle) || Equals(type, gamedataItemType.Prt_RifleMuzzle) || Equals(type, gamedataItemType.Prt_Program) {
    return true;
  };
  return false;
}
