.class Lcom/android/settings_ext/gZ;
.super Lcom/android/internal/content/PackageMonitor;
.source "UsageAccessSettings.java"


# instance fields
.field final synthetic zb:Lcom/android/settings_ext/UsageAccessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/UsageAccessSettings;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/settings_ext/gZ;->zb:Lcom/android/settings_ext/UsageAccessSettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/settings_ext/gZ;->zb:Lcom/android/settings_ext/UsageAccessSettings;

    invoke-static {v0}, Lcom/android/settings_ext/UsageAccessSettings;->a(Lcom/android/settings_ext/UsageAccessSettings;)V

    .line 358
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/settings_ext/gZ;->zb:Lcom/android/settings_ext/UsageAccessSettings;

    invoke-static {v0}, Lcom/android/settings_ext/UsageAccessSettings;->a(Lcom/android/settings_ext/UsageAccessSettings;)V

    .line 363
    return-void
.end method
