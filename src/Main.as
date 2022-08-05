const bool isDevMode = Meta::IsDeveloperMode();

void Update(float dt)
{
    if (GetCurrentMap() !is null){
        if (!SuperMedals::MedalsLoaded) {
            SuperMedals::LoadMedalTimes();
        }
    } else {
        SuperMedals::ResetMedalTimes();
    }
}

CGameCtnChallenge@ GetCurrentMap(){
    CTrackMania@ app = cast<CTrackMania>(GetApp());
    return app.RootMap;
}