namespace SuperMedals {
    // Get the time for the Super Bronze medal in ms. Returns 0 if no
    // medal is available (either because the player is not in a map, the map
    // has no this medal, or the request failed).
    import uint GetSBronzeTime() from "SuperMedals";

    // Get the time for the Super Silver medal in ms. Returns 0 if no
    // medal is available (either because the player is not in a map, the map
    // has no this medal, or the request failed).
    import uint GetSSilverTime() from "SuperMedals";

    // Get the time for the Super Gold medal in ms. Returns 0 if no
    // medal is available (either because the player is not in a map, the map
    // has no this medal, or the request failed).
    import uint GetSGoldTime() from "SuperMedals";
}