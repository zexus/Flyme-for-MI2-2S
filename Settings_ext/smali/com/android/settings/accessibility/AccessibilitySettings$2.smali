.class Lcom/android/settings_ext/accessibility/AccessibilitySettings$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilitySettings.java"


# instance fields
.field final synthetic AD:Lcom/android/settings_ext/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings$2;->AD:Lcom/android/settings_ext/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private hO()V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings$2;->AD:Lcom/android/settings_ext/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->d(Lcom/android/settings_ext/accessibility/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings$2;->AD:Lcom/android/settings_ext/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->c(Lcom/android/settings_ext/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings$2;->hO()V

    .line 148
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings$2;->hO()V

    .line 153
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings$2;->hO()V

    .line 158
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings$2;->hO()V

    .line 163
    return-void
.end method
