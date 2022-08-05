namespace SuperMedals
{
    bool MedalsLoaded = false;
    uint AuthorMedalTime;
    uint SuperBronzeMedalTime;
    uint SuperSilverMedalTime;
    uint SuperGoldMedalTime;
    uint ChampionMedalTime;

    void LoadMedalTimes()
    {
        if (ChampionMedals::GetCMTime() > 0) {
            ChampionMedalTime = ChampionMedals::GetCMTime();
            AuthorMedalTime = GetAuthorMedalTime();

            uint diff = AuthorMedalTime - ChampionMedalTime;
            uint SplitMedals = diff / 4;

            SuperBronzeMedalTime = AuthorMedalTime - SplitMedals;
            SuperSilverMedalTime = AuthorMedalTime - (SplitMedals * 2);
            SuperGoldMedalTime = AuthorMedalTime - (SplitMedals * 3);

            MedalsLoaded = true;

            print("Medal times loaded.");
            if (isDevMode) {
                print("Author medal time: " + AuthorMedalTime);
                print("Super bronze medal time: " + SuperBronzeMedalTime);
                print("Super silver medal time: " + SuperSilverMedalTime);
                print("Super gold medal time: " + SuperGoldMedalTime);
                print("Champion medal time: " + ChampionMedalTime);
                print("diff = AT - CM = " + diff);
                print("diff / 4 = " + SplitMedals);
            }
        }
    }

    void ResetMedalTimes()
    {
        MedalsLoaded = false;
        ChampionMedalTime = 0;
        AuthorMedalTime = 0;
        SuperBronzeMedalTime = 0;
        SuperSilverMedalTime = 0;
        SuperGoldMedalTime = 0;
    }

    uint GetAuthorMedalTime(){
        return GetCurrentMap().TMObjective_AuthorTime;
    }

    uint GetSBronzeTime() {
        return SuperBronzeMedalTime;
    }

    uint GetSSilverTime() {
        return SuperSilverMedalTime;
    }

    uint GetSGoldTime() {
        return SuperGoldMedalTime;
    }
}