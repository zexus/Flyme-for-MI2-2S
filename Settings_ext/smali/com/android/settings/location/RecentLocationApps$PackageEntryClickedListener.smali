.class Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic ada:Lcom/android/settings/location/RecentLocationApps;

.field private mPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/location/RecentLocationApps;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;->ada:Lcom/android/settings/location/RecentLocationApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 80
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 81
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;->ada:Lcom/android/settings/location/RecentLocationApps;

    invoke-static {v0}, Lcom/android/settings/location/RecentLocationApps;->a(Lcom/android/settings/location/RecentLocationApps;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090517

    const/4 v6, 0x0

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/android/settings/eK;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 90
    const/4 v0, 0x1

    return v0
.end method
