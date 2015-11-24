.class Lcom/android/settings_ext/en;
.super Ljava/lang/Object;
.source "MiuiSecurityCommonSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/settings_ext/en;->rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 636
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/en;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 640
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    sub-int/2addr v0, v1

    .line 642
    :goto_0
    return v0

    .line 641
    :catch_0
    move-exception v0

    .line 642
    const/4 v0, 0x0

    goto :goto_0
.end method
