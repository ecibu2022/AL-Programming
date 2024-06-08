codeunit 50188 MyCodeunit
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Page, Page::"Checklist Banner", 'OnOpenPageEvent', '', true, true)]
    local procedure CreateCheckList()
    var
        GuidedExperienceType: Enum "Guided Experience Type";
        CheckList: Codeunit Checklist;
        AllProfileMP: Record "All Profile" temporary;
    begin
        Clear(AllProfileMP);

        AddRoleToList(AllProfileMP, 'BUSINESS MANAGER EVALUATION');
        CheckList.Insert(GuidedExperienceType::"Manual Setup", ObjectType::Page, Page::"Jobs Setup", 1500, AllProfileMP, false);
        CheckList.Insert(GuidedExperienceType::Video, 'https://www.youtube.com/watch:v=csy41pMew4', 2000, AllProfileMP, false);
    end;

    local procedure AddRoleToList(var AllProfile: Record "All Profile" temporary; MyProfileID: Code[30])
    var
        Info: ModuleInfo;
    begin
        AllProfile.Scope := AllProfile.Scope::Tenant;
        NavApp.GetCurrentModuleInfo(Info);
        AllProfile."App ID" := Info.Id;
        AllProfile."Profile ID" := MyProfileID;
        AllProfile."Role Center ID" := 9022;
        AllProfile.Insert;
    end;
}