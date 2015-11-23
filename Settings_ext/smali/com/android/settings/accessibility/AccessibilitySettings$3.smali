.class Lcom/android/settings/accessibility/AccessibilitySettings$3;
.super Lcom/android/settings/accessibility/SettingsContentObserver;
.source "AccessibilitySettings.java"


# instance fields
.field final synthetic AD:Lcom/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$3;->AD:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$3;->AD:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->a(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$3;->AD:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->b(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    .line 176
    return-void
.end method
