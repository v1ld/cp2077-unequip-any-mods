@wrapMethod(RPGManager)
public final static func CanPartBeUnequipped(data: InventoryItemData, slotId: TweakDBID) -> Bool {
  let itemID: ItemID = data.ID;
  let type: gamedataItemType = RPGManager.GetItemType(itemID);
  if RPGManager.IsWeaponMod(type) || RPGManager.IsClothingMod(type) {
    return true; // v1ld: was data.IsIconic;
  }
  return wrappedMethod(data, slotId);
}
