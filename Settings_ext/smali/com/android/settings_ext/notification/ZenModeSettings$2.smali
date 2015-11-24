.class Lcom/android/settings_ext/notification/ZenModeSettings$2;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/android/settings_ext/notification/ZenModeSettings$SettingPrefWithCallback$Callback;


# instance fields
.field final synthetic agC:Lcom/android/settings_ext/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/ZenModeSettings;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$2;->agC:Lcom/android/settings_ext/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cg(I)V
    .locals 1

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeSettings$2;->agC:Lcom/android/settings_ext/notification/ZenModeSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/notification/ZenModeSettings;->ce(I)V

    .line 165
    :cond_0
    return-void
.end method
